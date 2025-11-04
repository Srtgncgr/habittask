import 'package:flutter/material.dart';
import 'package:habit_tracker/core/theme/app_colors.dart';

/// Custom theme extension for gradients
/// Design system: docs/architecture/design-system.md
class AppGradients extends ThemeExtension<AppGradients> {
  final LinearGradient mintGradient;
  final LinearGradient blueGradient;
  final LinearGradient purpleGradient;
  final LinearGradient amberGradient;
  final LinearGradient cyanGradient;
  final LinearGradient backgroundGradient;
  final LinearGradient cardGradient;

  const AppGradients({
    required this.mintGradient,
    required this.blueGradient,
    required this.purpleGradient,
    required this.amberGradient,
    required this.cyanGradient,
    required this.backgroundGradient,
    required this.cardGradient,
  });

  // Light theme gradients
  factory AppGradients.light() {
    return const AppGradients(
      mintGradient: LinearGradient(
        colors: [AppColors.habitMintLight, AppColors.habitMint],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      blueGradient: LinearGradient(
        colors: [AppColors.taskBlueLight, AppColors.taskBlue],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      purpleGradient: LinearGradient(
        colors: [AppColors.completedPurpleLight, AppColors.completedPurple],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      amberGradient: LinearGradient(
        colors: [AppColors.streakAmberLight, AppColors.streakAmber],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      cyanGradient: LinearGradient(
        colors: [AppColors.accentCyanLight, AppColors.accentCyan],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      backgroundGradient: LinearGradient(
        colors: [AppColors.lightBackground, Color(0xFFFFFFFF)],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
      cardGradient: LinearGradient(
        colors: [Color(0xFFFFFFFF), Color(0xFFF9FAFB)],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
    );
  }

  // Dark theme gradients
  factory AppGradients.dark() {
    return const AppGradients(
      mintGradient: LinearGradient(
        colors: [AppColors.habitMint, AppColors.habitMintDark],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      blueGradient: LinearGradient(
        colors: [AppColors.taskBlue, AppColors.taskBlueDark],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      purpleGradient: LinearGradient(
        colors: [AppColors.completedPurple, AppColors.completedPurpleDark],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      amberGradient: LinearGradient(
        colors: [AppColors.streakAmber, AppColors.streakAmberDark],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      cyanGradient: LinearGradient(
        colors: [AppColors.accentCyan, AppColors.accentCyanDark],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      backgroundGradient: LinearGradient(
        colors: [AppColors.darkBackground, AppColors.darkFrame],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
      cardGradient: LinearGradient(
        colors: [AppColors.darkCard, AppColors.darkCardAlt],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
    );
  }

  @override
  ThemeExtension<AppGradients> copyWith({
    LinearGradient? mintGradient,
    LinearGradient? blueGradient,
    LinearGradient? purpleGradient,
    LinearGradient? amberGradient,
    LinearGradient? cyanGradient,
    LinearGradient? backgroundGradient,
    LinearGradient? cardGradient,
  }) {
    return AppGradients(
      mintGradient: mintGradient ?? this.mintGradient,
      blueGradient: blueGradient ?? this.blueGradient,
      purpleGradient: purpleGradient ?? this.purpleGradient,
      amberGradient: amberGradient ?? this.amberGradient,
      cyanGradient: cyanGradient ?? this.cyanGradient,
      backgroundGradient: backgroundGradient ?? this.backgroundGradient,
      cardGradient: cardGradient ?? this.cardGradient,
    );
  }

  @override
  ThemeExtension<AppGradients> lerp(
    ThemeExtension<AppGradients>? other,
    double t,
  ) {
    if (other is! AppGradients) return this;
    return AppGradients(
      mintGradient: LinearGradient.lerp(mintGradient, other.mintGradient, t)!,
      blueGradient: LinearGradient.lerp(blueGradient, other.blueGradient, t)!,
      purpleGradient: LinearGradient.lerp(purpleGradient, other.purpleGradient, t)!,
      amberGradient: LinearGradient.lerp(amberGradient, other.amberGradient, t)!,
      cyanGradient: LinearGradient.lerp(cyanGradient, other.cyanGradient, t)!,
      backgroundGradient: LinearGradient.lerp(backgroundGradient, other.backgroundGradient, t)!,
      cardGradient: LinearGradient.lerp(cardGradient, other.cardGradient, t)!,
    );
  }

  // Helper to get gradients from context
  static AppGradients of(BuildContext context) {
    return Theme.of(context).extension<AppGradients>()!;
  }
}
