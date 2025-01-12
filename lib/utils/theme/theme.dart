import 'package:flutter/material.dart';
import 'package:daily_plan/utils/theme/custom_theme/appbar_theme.dart';
import 'package:daily_plan/utils/theme/custom_theme/bottom_sheet_theme.dart';
import 'package:daily_plan/utils/theme/custom_theme/button_theme.dart';
import 'package:daily_plan/utils/theme/custom_theme/checkbox_theme.dart';
import 'package:daily_plan/utils/theme/custom_theme/chip_theme.dart';
import 'package:daily_plan/utils/theme/custom_theme/outline_button_theme.dart';
import 'package:daily_plan/utils/theme/custom_theme/text_field_theme.dart';
import 'package:daily_plan/utils/theme/custom_theme/text_theme.dart';

class ThemeApp{
  ThemeApp._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TextThemeApp.lightTextTheme,
    chipTheme: ChipThemeApp.lightChipTheme,
    appBarTheme: AppBarThemeApp.lightAppBarTheme,
    checkboxTheme: CheckBoxThemeApp.lightCheckboxTheme,
    bottomSheetTheme: BottomSheetThemeApp.lightBottomSheetTheme,
    elevatedButtonTheme: ButtonThemeApp.lightElevatedButtonTheme,
    outlinedButtonTheme: OutlinedButtonThemeApp.lightOutlinedButtonTheme,
    inputDecorationTheme: TextFormFieldThemeApp.lightInputDecorationTheme
  );
  
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TextThemeApp.darkTextTheme,
    appBarTheme: AppBarThemeApp.darkAppBarTheme,
    checkboxTheme: CheckBoxThemeApp.darkCheckboxTheme,
    bottomSheetTheme: BottomSheetThemeApp.darkBottomSheetTheme,
    elevatedButtonTheme: ButtonThemeApp.darkElevatedButtonTheme,
    outlinedButtonTheme: OutlinedButtonThemeApp.darkOutlinedButtonTheme,
    inputDecorationTheme: TextFormFieldThemeApp.darkInputDecorationTheme
  );
}