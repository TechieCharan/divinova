# divinova

This repository will host the Flutter app `divine_master_service` (Android, iOS, Web).

Because Flutter is not available in this environment (the local `flutter` command was not found), the repository does not contain a scaffolded Flutter project yet. Below are step-by-step instructions to scaffold the app locally and build for Android, iOS, and Web.

## Prerequisites

- Install Flutter SDK: https://flutter.dev/docs/get-started/install
- Add `flutter` to your PATH and verify with:

```bash
flutter --version
flutter doctor -v
```

- For Android builds:
	- Install Android Studio and Android SDK.
	- Set up an Android emulator or use a physical device.

- For iOS builds (macOS only):
	- Install Xcode from the App Store.
	- Run `sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer` and accept the license.

## Scaffold the Flutter app

Run these commands from the repository root to create the app named `divine_master_service`:

```bash
cd /Users/charanteja/Apps/divinova/divinova
flutter create --org com.yourcompany -t app --platforms=android,ios,web divine_master_service
```

This creates a new folder `divine_master_service` with Android, iOS and Web support.

## Build commands

- Android APK (debug):

```bash
cd divine_master_service
flutter build apk --debug
```

- Android APK (release):

```bash
flutter build apk --release
```

- Android app bundle (recommended for Play Store):

```bash
flutter build appbundle --release
```

- iOS (archive) — macOS required, open Xcode for signing:

```bash
cd divine_master_service
flutter build ios --release
# Then open ios/Runner.xcworkspace in Xcode and archive & export with proper signing
```

- Web (release):

```bash
flutter build web --release
```

## Notes on code signing and CI

- Android: configure `android/app/build.gradle` and `key.properties` for release signing. See https://flutter.dev/docs/deployment/android
- iOS: you must configure provisioning profiles and certificates in Xcode. See https://flutter.dev/docs/deployment/ios
- CI: Use GitHub Actions or other CI to install Flutter, run `flutter build` commands, and archive artifacts. Use secure secrets for signing keys.

## Next steps (optional)

- If you want, I can scaffold the project here (create the Flutter project files) in the repo. Note: builds still require Flutter installed locally or in CI.
