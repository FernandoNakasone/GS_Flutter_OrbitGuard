import 'package:flutter/material.dart';
import 'package:orbitguard/components/topAppBar.dart';
import 'package:orbitguard/components/bottomAppBar.dart';
import 'package:orbitguard/components/drawer.dart';

class HomeScreen extends StatelessWidget {

final VoidCallback changeTheme;

  const HomeScreen({super.key, required this.changeTheme,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TopAppBar(),
      drawer: AppDrawer(
        changeTheme: changeTheme,
        ),
      bottomNavigationBar: const BottomAppbar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/logo.png',
              width: 350, height: 350
            ),
            Padding(padding: EdgeInsets.all(16.0),
            child: Text(
              'O OrbitGuard é uma plataforma que utiliza dados de satélites, sensores climáticos e inteligência artificial para prever enchentes, deslizamentos e eventos extremos.',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}