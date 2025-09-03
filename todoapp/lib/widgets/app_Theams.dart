// import 'package:flutter/material.dart';

// class AppThemes {
//   static final lightTheme = ThemeData(
//     brightness: Brightness.light,
//     useMaterial3: true,
//     scaffoldBackgroundColor: const Color(0xFF181218),
//     primaryColor: Colors.deepPurple,
//     cardColor: const Color(0xFF232124),
//     colorScheme: const ColorScheme.light(
//       background: Color(0xFF181218),
//       primary: Color(0xFF7C4DFF),
//       secondary: Color(0xFFBC6FF1),
//       surface: Color(0xFF232124),
//       onSurface: Colors.white,
//     ),
//     textTheme: const TextTheme(
//       headlineMedium: TextStyle(
//         fontSize: 24,
//         fontWeight: FontWeight.bold,
//         color: Colors.white,
//       ),
//       titleLarge: TextStyle(fontSize: 20, color: Colors.white),
//       bodyMedium: TextStyle(color: Colors.white70),
//     ),
//     iconTheme: const IconThemeData(color: Colors.white54),
//   );

//   static final darkTheme = ThemeData(
//     brightness: Brightness.dark,
//     useMaterial3: true,
//     scaffoldBackgroundColor: const Color(0xFF181218),
//     primaryColor: Colors.deepPurple,
//     cardColor: const Color(0xFF232124),
//     colorScheme: const ColorScheme.dark(
//       background: Color(0xFF181218),
//       primary: Color(0xFF7C4DFF),
//       secondary: Color(0xFFBC6FF1),
//       surface: Color(0xFF232124),
//       onSurface: Colors.white,
//     ),
//     textTheme: const TextTheme(
//       headlineMedium: TextStyle(
//         fontSize: 24,
//         fontWeight: FontWeight.bold,
//         color: Colors.white,
//       ),
//       titleLarge: TextStyle(fontSize: 20, color: Colors.white),
//       bodyMedium: TextStyle(color: Colors.white70),
//     ),
//     iconTheme: const IconThemeData(color: Colors.white54),
//   );
// }
import 'package:flutter/material.dart';

/// Centralized theme configuration for the app.
/// Only dark theme is provided for now.
/// Use [AppThemes.darkTheme] in your MaterialApp for consistent styling.
class AppThemes {
  // Predefined text styles for reuse across the app
  static const TextStyle headlineStyle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static const TextStyle titleStyle = TextStyle(
    fontSize: 20,
    color: Colors.white,
  );

  static const TextStyle bodyStyle = TextStyle(color: Colors.white70);

  // Predefined color constants
  static const Color scaffoldBg = Color(0xFF181218);
  static const Color cardBg = Color(0xFF232124);
  static const Color primary = Color(0xFF7C4DFF);
  static const Color secondary = Color(0xFFBC6FF1);

  // Centralized dark theme
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    useMaterial3: true,
    scaffoldBackgroundColor: scaffoldBg,
    primaryColor: primary,
    cardColor: cardBg,
    colorScheme: const ColorScheme.dark(
      background: scaffoldBg,
      primary: primary,
      secondary: secondary,
      surface: cardBg,
      onSurface: Colors.white,
    ),
    textTheme: const TextTheme(
      headlineMedium: headlineStyle,
      titleLarge: titleStyle,
      bodyMedium: bodyStyle,
    ),
    iconTheme: const IconThemeData(color: Colors.white54),
  );
}
