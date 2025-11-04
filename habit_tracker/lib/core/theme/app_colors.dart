import 'package:flutter/material.dart';

/// Mint Fresh color palette for HabitTask
/// Based on design system documented in docs/architecture/design-system.md
class AppColors {
  AppColors._();

  // === HABIT MINT (Primary) ===
  static const Color habitMint = Color(0xFF10B981);
  static const Color habitMintLight = Color(0xFF34D399);
  static const Color habitMintDark = Color(0xFF059669);

  // === TASK BLUE (Secondary) ===
  static const Color taskBlue = Color(0xFF3B82F6);
  static const Color taskBlueLight = Color(0xFF60A5FA);
  static const Color taskBlueDark = Color(0xFF2563EB);

  // === COMPLETED PURPLE ===
  static const Color completedPurple = Color(0xFF8B5CF6);
  static const Color completedPurpleLight = Color(0xFFA78BFA);
  static const Color completedPurpleDark = Color(0xFF7C3AED);

  // === STREAK AMBER ===
  static const Color streakAmber = Color(0xFFF59E0B);
  static const Color streakAmberLight = Color(0xFFFBBF24);
  static const Color streakAmberDark = Color(0xFFD97706);

  // === ACCENT CYAN ===
  static const Color accentCyan = Color(0xFF06B6D4);
  static const Color accentCyanLight = Color(0xFF22D3EE);
  static const Color accentCyanDark = Color(0xFF0891B2);

  // === PRIORITY TAGS ===
  static const Color priorityHigh = Color(0xFFEF4444);
  static const Color priorityMedium = Color(0xFFF59E0B);
  static const Color priorityLow = Color(0xFF10B981);

  // === NEUTRALS (DARK THEME) ===
  static const Color darkBackground = Color(0xFF16202A);
  static const Color darkFrame = Color(0xFF1A242E);
  static const Color darkCard = Color(0xFF1D2733);
  static const Color darkCardAlt = Color(0xFF1A2430);
  static const Color darkText = Color(0xFFF0F4F8);
  static const Color darkTextMuted = Color(0xFFB8C2CC);

  // === NEUTRALS (LIGHT THEME) ===
  static const Color lightBackground = Color(0xFFF4F8FB);
  static const Color lightSurface = Color(0xFFFFFFFF);
  static const Color lightText = Color(0xFF0F172A);
  static const Color lightTextMuted = Color(0xFF64748B);

  // === SEMANTIC COLORS ===
  static const Color success = habitMint;
  static const Color error = priorityHigh;
  static const Color warning = streakAmber;
  static const Color info = taskBlue;

  // === OVERLAY & DIVIDERS ===
  static const Color overlayLight = Color(0x1F000000); // 12% black
  static const Color overlayDark = Color(0x33FFFFFF); // 20% white
  static const Color dividerLight = Color(0xFFE2E8F0);
  static const Color dividerDark = Color(0xFF334155);
}
