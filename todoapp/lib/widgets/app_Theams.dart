import 'package:flutter/material.dart';

class AppThemes {
  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
    scaffoldBackgroundColor: const Color(0xFF181218),
    primaryColor: Colors.deepPurple,
    cardColor: const Color(0xFF232124),
    colorScheme: const ColorScheme.light(
      background: Color(0xFF181218),
      primary: Color(0xFF7C4DFF),
      secondary: Color(0xFFBC6FF1),
      surface: Color(0xFF232124),
      onSurface: Colors.white,
    ),
    textTheme: const TextTheme(
      headlineMedium: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      titleLarge: TextStyle(fontSize: 20, color: Colors.white),
      bodyMedium: TextStyle(color: Colors.white70),
    ),
    iconTheme: const IconThemeData(color: Colors.white54),
  );

  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    useMaterial3: true,
    scaffoldBackgroundColor: const Color(0xFF181218),
    primaryColor: Colors.deepPurple,
    cardColor: const Color(0xFF232124),
    colorScheme: const ColorScheme.dark(
      background: Color(0xFF181218),
      primary: Color(0xFF7C4DFF),
      secondary: Color(0xFFBC6FF1),
      surface: Color(0xFF232124),
      onSurface: Colors.white,
    ),
    textTheme: const TextTheme(
      headlineMedium: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      titleLarge: TextStyle(fontSize: 20, color: Colors.white),
      bodyMedium: TextStyle(color: Colors.white70),
    ),
    iconTheme: const IconThemeData(color: Colors.white54),
  );
}
