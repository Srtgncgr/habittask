# Authentication Architecture

## Katmanlar
- **Infrastructure:** `FirebaseAuthRepository` (`lib/features/auth/infrastructure/firebase_auth_repository.dart`)
  - Firebase Email/Password, Google, Apple akışları; hata eşleme ve şifre sıfırlama.
  - `GoogleAuthProvider` tabanlı sign-in; mobilde `signInWithProvider`, webde `signInWithPopup`.
  - Biometrik ön kontrol için `LocalAuthentication` yardımcı metodu (`canCheckBiometrics`).
- **Domain:** `AuthRepository` arayüzü + `AuthUser` modeli (`lib/features/auth/domain/...`).
- **Application:** `AuthBloc` durum yönetimi (`lib/features/auth/application/auth_bloc.dart`).
  - `AuthStatusRequested`, `SignOutRequested` eventleri.
  - `AuthState` authenticated/unauthenticated/unknown durumları.
- **Presentation:** `AuthGate` widgetı (`lib/features/auth/presentation/widgets/auth_gate.dart`).
  - Uygulama içinde kimlik durumuna göre yönlendirme (şimdilik placeholder).

## Başlatma
- `bootstrap` fonksiyonu (`lib/config/bootstrap.dart`) Firebase, GetIt ve uygulamayı ayağa kaldırır.
- `locator` (`lib/core/di/locator.dart`) `AuthRepository` bağımlılığını register eder.
- `main.dart` root seviyede `RepositoryProvider` + `BlocProvider` kurup `AuthGate` ile dashboard/placeholder arasında seçim yapar.

## Sonraki Adımlar
- UI formları (email/password, Google, Apple, reset) ve hataların kullanıcı dostu mesajlarla gösterimi.
- Splash ekranı + Firebase persistence kontrolü.
- Firestore kullanıcı profili oluşturma ve varsayılan tercihlerin yazılması.
- Biometrik doğrulama akışını BLoC üzerinden entegre etme.
