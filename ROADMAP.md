# 📅 Adlk Core — Development Roadmap

This document defines the **step-by-step technical roadmap** for the Adlik Smart School System.
It reflects the **current real implementation status** of the GitHub repository.

---

## 🔹 Project Stages

| Stage | Description | Status |
|------|------------|--------|
| Stage 1 | Repository structure & core documentation (README, ROADMAP, STRUCTURE) | ✔ Done |
| Stage 2 | Flutter project skeleton (multi-platform folders, pubspec, base config) | 🟡 In Progress |
| Stage 3 | Android build & Gradle configuration (SDK, AGP, build fix) | 🔴 Blocked |
| Stage 4 | Offline-first local database (Hive / SQLite) | ⏳ Planned |
| Stage 5 | School system core models (Admin, Teacher, Student) | ⏳ Planned |
| Stage 6 | Curriculum engine (JSON / Excel-based import) | ⏳ Planned |
| Stage 7 | Exams & certificates generation | ⏳ Planned |
| Stage 8 | Analytics & reporting (offline-first) | ⏳ Planned |
| Stage 9 | MVP Android APK build | ⏳ Planned |
| Stage 10 | QA testing & bug fixing | ⏳ Planned |
| Stage 11 | Pilot deployment in selected schools | ⏳ Planned |
| Stage 12 | Public launch & partnerships | ⏳ Planned |

---

## 🔴 Current Blocker (Critical)

The project is currently **blocked at Stage 3** due to:

- Android / Gradle configuration issues
- SDK and Android Gradle Plugin mismatch
- Build failure when running `flutter run`

⚠️ No feature development should start **before resolving this stage**.

---

## 🛠 Immediate Priority

**Primary Task:**  
Fix Android build configuration so the project can successfully run on Android.

This includes:
- Aligning Gradle version
- Updating Android Gradle Plugin
- Verifying Android SDK setup
- Ensuring `flutter run` completes without errors

---

## 🧱 Development Principles

- Offline-first architecture (mandatory)
- Clean and modular codebase
- No hard dependency on cloud services
- AI modules must remain optional and isolated
- Curriculum must be data-driven (JSON / Excel), not hardcoded

---

## 🤝 Notes for Contributors

- This is a **real early-stage technical system**, not a demo.
- The roadmap is execution-focused, not conceptual.
- Contributors can clearly see:
  - what is done
  - what is blocked
  - what comes next

---

## 🟢 Status

This roadmap reflects the **current verified state** of the project
and will be updated after each completed stage.
