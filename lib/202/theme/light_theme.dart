import 'package:flutter/material.dart';

class LighTheme {
  late ThemeData theme;

  LighTheme() {
    theme = ThemeData(
        appBarTheme: const AppBarTheme(
            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(20)))),
        scaffoldBackgroundColor: Colors.white.withOpacity(0.9),
        textTheme: ThemeData.light().textTheme.copyWith(
            subtitle1:
                TextStyle(fontSize: 20, color: _LightColors()._dustyPurple)),
        floatingActionButtonTheme:
            const FloatingActionButtonThemeData(backgroundColor: Colors.green),
        buttonTheme: ButtonThemeData(
            colorScheme: ColorScheme.light(
                onPrimary: _LightColors()._lightBlue,
                onSecondary: _LightColors()._dustyPurple)),
        colorScheme: const ColorScheme.light(),
        checkboxTheme: CheckboxThemeData(
            side: const BorderSide(color: Colors.green),
            fillColor: MaterialStateProperty.all(Colors.green)));
  }
}

class _LightColors {
  final Color _dustyPurple = const Color.fromARGB(132, 96, 133, 255);
  final Color _lightBlue = const Color.fromARGB(255, 173, 216, 230);
}
