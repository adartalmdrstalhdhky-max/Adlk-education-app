# Pre-Release Checklist — Adlk Education App

This checklist is used to verify readiness before generating
a testable APK or sharing the app with early users.

---

## 1️⃣ Development Environment

- [ ] Flutter SDK installed and accessible from terminal
- [ ] Android Studio installed
- [ ] Android SDK & Platform Tools installed
- [ ] `flutter doctor` shows no critical Android errors
- [ ] `flutter pub get` runs successfully

---

## 2️⃣ Build Stability (Critical)

- [ ] Android build configuration is fixed
- [ ] Gradle sync completes without errors
- [ ] No missing SDK / JDK issues
- [ ] Project opens correctly in Android Studio

⚠️ This section **must be completed before any feature testing**.

---

## 3️⃣ Application Startup

- [ ] App launches without crashing
- [ ] Main screen loads successfully
- [ ] Navigation between basic screens works
- [ ] No blank or broken screens

---

## 4️⃣ Core Functionality (Current Scope)

- [ ] Static content loads correctly
- [ ] JSON / asset-based content is accessible (if present)
- [ ] Images and basic UI assets display correctly

---

## 5️⃣ Performance (Basic)

- [ ] App is responsive
- [ ] No severe lag or freezing
- [ ] No unexpected app termination

---

## 6️⃣ APK Generation

- [ ] `flutter build apk --debug` works
- [ ] Debug APK is generated successfully
- [ ] APK installs and runs on a real Android device

> Release APK will be generated **after feature completion**.

---

## 7️⃣ Documentation Check

- [ ] README.md updated
- [ ] ROADMAP.md reflects real project state
- [ ] CONTRIBUTING.md is present
- [ ] GOVERNANCE.md is present
- [ ] LICENSE is defined
- [ ] This checklist is up to date

---

## 8️⃣ Go / No-Go Decision

- [ ] Project is stable enough for internal testing
- [ ] Ready to be reviewed by contributors
- [ ] Not yet intended for public or commercial release

---

## Status

This checklist reflects the **current development phase**  
and will evolve as features are implemented.
