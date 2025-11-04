# HabitTask - Habit Building & Task Management Platform

A Flutter-based productivity platform that combines habit tracking and task management with strong localization support, starting with Turkish.

## 🎯 Project Overview

HabitTask is a hybrid productivity solution designed for global users, with initial focus on Turkish-speaking markets. It unifies:
- **Habit Tracking**: Build and maintain daily habits with streak counters and analytics
- **Task Management**: Organize daily/weekly tasks with priorities and reminders
- **Integrated Experience**: Unified dashboard combining both modules

## 🛠️ Tech Stack

- **Framework**: Flutter (iOS MVP → Android → Web)
- **Backend**: Firebase (Authentication, Firestore, Storage, Cloud Functions)
- **Architecture**: Clean Architecture with feature-first organization
- **State Management**: BLoC Pattern
- **Localization**: easy_localization (TR → EN → more)
- **Design**: Mint Fresh theme, Material Design 3

## 📂 Project Structure

```
lib/
├── config/         # App configuration, Firebase setup
├── core/           # Shared utilities, theme, constants
│   ├── constants/  # App-wide constants
│   ├── theme/      # Design system (colors, typography, themes)
│   ├── di/         # Dependency injection setup
│   └── utils/      # Helper functions
├── features/       # Feature modules (Clean Architecture)
│   ├── auth/       # Authentication
│   ├── onboarding/ # User onboarding flow
│   ├── dashboard/  # Unified home screen
│   ├── habits/     # Habit tracking module
│   ├── tasks/      # Task management module
│   ├── analytics/  # Progress analytics
│   └── settings/   # User settings
└── shared/         # Reusable widgets and components
```

## 🚀 Getting Started

### Prerequisites
- Flutter SDK (>=3.0.0)
- Firebase account
- iOS: Xcode, CocoaPods
- Android: Android Studio, SDK

### Setup

1. **Clone the repository**
   ```bash
   git clone https://github.com/Srtgncgr/habittask.git
   cd habittask/habit_tracker
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Firebase Configuration**
   - Follow the guide in `../docs/firebase-setup.md`
   - Add `GoogleService-Info.plist` (iOS) and `google-services.json` (Android)
   - Run `flutterfire configure`

4. **Environment Variables**
   ```bash
   cp .env.example .env
   # Edit .env with your configuration
   ```

5. **Run the app**
   ```bash
   flutter run
   ```

## 📋 Development Roadmap

See `../docs/development-roadmap.md` for detailed phase-by-phase plan:
- **Phase 0** (Weeks 1-2): Project setup, architecture, Firebase integration
- **Phase 1** (Weeks 3-10): MVP core features (iOS, Turkish)
- **Phase 2** (Weeks 11-20): Growth features, Android, Premium
- **Phase 3** (Weeks 21-40): Web, internationalization, advanced features

## 🎨 Design System

Built on **Mint Fresh** theme:
- Primary: Mint Green (#10B981)
- Secondary: Task Blue (#3B82F6)
- Accent: Streak Amber (#F59E0B)
- Typography: Inter font family
- Dark & Light mode support

See `../docs/architecture/design-system.md` for details.

## 📱 Features

### Phase 1 (MVP)
- ✅ User authentication (Email, Google, Apple)
- ✅ Turkish localization
- ✅ Habit tracking with streaks
- ✅ Basic task management
- ✅ Unified dashboard
- ✅ Offline-first sync
- ✅ Push notifications
- ✅ Basic analytics

### Phase 2 (Coming Soon)
- Advanced analytics
- Weekly planning
- Premium features
- Payment integration
- Android app

### Phase 3 (Future)
- Web app
- English + additional languages
- Team collaboration
- AI-powered suggestions

## 🧪 Testing

```bash
# Run unit tests
flutter test

# Run widget tests
flutter test test/widgets

# Run integration tests
flutter test integration_test
```

## 📄 Documentation

- [Product Requirements Document](../docs/prd.md)
- [Project Summary (Turkish)](../docs/projeOzeti.md)
- [Development Roadmap](../docs/development-roadmap.md)
- [Firebase Setup Guide](../docs/firebase-setup.md)
- [Architecture Documentation](../docs/architecture/)

## 🤝 Contributing

This is currently a private project in active development. Contributing guidelines will be added in Phase 2.

## 📝 License

Proprietary - All rights reserved

## 📧 Contact

For questions or collaboration inquiries, please open an issue on GitHub.

---

**Current Status**: Phase 0 - Foundation Setup
**Version**: 0.1.0+1
**Last Updated**: 2025-11-04
