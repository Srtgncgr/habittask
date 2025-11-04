# Firebase Setup Guide

Bu proje için Firebase kurulumu geliştirici (sen) ile birlikte yapılacak. Aşağıdaki adımları sırasıyla takip et.

## 1. Gerekli CLİ araçları
- `firebase` CLI yüklü ve çalışıyor (bende doğrulandı: `firebase --version` = 14.15.2).
- `flutterfire` CLI global olarak aktif (`dart pub global activate flutterfire_cli`). Komut çalıştırırken PATH sorununda `C:\Users\<kullanıcı>\AppData\Local\Pub\Cache\bin\flutterfire.bat` yolunu kullanabilirsin.

## 2. Firebase Console üzerinde yapılacaklar
1. [Firebase Console](https://console.firebase.google.com/) üzerinde yeni bir proje oluştur.
   - Önerilen isim: `habitask-dev` (dilersen farklı isim kullanabilirsin, proje kimliği lazım olacak).
   - Google Analytics opsiyonel; MVP için kapalı bırakabilirsin.
2. Proje açıldıktan sonra sol menüden **Authentication** bölümüne girip Email/Password, Google ve Apple sağlayıcılarını etkinleştir.
   - Apple için Bundle ID gerekeceği için şimdilik hazırlık aşamasında etkin bırakıp ayarları daha sonra tamamlayabilirsin.
3. **Firestore Database** sekmesine gidip `Start in production mode` seçeneğiyle Avrupa bölgesi (önerilen: `europe-west1`) için bir Firestore instance oluştur.
4. **Storage** sekmesinden aynı bölgede (örn. `europe-west1`) bir Storage bucket oluştur.
5. **Project Settings › General** bölümünden uygulama ekle:
   - iOS için Bundle ID: `com.habitask.app` (daha sonra değiştirebilirsin). GoogleService-Info.plist dosyasını indir.
   - Android için applicationId: `com.habitask.app`. google-services.json dosyasını indir.
   - (Web ve diğer platformlar daha sonra eklenecek.)

## 3. Dosyaları projeye yerleştir
- `GoogleService-Info.plist` ➜ `habit_tracker/ios/Runner/GoogleService-Info.plist`
- `google-services.json` ➜ `habit_tracker/android/app/google-services.json`
- Pozisyonlarını kaydettikten sonra Git’e dahil edilmesini istemiyorsan gerekli `.gitignore` girdilerini kontrol et (`android/.gitignore`, `ios/.gitignore`).

## 4. Flutter projesini Firebase’e bağla
Proje kökünde (`habit_tracker/`) aşağıdaki komutu çalıştır:

```bash
%USERPROFILE%\AppData\Local\Pub\Cache\bin\flutterfire.bat configure --project=habitask-dev --out=lib/config/firebase_options.dart --platforms=android,ios
```

- `--project` parametresini kendi Firebase proje kimliğinle güncelle.
- Komut, `lib/config/firebase_options.dart` dosyasını otomatik oluşturur (mevcut stub dosyasının üzerine yazacak).

## 5. Güvenlik kuralları
- Firestore kuralları: `firebase/firestore.rules`
- Storage kuralları: `firebase/storage.rules`

Kuralları Firebase’e deploy etmek için (konfigürasyondan sonra):
```bash
firebase deploy --only firestore:rules,storage
```
(`firebase-tools` login state’ine göre `firebase login` gerekebilir.)

## 6. Flutter tarafını test et
- `flutter pub get`
- `flutterfire configure` sonrası proje açılırken `Firebase.initializeApp` hatası almamak için `FirebaseInitializer.initialize()` çağrısını `main()` içinde entegre edeceğiz (ileri adımda yapılacak).

## 7. Özet
- [ ] Firebase projesi oluşturuldu.
- [ ] iOS ve Android app eklendi, konfigürasyon dosyaları projeye kopyalandı.
- [ ] `flutterfire configure` çalıştırıldı ve `firebase_options.dart` üretildi.
- [ ] Authentication sağlayıcıları açıldı.
- [ ] Firestore / Storage region `europe-west1` seçildi.
- [ ] Kurallar deploy edildi.

Bu listeden gerçekleştirdiğin adımları bana bildirebilirsin; kalan işler için komutları birlikte çalıştırırız.
