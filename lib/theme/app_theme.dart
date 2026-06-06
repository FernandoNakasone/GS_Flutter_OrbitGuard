import 'package:flutter/material.dart';

class AppTheme {

  static ThemeData modoClaro = ThemeData(
    brightness: Brightness.light,

    scaffoldBackgroundColor:  Color.fromARGB(255, 255, 255, 255),
  );

  static ThemeData modoEscuro = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor:  Color.fromARGB(255, 87, 84, 84),
  );
}