# 📝 Notes App

A clean and organized **Flutter Notes Application** built with **Flutter**, **Hive**, and **Cubit**, featuring local data persistence, note customization, efficient state management, and a maintainable project structure.

---

## ✨ Features

### 📝 Notes Management

- Create New Notes
- Edit Existing Notes
- Delete Notes
- Edit Note Title and Content
- Customize Note Colors
- Change Note Color While Editing
- Store Notes Locally using **Hive**
- Access Saved Notes Offline

### ⚡ Additional Features

- State Management using **Cubit**
- Local Data Persistence using **Hive**
- Delete Confirmation Dialog to prevent accidental deletion
- SnackBar feedback after creating notes
- Reusable Custom Widgets
- Organized and modular project structure
- Separation of UI components and application logic

---

# 🛠 Technologies Used

- Flutter
- Dart
- Hive
- Cubit
- Material Design

---

# 📂 Project Structure

```text
lib
├── cubits
├── models
├── views
├── widgets
└── main.dart
```

The project is organized to improve readability, scalability, and maintainability by separating state management, data models, UI components, and reusable widgets.

---

# 💾 Local Storage

The application uses **Hive** for efficient local data persistence.

Hive allows users to:

- Store notes locally
- Retrieve saved notes after restarting the application
- Update existing notes
- Delete stored notes
- Use the application without requiring an internet connection

---

# 🔄 State Management

The application uses **Cubit** to manage application state and note operations.

Cubit handles state changes related to:

- Creating notes
- Updating notes
- Deleting notes
- Loading stored notes
- Updating the UI when note data changes

This approach helps separate application logic from UI components and keeps the code more organized and maintainable.

---

# 🎨 User Experience

The application includes several features designed to provide a simple and intuitive user experience:

- Custom colors for individual notes
- Ability to change note colors while editing
- Easy editing of note titles and content
- Confirmation dialog before deleting a note
- SnackBar feedback after successfully creating a note
- Clean and straightforward note management workflow

---


# 🚀 Getting Started

## Clone the repository

```bash
git clone https://github.com/Mostafa-Ezzat11/notes-app.git
```

## Navigate to the project

```bash
cd notes-app
```

## Install dependencies

```bash
flutter pub get
```

## Run the application

```bash
flutter run
```

---

# 📚 What I Learned

Throughout this project, I gained hands-on experience with:

- Local data persistence using Hive
- State Management with Cubit
- Performing CRUD operations on locally stored data
- Managing and updating application state
- Building reusable Flutter widgets
- Organizing Flutter projects using a modular folder structure
- Separating application logic from UI components
- Implementing confirmation dialogs
- Providing user feedback using SnackBars
- Improving the overall user experience in Flutter applications

---

# 👨‍💻 Author

**Mostafa Ezzat**

- GitHub: https://github.com/Mostafa-Ezzat11
- Email: mostafa.ezzatx@gmail.com

---

⭐ If you like this project, don't forget to leave a star!
