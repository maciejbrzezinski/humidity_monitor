// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class _FoundationColors {
  static const Color neutral0 = Color(0xFFFFFFFF);
  static const Color neutral50 = Color(0xFFF4F6F4);
  static const Color neutral100 = Color(0xfff8faf8);
  static const Color neutral120 = Color(0xFFE2E4E2);
  static const Color neutral150 = Color(0xFFDFE1DF);
  static const Color neutral180 = Color(0xFFD6D8D6);
  static const Color neutral200 = Color(0xFFB6B8B6);
  static const Color neutral300 = Color(0xFF8C8E8C);
  static const Color neutral400 = Color(0xFF676867);
  static const Color neutral500 = Color(0xFF545554);
  static const Color neutral600 = Color(0xFF3F403F);
  static const Color neutral700 = Color(0xFF2F302F);
  static const Color neutral800 = Color(0xFF262726);
  static const Color neutral900 = Color(0xFF1A1B1A);
}

class SystemColors {
  static Color background() {
    return _FoundationColors.neutral100;
  }

  static Color surface1() {
    return _FoundationColors.neutral50;
  }

  static Color surface2() {
    return _FoundationColors.neutral0;
  }

  static Color borderSubtle() {
    return _FoundationColors.neutral150;
  }

  static Color borderStrong() {
    return _FoundationColors.neutral180;
  }

  static Color borderOnSurface() {
    return _FoundationColors.neutral150;
  }

  static Color error() {
    return Color(0xFFB33A3A);
  }

  static Color success() {
    return Color(0xFF329330);
  }
}

class TextStyles {
  static TextStyle titleLarge({required Color color}) {
    return GoogleFonts.manrope(
      fontSize: 24,
      fontWeight: FontWeight.w800,
      color: color,
      letterSpacing: -.03,
      height: 1.4,
    );
  }

  static TextStyle titleMedium({required Color color}) {
    return GoogleFonts.manrope(fontSize: 22, fontWeight: FontWeight.w800, color: color, letterSpacing: .4, height: 1);
  }

  static TextStyle titleSmall({required Color color}) {
    return GoogleFonts.manrope(fontSize: 18, fontWeight: FontWeight.w800, color: color, letterSpacing: .2, height: 1);
  }

  static TextStyle labelLarge({required Color color}) {
    return GoogleFonts.manrope(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      color: color,
      letterSpacing: .42,
      height: 1.4,
    );
  }

  static TextStyle labelMedium({required Color color}) {
    return GoogleFonts.manrope(fontSize: 14, fontWeight: FontWeight.w700, color: color, letterSpacing: 0, height: 1);
  }

  static TextStyle labelSmall({required Color color}) {
    return GoogleFonts.manrope(fontSize: 12, fontWeight: FontWeight.w700, color: color, letterSpacing: 0, height: 1);
  }

  static TextStyle bodyLarge({required Color color}) {
    return GoogleFonts.manrope(fontSize: 16, fontWeight: FontWeight.w400, color: color, letterSpacing: 0, height: 1);
  }

  static TextStyle bodyMedium({required Color color, TextDecoration? decoration}) {
    return GoogleFonts.manrope(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: color,
      letterSpacing: .5,
      decoration: decoration,
      height: 1.43,
    );
  }

  static TextStyle bodySmall({required Color color, FontWeight? fontWeight}) {
    return GoogleFonts.manrope(
      fontSize: 12,
      fontWeight: fontWeight ?? FontWeight.w400,
      color: color,
      letterSpacing: 0,
      height: 1,
    );
  }

  static TextStyle caption({required Color color}) {
    return GoogleFonts.manrope(fontSize: 10, fontWeight: FontWeight.w600, color: color, letterSpacing: 0, height: 1);
  }
}

class TextColors {
  static Color primary() {
    return _FoundationColors.neutral900;
  }

  static Color secondary() {
    return _FoundationColors.neutral400;
  }

  static Color tertiary() {
    return _FoundationColors.neutral300;
  }

  static Color danger() {
    return Color(0xFF531F18);
  }

  static Color onPrimary() {
    return _FoundationColors.neutral100;
  }
}

class HumidityColors {
  static Color dry() {
    return Color(0xFFB33A3A);
  }

  static Color wet() {
    return Color(0xFF3A86FF);
  }

  static Color optimal() {
    return Color(0xFF329330);
  }
}

class ButtonSecondaryColors {
  static Color secondaryEnabledBackground() {
    return _FoundationColors.neutral120;
  }

  static Color secondaryEnabledBorder() {
    return _FoundationColors.neutral150;
  }

  static Color secondaryHoveredBackground() {
    return _FoundationColors.neutral150;
  }

  static Color secondaryHoveredBorder() {
    return _FoundationColors.neutral180;
  }

  static Color secondaryPressedBackground() {
    return _FoundationColors.neutral120;
  }

  static Color secondaryPressedBorder() {
    return _FoundationColors.neutral120;
  }

  static Color secondaryDisabledBackground() {
    return _FoundationColors.neutral50;
  }

  static Color secondaryDisabledBorder() {
    return _FoundationColors.neutral50;
  }
}
