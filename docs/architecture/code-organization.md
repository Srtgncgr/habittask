# Code Organization

## Architecture Principles
- Clean Architecture with feature-first module layout.
- Presentation layer uses BLoC for state management and dependency injection via `get_it` + `injectable`.
- Domain layer exposes use cases and entities shared across features.
- Data layer interacts with Firebase services and local caches (Hive/shared_preferences).

## Directory Layout
```
lib/
  config/        # runtime configuration, environment setup
  core/          # cross-cutting concerns (theme, localization, networking, utils)
  features/      # self-contained modules (auth, onboarding, dashboard, habits, tasks, reports)
  shared/        # reusable widgets, components, and mixins
```

Each feature module follows `presentation/`, `application/`, `domain/`, `data/` subfolders with their own BLoCs, use cases, repositories, and models.

## Testing Strategy
- Widget and golden tests live under `test/` mirroring `lib/` structure.
- Integration tests for onboarding and dashboard flows under `integration_test/`.
- Firebase emulators will back data-layer testing.
