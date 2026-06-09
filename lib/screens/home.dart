import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/logo.png',
              width: 300,
              height: 300,
            ),

             SizedBox(height: 20),

             Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'O GeoPrevent é uma plataforma que utiliza dados de satélites, sensores climáticos e inteligência artificial para prever enchentes, deslizamentos e eventos extremos.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
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