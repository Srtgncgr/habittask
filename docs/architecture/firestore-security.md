# Firestore Security Strategy

## Access Matrix
| Koleksiyon | Read | Write |
| --- | --- | --- |
| users | Sadece sahibi (`auth.uid == userId`) | Sadece sahibi |
| habits/tasks/habit_completions/categories | Sadece sahibi | Sadece sahibi |
| user_badges | Sadece sahibi | Sadece sahibi |
| badges | Kamuya açık read (opsiyonel, şimdilik kapalı) | Sadece admin (kural dışı, Cloud Function) |
| analytics_events | Okuma yok, yalnızca sahibi yazabilir | Sadece create, update yok |
| subscriptions | Sadece sahibi | Sadece sahibi |

Not: `analytics_events` koleksiyonu sadece yazma izni ile limitlenmiştir. Public badge paylaşımı ihtiyacı doğarsa `badges` koleksiyonuna read izni verilmesi planlanır.

## Kural Kaynakları
- Kod: `firebase/firestore.rules`
- İndeksler: `firebase/firestore.indexes.json`
- Schema referansı: `docs/architecture/firestore-schema.md`

## Test Planı
1. **Emülatör Testleri**
   - `firebase emulators:start --only firestore` ile lokal ortamı aç.
   - `flutter test --dart-define=USE_FIRESTORE_EMULATOR=true` benzeri flag ile entegrasyon testi yazılacak.
   - Her koleksiyon için pozitif/negatif senaryolar: sahibi olmayan kullanıcı yazmaya çalıştığında `PERMISSION_DENIED` beklenir.
2. **CI Doğrulaması**
   - GitHub Actions matrix içinde Firebase Emulator setuplu job.
   - `npm install -g firebase-tools` ve `firebase emulators:exec "dart test integration_test/security_rules_test.dart"` komutu.
3. **Kurallar Deploy Süreci**
   - Lokal değişiklik sonrası `firebase emulators:exec "firebase deploy --only firestore:rules"` ile doğrulama.
   - Production deploy için korumalı branch ve manuel onay.

## Ek Notlar
- Kurallarda `ownerId()` helper’ı request.resource ve mevcut belgeyi kontrol eder; create sırasında `userId` alanı zorunlu.
- Batch/Transaction işlemlerinde tüm belgeler aynı kullanıcıya ait olmalı.
- `analytics_events` sadece create; güncelleme/silme için Cloud Function tetikleyicisi gerekebilir.
- Gelecekte takım özellikleri eklendiğinde kural seti jenerik hale getirilecek (shared collections).
