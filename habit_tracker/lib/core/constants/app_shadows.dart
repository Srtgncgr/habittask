import 'package:flutter/material.dart';

/// Shadow and elevation system
/// Design system: docs/architecture/design-system.md
class AppShadows {
  AppShadows._();

  // === CARD SHADOWS ===
  static const List<BoxShadow> card = [
    BoxShadow(
      color: Color(0x0F000000), // 6% black
      blurRadius: 8,
      offset: Offset(0, 2),
    ),
  ];

  static const List<BoxShadow> cardHover = [
    BoxShadow(
      color: Color(0x1A000000), // 10% black
      blurRadius: 12,
      offset: Offset(0, 4),
    ),
  ];

  // === ELEVATED SHADOWS ===
  static const List<BoxShadow> elevated = [
    BoxShadow(
      color: Color(0x14000000), // 8% black
      blurRadius: 16,
      offset: Offset(0, 4),
    ),
    BoxShadow(
      color: Color(0x0A000000), // 4% black
      blurRadius: 4,
      offset: Offset(0, 2),
    ),
  ];

  // === MINT GLOW (for highlighted items) ===
  static const List<BoxShadow> mintGlow = [
    BoxShadow(
      color: Color(0x3310B981), // 20% Mint
      blurRadius: 16,
      offset: Offset(0, 4),
    ),
  ];

  // === ACCENT GLOWS ===
  static const List<BoxShadow> blueGlow = [
    BoxShadow(
      color: Color(0x333B82F6), // 20% Blue
      blurRadius: 16,
      offset: Offset(0, 4),
    ),
  ];

  static const List<BoxShadow> amberGlow = [
    BoxShadow(
      color: Color(0x33F59E0B), // 20% Amber
      blurRadius: 16,
      offset: Offset(0, 4),
    ),
  ];

  // === BOTTOM SHEET SHADOW ===
  static const List<BoxShadow> bottomSheet = [
    BoxShadow(
      color: Color(0x1F000000), // 12% black
      blurRadius: 24,
      offset: Offset(0, -4),
    ),
  ];

  // === APP BAR SHADOW ===
  static const List<BoxShadow> appBar = [
    BoxShadow(
      color: Color(0x0A000000), // 4% black
      blurRadius: 4,
      offset: Offset(0, 2),
    ),
  ];

  // === NO SHADOW ===
  static const List<BoxShadow> none = [];
}
