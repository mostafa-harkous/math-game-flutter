import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:math_game/features/home/views/screens/home_screen.dart';

import 'features/restart_widget.dart';

void main() {
  runApp(const RestartWidget(child: MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    // This sets the system UI overlay style globally for the app.
    // Ensure this is called before runApp or within the main widget's build.
    // For a full-bled effect, you'd typically want light icons on a dark background
    // or dark icons on a light background, depending on your app's header color.
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // Makes the status bar transparent
      statusBarIconBrightness: Brightness.light, // For dark icons (e.g., black)
      // statusBarIconBrightness: Brightness.dark, // For light icons (e.g., white)
      systemNavigationBarColor:
          Colors.transparent, // If you want to make the nav bar transparent
      systemNavigationBarIconBrightness:
          Brightness.light, // For dark icons on nav bar
    ));

    return const ProviderScope(child: MaterialApp(home: HomeScreen()));
  }
}
