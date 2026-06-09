import 'package:flutter/material.dart';
import 'package:GeoPrevent/screens/como_preparar.dart';
import 'package:GeoPrevent/screens/home.dart';
import 'package:GeoPrevent/screens/monitoramento.dart';
import 'package:GeoPrevent/screens/como_funciona.dart';
import 'package:GeoPrevent/screens/registros.dart';
import 'package:GeoPrevent/screens/satelites.dart';
import 'package:GeoPrevent/theme/app_theme.dart';
import 'package:GeoPrevent/components/bottom_app_bar.dart';
import 'package:GeoPrevent/components/top_app_bar.dart';
import 'package:GeoPrevent/components/drawer.dart';

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
      Satelites()
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