import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:habit_tracker/core/theme/app_colors.dart';
import 'package:habit_tracker/core/theme/app_typography.dart';
import 'package:habit_tracker/core/theme/theme_extensions.dart';
import 'package:habit_tracker/core/constants/app_radius.dart';

/// Application theme configuration
/// Mint Fresh design system with Material 3
class AppTheme {
  AppTheme._();

  // === LIGHT THEME ===
  static ThemeData light() {
    const colorScheme = ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.habitMint,
      onPrimary: Colors.white,
      primaryContainer: AppColors.habitMintLight,
      onPrimaryContainer: AppColors.habitMintDark,
      secondary: AppColors.taskBlue,
      onSecondary: Colors.white,
      secondaryContainer: AppColors.taskBlueLight,
      onSecondaryContainer: AppColors.taskBlueDark,
      tertiary: AppColors.completedPurple,
      onTertiary: Colors.white,
      tertiaryContainer: AppColors.completedPurpleLight,
      onTertiaryContainer: AppColors.completedPurpleDark,
      error: AppColors.error,
      onError: Colors.white,
      errorContainer: Color(0xFFFEE2E2),
      onErrorContainer: Color(0xFF7F1D1D),
      surface: AppColors.lightSurface,
      onSurface: AppColors.lightText,
      surfaceContainerHighest: AppColors.lightBackground,
      onSurfaceVariant: AppColors.lightTextMuted,
      outline: AppColors.dividerLight,
      outlineVariant: Color(0xFFE2E8F0),
      shadow: Color(0x1F000000),
      scrim: Color(0x52000000),
      inverseSurface: AppColors.darkCard,
      onInverseSurface: AppColors.darkText,
      inversePrimary: AppColors.habitMintLight,
    );

    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: AppColors.lightBackground,

      // Typography
      textTheme: TextTheme(
        displayLarge: AppTypography.displayLarge.copyWith(color: colorScheme.onSurface),
        displayMedium: AppTypography.displayMedium.copyWith(color: colorScheme.onSurface),
        displaySmall: AppTypography.displaySmall.copyWith(color: colorScheme.onSurface),
        headlineLarge: AppTypography.headlineLarge.copyWith(color: colorScheme.onSurface),
        headlineMedium: AppTypography.headlineMedium.copyWith(color: colorScheme.onSurface),
        headlineSmall: AppTypography.headlineSmall.copyWith(color: colorScheme.onSurface),
        titleLarge: AppTypography.titleLarge.copyWith(color: colorScheme.onSurface),
        titleMedium: AppTypography.titleMedium.copyWith(color: colorScheme.onSurface),
        titleSmall: AppTypography.titleSmall.copyWith(color: colorScheme.onSurface),
        bodyLarge: AppTypography.bodyLarge.copyWith(color: colorScheme.onSurface),
        bodyMedium: AppTypography.bodyMedium.copyWith(color: colorScheme.onSurface),
        bodySmall: AppTypography.bodySmall.copyWith(color: colorScheme.onSurface),
        labelLarge: AppTypography.labelLarge.copyWith(color: colorScheme.onSurface),
        labelMedium: AppTypography.labelMedium.copyWith(color: colorScheme.onSurface),
        labelSmall: AppTypography.labelSmall.copyWith(color: colorScheme.onSurface),
      ),

