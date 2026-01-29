# 📁 Adlik Project Structure

This document describes the **current and planned** folder structure
of the Adlik Education App repository.

The structure is designed to support long-term scalability
while clearly reflecting the current state of the project.

---

## 📂 Repository Root

Adlk-education-app/
│
├── android/              → Android platform configuration
├── ios/                  → iOS platform configuration
├── lib/                  → Flutter application source code
├── assets/               → Images, icons, fonts, and data files
├── docs/                 → Project documentation
├── test/                 → Test files (to be added later)
│
├── README.md
├── ROADMAP.md
├── STRUCTURE.md
├── PROJECT_OVERVIEW.md
├── PRE_RELEASE_CHECKLIST.md
├── CONTRIBUTING.md
├── GOVERNANCE.md
├── CODE_OF_CONDUCT.md
└── LICENSE

---

## 📁 `/lib` — Application Source

This folder contains the Flutter application code.

### Current Structure (Early Stage)

lib/
├── main.dart              → Application entry point
├── core/                  → Shared utilities, themes, constants (planned)
├── features/              → Feature modules (planned)
└── services/              → Services layer (planned)

> Note: Most subfolders are planned and will be implemented
> after the Android build configuration is fixed.

---

## 📁 `/assets`

Contains all non-code resources used by the application.

assets/
├── images/                → UI images and illustrations
├── icons/                 → App icons
├── fonts/                 → Custom fonts
└── data/                  → JSON or curriculum data (planned)

---

## 📁 `/docs`

Contains all project documentation and technical references.

Current files include:
- Architecture and planning documents
- Governance and contribution guidelines
- Roadmaps and release preparation

Additional technical documents will be added as development progresses.

---

## 📁 `/test`

Reserved for unit and integration tests.
Not used in the current phase.

---

## 🔧 Development Guidelines

- All new features should be implemented as **modular components**
- Business logic must remain separated from UI
- Offline-first architecture is mandatory
- Curriculum and content must be data-driven (JSON / external files)
- AI modules must remain optional and isolated

---

## 🎯 Notes for Contributors

- This is an early-stage project
- The immediate blocker is Android build configuration
- Feature development starts after build stability is achieved
- Follow the roadmap in `ROADMAP.md`

---

## 🟢 Status

This structure reflects the **current repository state**
and will evolve as the project progresses.
