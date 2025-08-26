# Note App
[![Ask DeepWiki](https://devin.ai/assets/askdeepwiki.png)](https://deepwiki.com/Eng-Nader/noteApp)

A simple yet powerful note-taking application built with Flutter. This app provides a clean, user-friendly interface for creating, editing, and managing your notes efficiently. It uses Hive for fast, local data persistence and the BLoC pattern for robust state management.

## ✨ Features

- **Create Notes**: Easily add new notes with a title, content, and a custom color.
- **View All Notes**: A clean, scrollable list displays all your saved notes.
- **Edit Notes**: Tap on any note to open the editor and update its title, content, or color.
- **Delete Notes**: Swipe or tap the delete icon to remove notes you no longer need.
- **Local Persistence**: All notes are saved locally on your device using Hive, ensuring your data is always available, even offline.
- **Color-Coded Notes**: Assign a unique color to each note for better organization and visual appeal.
- **Responsive UI**: The interface is designed to work smoothly across different screen sizes.

## 🏛️ Architecture

This project follows a clean architecture pattern, separating concerns for better maintainability and scalability.

- **State Management**: **Flutter BLoC** is used to manage the application's state.
  - `NotesCubit`: Manages the state of the overall notes list (fetching, displaying).
  - `AddNoteCubit`: Handles the state for the note creation process, including loading and success/failure states.
- **Data Persistence**: **Hive** is used as the local database. It's a lightweight and fast key-value database written in pure Dart.
  - `NoteModel`: A Hive-compatible data model (`HiveObject`) representing a single note.
- **UI**: The user interface is built with custom Flutter widgets, organized for reusability.

## 📁 Project Structure

The core logic of the application is organized within the `lib` directory as follows:

```
lib/
├── main.dart             # App entry point, Hive setup, and MaterialApp configuration.
├── simple_bloc_observer.dart # BLoC observer for debugging state changes.
├── colors/               # App-wide color constants.
│   └── app_color.dart
├── cubits/               # BLoC cubits for state management.
│   ├── add_note_cubit.dart
│   ├── add_note_state.dart
│   ├── notes_cubit.dart
│   └── notes_state.dart
├── models/               # Data models for the application.
│   ├── note_model.dart     # The main data model for a note.
│   └── note_model.g.dart   # Hive-generated TypeAdapter.
├── views/                # Application screens or pages.
│   ├── edit_page.dart
│   └── home_page.dart
└── widget/               # Reusable UI components.
    ├── add_note_form.dart
    ├── custom_appbar.dart
    ├── custom_listview.dart
    ├── custrom_card.dart
    └── ...
```

## 🚀 Getting Started

To get a local copy up and running, follow these simple steps.

### Prerequisites

- You need to have the Flutter SDK installed. For instructions, see the [official Flutter documentation](https://flutter.dev/docs/get-started/install).

### Installation

1.  **Clone the repository:**
    ```sh
    git clone https://github.com/Eng-Nader/noteApp.git
    ```
2.  **Navigate to the project directory:**
    ```sh
    cd noteApp
    ```
3.  **Install dependencies:**
    ```sh
    flutter pub get
    ```
4.  **Run the code generator:**
    This step is required to generate the Hive TypeAdapter files.
    ```sh
    flutter pub run build_runner build
    ```
5.  **Run the app:**
    ```sh
    flutter run
    ```

## 🛠 Key Dependencies

- **`flutter_bloc`**: For state management using the BLoC pattern.
- **`hive` & `hive_flutter`**: A fast, lightweight key-value database for local storage.
- **`hive_generator` & `build_runner`**: For generating Hive TypeAdapter code.
- **`font_awesome_flutter`**: For a rich set of icons.
- **`google_fonts`**: For custom fonts (specifically Poppins in this project).
- **`intl`**: For date formatting.
- **`awesome_snackbar_content`**: For displaying beautiful and informative snackbars.
