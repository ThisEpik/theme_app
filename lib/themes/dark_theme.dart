import 'package:flutter/material.dart';
import 'package:theme_app/themes/custom_colors.dart';

class DarkTheme {
  final ThemeData theme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: CustomColors.black,
    appBarTheme: const AppBarTheme(color: CustomColors.cyan),
    textTheme: const TextTheme(
      titleLarge: TextStyle(fontSize: 30),
      titleMedium: TextStyle(fontSize: 20),
      titleSmall: TextStyle(fontSize: 10),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: CustomColors.cyan,
      foregroundColor: CustomColors.white,
    ),
    elevatedButtonTheme: const ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(CustomColors.cyan),
      ),
    ),
    textButtonTheme: const TextButtonThemeData(
      style: ButtonStyle(
        overlayColor: MaterialStatePropertyAll(CustomColors.greyWithOpacity),
      ),
    ),
    outlinedButtonTheme: const OutlinedButtonThemeData(
      style: ButtonStyle(
        overlayColor: MaterialStatePropertyAll(CustomColors.greyWithOpacity),
      ),
    ),
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: CustomColors.cyan,
      linearTrackColor: CustomColors.grey,
    ),
    sliderTheme: const SliderThemeData(
      thumbColor: CustomColors.cyan,
      overlayColor: CustomColors.greyWithOpacity,
      activeTrackColor: CustomColors.cyan,
      inactiveTrackColor: CustomColors.grey,
    ),
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return CustomColors.cyan;
          }
          return CustomColors.white;
        },
      ),
      trackColor: const MaterialStatePropertyAll(CustomColors.grey),
      overlayColor:
          const MaterialStatePropertyAll(CustomColors.greyWithOpacity),
    ),
    checkboxTheme: const CheckboxThemeData(
      overlayColor: MaterialStatePropertyAll(CustomColors.greyWithOpacity),
      fillColor: MaterialStatePropertyAll(CustomColors.cyan),
      side: BorderSide(color: CustomColors.grey),
    ),
    radioTheme: RadioThemeData(
      fillColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return CustomColors.cyan;
          }
          return CustomColors.grey;
        },
      ),
      overlayColor:
          const MaterialStatePropertyAll(CustomColors.greyWithOpacity),
    ),
  );
}
