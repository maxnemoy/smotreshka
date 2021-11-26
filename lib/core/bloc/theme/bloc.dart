import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class ThemeBloc extends Cubit<ThemeData> {
  ThemeBloc({required bool isDart}) : super(isDart ? _darkTheme : _lightTheme);

  static final _lightTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light(
      primary: Color(0xffd9b126),
      secondary: Color(0xffd9b126),
      background: Color(0xffe9eaec),
      surface: Color(0xffcdd0d5),
      onPrimary: Color(0xff000000),
      onBackground: Color(0xff000000),
      onSurface: Color(0xff000000),
    ),
  );

  static final _darkTheme = ThemeData(
      brightness: Brightness.dark,
      colorScheme: const ColorScheme.dark(
        primary: Color(0xfff0b21f),
        secondary: Color(0xfff0b21f),
        background: Color(0xff231e13),
        surface: Color(0xff2f291b),
        onPrimary: Color(0xff000000),
        onBackground: Color(0xffffffff),
        onSurface: Color(0xffffffff),
      ));

  void toggleTheme() {
    emit(state.brightness == Brightness.light ?  _darkTheme : _lightTheme );
  }
}
