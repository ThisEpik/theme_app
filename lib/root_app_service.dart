import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:theme_app/themes/dark_theme.dart';
import 'package:theme_app/themes/light_theme.dart';

class RootAppService extends ChangeNotifier {
  final LightTheme _lightTheme = LightTheme();
  final DarkTheme _darkTheme = DarkTheme();

  late ThemeData _currentTheme;
  ThemeData get currentTheme => _currentTheme;

  RootAppService() {
    _setDefaultTheme();
  }

  void _setDefaultTheme() {
    /// gets system theme mode
    final Brightness brightness =
        SchedulerBinding.instance.platformDispatcher.platformBrightness;

    bool isDarkMode = brightness == Brightness.dark;

    _currentTheme = isDarkMode ? _darkTheme.theme : _lightTheme.theme;
    notifyListeners();
  }

  void changeTheme() {
    if (_currentTheme == _lightTheme.theme) {
      _currentTheme = _darkTheme.theme;
    } else {
      _currentTheme = _lightTheme.theme;
    }
    notifyListeners();
  }
}
