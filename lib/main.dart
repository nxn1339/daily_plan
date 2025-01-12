import 'package:daily_plan/screens/dash_board.dart';
import 'package:flutter/material.dart';
import 'package:daily_plan/screens/home.dart';
import 'package:daily_plan/utils/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: ThemeApp.lightTheme,
      darkTheme: ThemeApp.darkTheme,
      home: DashBoard(),
    );
  }
}
