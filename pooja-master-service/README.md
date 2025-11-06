pooja-master-service

Minimal Flutter app scaffold for Pooja Master Service.

Quick start (on a machine with Flutter installed):

```bash
cd pooja-master-service
flutter pub get
# To generate platform folders (optional, preferred to run on creator machine):
flutter create .
# Build for Android:
flutter build apk --release
# Build for web:
flutter build web --release
# Build for iOS (macOS only):
flutter build ios --release
```

Notes:
- This folder contains the Dart source and pubspec. To get the full Android/iOS/Web platform folders, run `flutter create .` locally where Flutter is installed.
- Signing for release builds requires setting up keys / provisioning profiles as described in the Flutter docs.
