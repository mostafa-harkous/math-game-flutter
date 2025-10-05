# Math Game Flutter

## About This Project

Math Game is a mobile application built with Flutter, designed to challenge and "Train Your Brain" with arithmetic quizzes. The app provides a timed, engaging environment for users to test their math skills in categories like addition and subtraction. It features a clean, animated UI and leverages the Riverpod package for efficient state management.

## Features

- **Multiple Quiz Categories**: Engage in quizzes for different arithmetic operations, including Addition and Subtraction.
- **Timed Challenges**: Each quiz is timed to test both speed and accuracy.
- **Scoring System**: Track your score as you correctly answer questions.
- **Interactive Gameplay**: Receive immediate feedback on your answers. The game concludes with a "Win" dialog for a perfect score or a "Game Over" prompt for an incorrect answer or if the time runs out.
- **Animated UI**: Smooth animations for the app bar, category cards, and timer provide an engaging user experience.
- **State Restoration**: Easily restart the entire game to try again.

## Tech Stack

- **Framework**: Flutter (v3.16.7)
- **State Management**: `flutter_riverpod` for a reactive and robust state management architecture.
- **UI Packages**: Utilizes `iconsax` for icons and features custom widgets for animations and layout.

## Project Structure

The project follows a feature-first architecture to keep the codebase organized and scalable.

```
lib/
├── main.dart                 # App entry point
└── features/
    ├── home/                 # Home screen feature
    │   └── views/
    │       ├── screens/      # Home screen and its widgets
    │       └── widgets/      # Reusable widgets for the home screen
    ├── quiz/                 # Core quiz feature
    │   ├── data/             # Static question data (addition, subtraction, etc.)
    │   ├── models/           # Data models (e.g., QuestionModel)
    │   ├── provider/         # Riverpod providers for state management
    │   ├── viewmodel/        # State Notifiers (business logic)
    │   └── views/            # UI for the quiz screen and its components
    └── restart_widget.dart   # Utility to restart the app state
```

## Getting Started

### Prerequisites

- Flutter SDK (Version `3.16.7`). This project uses FVM (Flutter Version Manager), and it is recommended to use it to ensure version compatibility.
- Java 17
  
NOTE : DO NOT use different versions or else you may face errors .


## Images From App

![image alt](https://github.com/mostafa-harkous/math-game-flutter/blob/30e4943722f13fe56340ddb6fae514579c40ec2a/readme_images/Screenshot%202025-09-23%20031953.png)
![image alt](https://github.com/mostafa-harkous/math-game-flutter/blob/30e4943722f13fe56340ddb6fae514579c40ec2a/readme_images/Screenshot%202025-09-23%20032020.png)
