# 📝 Notes App

A clean and simple **Flutter Notes Application** built with **Dart**, **Hive**, and **Cubit**.

The application provides an offline note-taking experience with local data persistence, customizable note colors, and a structured and maintainable codebase.

## ✨ Features

- 📝 Create new notes
- ✏️ Edit existing notes
- 🗑️ Delete notes
- 🎨 Choose a custom color for each note
- 🔄 Change the note color while editing
- 📌 Edit the main title and subtitle/content of a note
- 💾 Store notes locally using **Hive**
- 📱 Offline data persistence
- ⚡ State management using **Cubit**
- ⚠️ Delete confirmation dialog to prevent accidental deletion
- 🔔 SnackBar feedback after creating notes and performing user actions
- 🧩 Reusable Flutter widgets
- 📂 Organized and modular project structure

## 🛠️ Technologies & Tools

- **Flutter**
- **Dart**
- **Hive** – Local data storage
- **Cubit** – State management
- **Material Design**
- **Git & GitHub**

## 🏗️ Project Structure

The project is organized into separate files and components to keep responsibilities clear and make the code easier to maintain and extend.

```text
lib/
│
├── cubits/
│   └── ...
│
├── models/
│   └── ...
│
├── screens/
│   └── ...
│
├── widgets/
│   └── ...
│
├── helpers/
│   └── ...
│
├── constants/
│   └── ...
│
└── main.dart
