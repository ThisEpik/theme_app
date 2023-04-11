import 'package:flutter/material.dart';
import 'package:theme_app/themes/custom_colors.dart';

class LightTheme {
  final ThemeData theme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: CustomColors.white,
    appBarTheme: const AppBarTheme(color: CustomColors.green),
    textTheme: const TextTheme(
      titleLarge: TextStyle(fontSize: 30),
      titleMedium: TextStyle(fontSize: 20),
      titleSmall: TextStyle(fontSize: 10),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: CustomColors.green,
    ),
    elevatedButtonTheme: const ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(CustomColors.green),
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
      color: CustomColors.green,
      linearTrackColor: CustomColors.grey,
    ),
    sliderTheme: const SliderThemeData(
      thumbColor: CustomColors.green,
      overlayColor: CustomColors.greyWithOpacity,
      activeTrackColor: CustomColors.green,
      inactiveTrackColor: CustomColors.grey,
    ),
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return CustomColors.green;
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
      fillColor: MaterialStatePropertyAll(CustomColors.green),
      side: BorderSide(color: CustomColors.grey),
    ),
    radioTheme: RadioThemeData(
      fillColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return CustomColors.green;
          }
          return CustomColors.grey;
        },
      ),
      overlayColor:
          const MaterialStatePropertyAll(CustomColors.greyWithOpacity),
    ),
  );
}
