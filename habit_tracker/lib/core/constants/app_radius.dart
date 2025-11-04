import 'package:flutter/material.dart';

/// Border radius standards from Mint Fresh design
/// Design system: docs/architecture/design-system.md
class AppRadius {
  AppRadius._();

  // === RADIUS VALUES ===
  static const double xs = 4.0;
  static const double sm = 8.0;
  static const double md = 10.0;
  static const double lg = 14.0;
  static const double xl = 18.0;
  static const double xxl = 36.0;
  static const double full = 999.0;

  // === BORDER RADIUS (for Mint Fresh design) ===
  static const double card = md; // 10px
  static const double button = lg; // 14px
  static const double input = lg; // 14px
  static const double dialog = xl; // 18px
  static const double deviceFrame = xxl; // 36px

  // === BORDER RADIUS OBJECTS ===
  static const BorderRadius cardRadius = BorderRadius.all(Radius.circular(card));
  static const BorderRadius buttonRadius = BorderRadius.all(Radius.circular(button));
  static const BorderRadius inputRadius = BorderRadius.all(Radius.circular(input));
  static const BorderRadius dialogRadius = BorderRadius.all(Radius.circular(dialog));
  static const BorderRadius deviceFrameRadius = BorderRadius.all(Radius.circular(deviceFrame));
  static const BorderRadius circular = BorderRadius.all(Radius.circular(full));

  // === CIRCULAR RADIUS (for avatars, badges, etc.) ===
  static BorderRadius circular(double radius) => BorderRadius.all(Radius.circular(radius));
}
