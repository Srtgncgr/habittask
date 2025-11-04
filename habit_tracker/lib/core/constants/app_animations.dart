/// Animation durations and curves
class AppAnimations {
  AppAnimations._();

  // === DURATIONS ===
  static const Duration instant = Duration(milliseconds: 0);
  static const Duration fast = Duration(milliseconds: 150);
  static const Duration normal = Duration(milliseconds: 250);
  static const Duration medium = Duration(milliseconds: 350);
  static const Duration slow = Duration(milliseconds: 500);
  static const Duration verySlow = Duration(milliseconds: 800);

  // === SPECIFIC DURATIONS ===
  static const Duration splash = Duration(milliseconds: 300);
  static const Duration pageTransition = Duration(milliseconds: 300);
  static const Duration dialogFade = Duration(milliseconds: 200);
  static const Duration bottomSheetSlide = Duration(milliseconds: 250);
  static const Duration snackbar = Duration(milliseconds: 200);
  static const Duration ripple = Duration(milliseconds: 300);

  // === AUTO-DISMISS DURATIONS ===
  static const Duration snackbarDuration = Duration(seconds: 3);
  static const Duration toastDuration = Duration(seconds: 2);
  static const Duration errorDuration = Duration(seconds: 4);
}