      // AppBar
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.lightSurface,
        foregroundColor: colorScheme.onSurface,
        elevation: 0,
        centerTitle: false,
        titleTextStyle: AppTypography.titleLarge.copyWith(color: colorScheme.onSurface),
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),

      // Card
      cardTheme: CardTheme(
        color: AppColors.lightSurface,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: AppRadius.cardRadius,
        ),
      ),

      // Floating Action Button
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: colorScheme.primary,
        foregroundColor: colorScheme.onPrimary,
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppRadius.button),
        ),
      ),

      // Elevated Button
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          foregroundColor: colorScheme.onPrimary,
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: AppRadius.buttonRadius,
          ),
          textStyle: AppTypography.button,
        ),
      ),

      // Outlined Button
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: colorScheme.primary,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          side: BorderSide(color: colorScheme.outline),
          shape: RoundedRectangleBorder(
            borderRadius: AppRadius.buttonRadius,
          ),
          textStyle: AppTypography.button,
        ),
      ),

      // Text Button
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: colorScheme.primary,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          textStyle: AppTypography.button,
        ),
      ),

      // Input Decoration
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.lightSurface,
        border: OutlineInputBorder(
          borderRadius: AppRadius.inputRadius,
          borderSide: BorderSide(color: colorScheme.outline),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: AppRadius.inputRadius,
          borderSide: BorderSide(color: colorScheme.outline),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: AppRadius.inputRadius,
          borderSide: BorderSide(color: colorScheme.primary, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: AppRadius.inputRadius,
          borderSide: BorderSide(color: colorScheme.error),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        hintStyle: AppTypography.bodyMedium.copyWith(color: colorScheme.onSurfaceVariant),
      ),

      // Divider
      dividerTheme: DividerThemeData(
        color: AppColors.dividerLight,
        thickness: 1,
        space: 1,
      ),

      // Bottom Sheet
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: AppColors.lightSurface,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(AppRadius.dialog),
          ),
        ),
      ),

      // Dialog
      dialogTheme: DialogTheme(
        backgroundColor: AppColors.lightSurface,
        shape: RoundedRectangleBorder(
          borderRadius: AppRadius.dialogRadius,
        ),
      ),

      // Snackbar
      snackBarTheme: SnackBarThemeData(
        backgroundColor: AppColors.darkCard,
        contentTextStyle: AppTypography.bodyMedium.copyWith(color: AppColors.darkText),
        shape: RoundedRectangleBorder(
          borderRadius: AppRadius.cardRadius,
        ),
        behavior: SnackBarBehavior.floating,
      ),

      // Custom theme extensions
      extensions: const [
        AppGradients.light(),
      ],
    );
  }

  // === DARK THEME ===
  static ThemeData dark() {
    const colorScheme = ColorScheme(
      brightness: Brightness.dark,
      primary: AppColors.habitMint,
      onPrimary: AppColors.darkBackground,
      primaryContainer: AppColors.habitMintDark,
      onPrimaryContainer: AppColors.habitMintLight,
      secondary: AppColors.taskBlue,
      onSecondary: AppColors.darkBackground,
      secondaryContainer: AppColors.taskBlueDark,
      onSecondaryContainer: AppColors.taskBlueLight,
      tertiary: AppColors.completedPurple,
      onTertiary: AppColors.darkBackground,
      tertiaryContainer: AppColors.completedPurpleDark,
      onTertiaryContainer: AppColors.completedPurpleLight,
      error: AppColors.error,
      onError: AppColors.darkBackground,
      errorContainer: Color(0xFF7F1D1D),
      onErrorContainer: Color(0xFFFEE2E2),
      surface: AppColors.darkCard,
      onSurface: AppColors.darkText,
      surfaceContainerHighest: AppColors.darkFrame,
      onSurfaceVariant: AppColors.darkTextMuted,
      outline: AppColors.dividerDark,
      outlineVariant: Color(0xFF334155),
      shadow: Color(0x3F000000),
      scrim: Color(0x80000000),
      inverseSurface: AppColors.lightSurface,
      onInverseSurface: AppColors.lightText,
      inversePrimary: AppColors.habitMintDark,
    );

    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: AppColors.darkBackground,

      // Typography
      textTheme: TextTheme(
        displayLarge: AppTypography.displayLarge.copyWith(color: colorScheme.onSurface),
        displayMedium: AppTypography.displayMedium.copyWith(color: colorScheme.onSurface),
        displaySmall: AppTypography.displaySmall.copyWith(color: colorScheme.onSurface),
        headlineLarge: AppTypography.headlineLarge.copyWith(color: colorScheme.onSurface),
        headlineMedium: AppTypography.headlineMedium.copyWith(color: colorScheme.onSurface),
        headlineSmall: AppTypography.headlineSmall.copyWith(color: colorScheme.onSurface),
        titleLarge: AppTypography.titleLarge.copyWith(color: colorScheme.onSurface),
        titleMedium: AppTypography.titleMedium.copyWith(color: colorScheme.onSurface),
        titleSmall: AppTypography.titleSmall.copyWith(color: colorScheme.onSurface),
        bodyLarge: AppTypography.bodyLarge.copyWith(color: colorScheme.onSurface),
        bodyMedium: AppTypography.bodyMedium.copyWith(color: colorScheme.onSurface),
        bodySmall: AppTypography.bodySmall.copyWith(color: colorScheme.onSurface),
        labelLarge: AppTypography.labelLarge.copyWith(color: colorScheme.onSurface),
        labelMedium: AppTypography.labelMedium.copyWith(color: colorScheme.onSurface),
        labelSmall: AppTypography.labelSmall.copyWith(color: colorScheme.onSurface),
      ),

      // AppBar
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.darkCard,
        foregroundColor: colorScheme.onSurface,
        elevation: 0,
        centerTitle: false,
        titleTextStyle: AppTypography.titleLarge.copyWith(color: colorScheme.onSurface),
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),

      // Card
      cardTheme: CardTheme(
        color: AppColors.darkCard,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: AppRadius.cardRadius,
        ),
      ),

      // Floating Action Button
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: colorScheme.primary,
        foregroundColor: colorScheme.onPrimary,
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppRadius.button),
        ),
      ),

      // Elevated Button
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          foregroundColor: colorScheme.onPrimary,
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: AppRadius.buttonRadius,
          ),
          textStyle: AppTypography.button,
        ),
      ),

      // Outlined Button
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: colorScheme.primary,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          side: BorderSide(color: colorScheme.outline),
          shape: RoundedRectangleBorder(
            borderRadius: AppRadius.buttonRadius,
          ),
          textStyle: AppTypography.button,
        ),
      ),

      // Text Button
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: colorScheme.primary,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          textStyle: AppTypography.button,
        ),
      ),

      // Input Decoration
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.darkCardAlt,
        border: OutlineInputBorder(
          borderRadius: AppRadius.inputRadius,
          borderSide: BorderSide(color: colorScheme.outline),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: AppRadius.inputRadius,
          borderSide: BorderSide(color: colorScheme.outline),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: AppRadius.inputRadius,
          borderSide: BorderSide(color: colorScheme.primary, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: AppRadius.inputRadius,
          borderSide: BorderSide(color: colorScheme.error),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        hintStyle: AppTypography.bodyMedium.copyWith(color: colorScheme.onSurfaceVariant),
      ),

      // Divider
      dividerTheme: DividerThemeData(
        color: AppColors.dividerDark,
        thickness: 1,
        space: 1,
      ),

      // Bottom Sheet
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: AppColors.darkCard,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(AppRadius.dialog),
          ),
        ),
      ),

      // Dialog
      dialogTheme: DialogTheme(
        backgroundColor: AppColors.darkCard,
        shape: RoundedRectangleBorder(
          borderRadius: AppRadius.dialogRadius,
        ),
      ),

      // Snackbar
      snackBarTheme: SnackBarThemeData(
        backgroundColor: AppColors.darkCardAlt,
        contentTextStyle: AppTypography.bodyMedium.copyWith(color: AppColors.darkText),
        shape: RoundedRectangleBorder(
          borderRadius: AppRadius.cardRadius,
        ),
        behavior: SnackBarBehavior.floating,
      ),

      // Custom theme extensions
      extensions: const [
        AppGradients.dark(),
      ],
    );
  }
}
