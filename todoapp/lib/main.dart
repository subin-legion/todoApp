// import 'package:flutter/material.dart';
// import 'package:todoapp/pages/home_screen.dart';
// import 'package:todoapp/widgets/app_Theams.dart';

// void main() {
//   runApp(const TaskApp());
// }

// class TaskApp extends StatelessWidget {
//   const TaskApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Task Manager',
//       theme: AppThemes.lightTheme,
//       darkTheme: AppThemes.darkTheme,
//       themeMode: ThemeMode.system,
//       debugShowCheckedModeBanner: false,
//       home: const HomeScreen(),
//     );
//   }
// }
// main.dart
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:todoapp/pages/home_screen.dart';
// import 'package:todoapp/providers/task_provider.dart';
// import 'package:todoapp/widgets/app_Theams.dart';

// void main() {
//   runApp(const TaskApp());
// }

// class TaskApp extends StatelessWidget {
//   const TaskApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       providers: [ChangeNotifierProvider(create: (_) => TaskProvider())],
//       child: MaterialApp(
//         title: 'Task Manager',
//         theme: AppThemes.lightTheme,
//         darkTheme: AppThemes.darkTheme,
//         themeMode: ThemeMode.system,
//         debugShowCheckedModeBanner: false,
//         home: const HomeScreen(),
//       ),
//     );
//   }
// }
// main.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/pages/home_screen.dart';
import 'package:todoapp/providers/task_provider.dart';
import 'package:todoapp/providers/edit_task_provider.dart';
import 'package:todoapp/widgets/app_Theams.dart';

void main() {
  runApp(const TaskApp());
}

class TaskApp extends StatelessWidget {
  const TaskApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => TaskProvider()),
        ChangeNotifierProvider(create: (_) => EditTaskProvider()),
      ],
      child: MaterialApp(
        title: 'Task Manager',
        theme: AppThemes.lightTheme,
        darkTheme: AppThemes.darkTheme,
        themeMode: ThemeMode.system,
        debugShowCheckedModeBanner: false,
        home: const HomeScreen(),
      ),
    );
  }
}
