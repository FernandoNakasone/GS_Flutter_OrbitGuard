import 'package:flutter/material.dart';

class AppTheme {

  static ThemeData modoClaro = ThemeData(
    brightness: Brightness.light,

    scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
  );

  static ThemeData modoEscuro = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: const Color.fromARGB(255, 87, 84, 84),
  );
}