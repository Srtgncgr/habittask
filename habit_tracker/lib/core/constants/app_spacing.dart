/// Spacing system based on 8pt grid
/// Design system: docs/architecture/design-system.md
class AppSpacing {
  AppSpacing._();

  // === BASE 8PT GRID ===
  static const double xs = 4.0;
  static const double sm = 8.0;
  static const double md = 12.0;
  static const double lg = 16.0;
  static const double xl = 24.0;
  static const double xxl = 32.0;
  static const double xxxl = 40.0;

  // === DESIGN-SPECIFIC INSETS (from Mint Fresh design) ===
  static const double inset10 = 10.0;
  static const double inset14 = 14.0;
  static const double inset18 = 18.0;
  static const double inset36 = 36.0;

  // === COMMON PADDING ===
  static const double screenPadding = lg; // 16px
  static const double cardPadding = md; // 12px
  static const double listItemPadding = lg; // 16px
  static const double sectionSpacing = xl; // 24px

  // === GAPS (for Row/Column spacing) ===
  static const double gapXs = xs; // 4px
  static const double gapSm = sm; // 8px
  static const double gapMd = md; // 12px
  static const double gapLg = lg; // 16px
  static const double gapXl = xl; // 24px
}
