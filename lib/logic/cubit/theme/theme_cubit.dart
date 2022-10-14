import 'package:bloc_architecture/config/themes/defualt.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(const ThemeInitial(themeMode: ThemeMode.light)) {
    updateAppTheme();
  }

// update your app theme properties
  void updateAppTheme() {
    final Brightness currentBrightness = DefaultTheme.currentSystemBrightness;
    currentBrightness == Brightness.light
        ? _setTheme(ThemeMode.light)
        : _setTheme(ThemeMode.dark);
  }

// set new theme to your app
  void _setTheme(ThemeMode themeMode) {
    DefaultTheme.setStatusBarAndNavigationBarColors(themeMode);
    emit(ThemeInitial(themeMode: themeMode));
  }
}
