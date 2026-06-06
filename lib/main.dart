import 'package:flutter/material.dart';
import 'package:orbitguard/screens/home.dart';
import 'package:orbitguard/theme/appTheme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  ThemeMode themeMode = ThemeMode.light;

  void changeTheme() {
    setState(() {
      themeMode = themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: AppTheme.modoClaro,
      darkTheme: AppTheme.modoEscuro,
      themeMode: themeMode,

      home: HomeScreen(
        changeTheme: changeTheme,
      ),
    );
  }
}