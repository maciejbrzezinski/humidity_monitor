#include <BLEDevice.h>
#include <BLEServer.h>
#include <BLEUtils.h>
#include <BLE2902.h>
#include "DHT.h"

// ===== PINY =====
#define LIGHT_PIN 34
#define SOIL_PIN  32
#define DHT_PIN   14

// ===== DHT =====
#define DHTTYPE DHT11
DHT dht(DHT_PIN, DHTTYPE);

// ===== BLE UUID =====
#define SERVICE_UUID        "4fafc201-1fb5-459e-8fcc-c5c9c331914b"
#define CHARACTERISTIC_UUID "beb5483e-36e1-4688-b7f5-ea07361b26a8"

BLECharacteristic *pCharacteristic = nullptr;
BLEAdvertising *pAdvertising = nullptr;

static bool deviceConnected = false;

// Callbacki połączenia/rozłączenia
class MyServerCallbacks : public BLEServerCallbacks {
    void onConnect(BLEServer *pServer) override {
        deviceConnected = true;
        Serial.println("✅ BLE: Połączono");
    }

    void onDisconnect(BLEServer *pServer) override {
        deviceConnected = false;
        Serial.println("❌ BLE: Rozłączono");

        // Mała przerwa pomaga uniknąć bugów stosu BLE
        delay(200);

        // Najważniejsze: wznowienie reklamowania po rozłączeniu
        BLEDevice::startAdvertising();
        Serial.println("📢 BLE: Advertising wznowiony");
    }
};

void setup() {
    Serial.begin(115200);

    // === USTAWIENIA ADC ===
    analogReadResolution(12);               // 0–4095
    analogSetPinAttenuation(LIGHT_PIN, ADC_11db);
    analogSetPinAttenuation(SOIL_PIN, ADC_11db);

    dht.begin();

    // --- BLE ---
    BLEDevice::init("ESP32-Plant-Sensor");

    BLEServer *pServer = BLEDevice::createServer();
    pServer->setCallbacks(new MyServerCallbacks()); // <<< ważne

    BLEService *pService = pServer->createService(SERVICE_UUID);

    pCharacteristic = pService->createCharacteristic(
            CHARACTERISTIC_UUID,
            BLECharacteristic::PROPERTY_READ |
            BLECharacteristic::PROPERTY_NOTIFY
    );

    // Descriptor wymagany przez większość klientów (Flutter Blue też lubi)
    BLE2902 *desc = new BLE2902();
    desc->setNotifications(true);
    pCharacteristic->addDescriptor(desc);

    pService->start();

    pAdvertising = BLEDevice::getAdvertising();
    pAdvertising->addServiceUUID(SERVICE_UUID);
    pAdvertising->setScanResponse(true);
    pAdvertising->setMinPreferred(0x06);  // często pomaga na iOS
    pAdvertising->setMinPreferred(0x12);

    BLEDevice::startAdvertising(); // zamiast pAdvertising->start()
    Serial.println("📢 BLE uruchomione, czekam na połączenie...");
}

void loop() {
    // ===== ODCZYTY =====
    int lightRaw = analogRead(LIGHT_PIN); // 0..4095
    float lightPercent = 100.0f - (lightRaw / 4095.0f) * 100.0f;
    lightPercent = constrain(lightPercent, 0.0f, 100.0f);

    int soilRaw = analogRead(SOIL_PIN);
    float soilHumidity = 100.0f - ((soilRaw / 4095.0f) * 100.0f);
    soilHumidity = constrain(soilHumidity, 0.0f, 100.0f);

    float humidityAir = dht.readHumidity();
    float temperature = dht.readTemperature();

    if (isnan(humidityAir) || isnan(temperature)) {
        Serial.println("Błąd odczytu DHT11");
        delay(2000);
        return;
    }
    unsigned long timestamp = millis(); // ms od uruchomienia ESP32

    // ===== JSON =====
    String json = "{";
    json += "\"lightLevel\":" + String(lightPercent, 1) + ",";
    json += "\"soilHumidity\":" + String(soilHumidity, 1) + ",";
    json += "\"temperature\":" + String(temperature, 1) + ",";
    json += "\"airHumidity\":" + String(humidityAir, 1);
    json += "}";

    // ===== BLE SEND =====
    if (deviceConnected) {
        pCharacteristic->setValue(json.c_str());
        pCharacteristic->notify();
    }

    Serial.println(json);
    delay(2000);
}
