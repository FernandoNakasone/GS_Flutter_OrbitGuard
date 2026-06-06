import 'package:flutter/material.dart';

class BottomAppbar extends StatelessWidget {
  const BottomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: 0,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.map),
          label: 'Como funciona?',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.house_sharp),
          label: 'Regiões',
        ),
          BottomNavigationBarItem(
          icon: Icon(Icons.article_sharp),
          label: 'Ver registro de região',
        ),
          BottomNavigationBarItem(
          icon: Icon(Icons.checklist_rounded),
          label: 'como se preparar',
        ),
          BottomNavigationBarItem(
          icon: Icon(Icons.cell_tower_sharp),
          label: 'Satélites',
        ),
      ],
    );
  }
}