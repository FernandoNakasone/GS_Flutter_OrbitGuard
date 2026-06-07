import 'package:flutter/material.dart';
import 'package:orbitguard/screens/como_preparar.dart';
import 'package:orbitguard/screens/home.dart';
import 'package:orbitguard/screens/monitoramento.dart';
import 'package:orbitguard/screens/como_funciona.dart';
import 'package:orbitguard/screens/registros.dart';
import 'package:orbitguard/theme/app_theme.dart';
import 'package:orbitguard/components/bottom_app_bar.dart';
import 'package:orbitguard/components/top_app_bar.dart';
import 'package:orbitguard/components/drawer.dart';

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

  int currentIndex = 0;

  void changeTheme() {
    setState(() {
      themeMode = themeMode == ThemeMode.light
          ? ThemeMode.dark
          : ThemeMode.light;
    });
  }

  void changePage(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  late final List<Widget> pages;

  @override
  void initState() {
    super.initState();

    pages = [
      Home(),
      ComoFunciona(),
      Monitorando(),
      Registros(),
      ComoPreparar(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: AppTheme.modoClaro,
      darkTheme: AppTheme.modoEscuro,
      themeMode: themeMode,

      home: Scaffold(
        appBar: TopAppBar(),

        drawer: AppDrawer(changeTheme: changeTheme),

        body: pages[currentIndex],

        bottomNavigationBar: BottomAppbar(
          currentIndex: currentIndex,
          onTap: changePage,
        ),
      ),
    );
  }
}