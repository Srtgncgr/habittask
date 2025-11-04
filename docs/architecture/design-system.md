# Design System Tokens

Kaynak: `örnek tasarım kodu.html` içerisindeki Mint Fresh konsept tasarımı.

## Renk Paleti
- **Habit Mint**: #10B981 (primary), #34D399 (light), #059669 (dark)
- **Task Blue**: #3B82F6, #60A5FA, #2563EB
- **Completed Purple**: #8B5CF6, #A78BFA, #7C3AED
- **Streak Amber**: #F59E0B, #FBBF24, #D97706
- **Accent Cyan**: #06B6D4, #22D3EE, #0891B2
- **Neutrals (Dark)**: background #16202A, frame #1A242E, card #1D2733, alt card #1A2430, text #F0F4F8, muted #B8C2CC
- **Neutrals (Light)**: background #F4F8FB, surface #FFFFFF, text #0F172A, muted #64748B
- **Priority Tags**: High #EF4444, Medium #F59E0B, Low #10B981

Bkz. `lib/core/theme/app_colors.dart`.

## Tipografi
Inter ailesi (Google Fonts). Ağırlıklar 300-700 aralığı. Başlık ve gövde stilleri `lib/core/theme/app_typography.dart` altında.

## Spacing & Radius
- Spacing: 4, 8, 12, 16, 24, 32, 40 (design insetler: 10, 14, 18, 36)
- Border Radius: 10px, 14px, 18px, 36px (kart ve cihaz çerçeveleri)

Bkz. `lib/core/constants/app_spacing.dart`, `lib/core/constants/app_radius.dart`.

## Shadow & Glow
- Kart gölgesi: `AppShadows.card`
- Yükseltilmiş glow: `AppShadows.elevated`
- Mint vurgu glow: `AppShadows.mintGlow`

Bkz. `lib/core/constants/app_shadows.dart`.

## Iconografi
Material Symbols Outlined tercih edildi; örnek ikonlar `lib/core/constants/app_icons.dart`.

## Tema Extensiyonları
Gradient tokenları `AppGradients` ThemeExtension ile expose edildi (`lib/core/theme/theme_extensions.dart`) ve `AppTheme` içinde light/dark varyantlarıyla register edildi.

## Uygulama Temaları
Mint Fresh tasarımını baz alan Material 3 uyumlu tema konfigürasyonları `lib/core/theme/app_theme.dart`'ta.
