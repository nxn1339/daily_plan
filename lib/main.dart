import 'package:daily_plan/generated/l10n.dart';
import 'package:daily_plan/screens/dash_board.dart';
import 'package:flutter/material.dart';
import 'package:daily_plan/utils/theme/theme.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

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
       supportedLocales: [
        Locale('en', ''),
        Locale('vi', ''),
      ],
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: Locale('vi', ''), 
      home: DashBoard(),
    );
  }
}
