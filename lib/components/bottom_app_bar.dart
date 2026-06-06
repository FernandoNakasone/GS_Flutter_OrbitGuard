import 'package:flutter/material.dart';

class BottomAppbar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const BottomAppbar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      onTap: onTap,

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
          label: 'Monitoramento',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.article_sharp),
          label: 'Ver registro de região',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.checklist_rounded),
          label: 'Como se preparar',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.cell_tower_sharp),
          label: 'Satélites',
        ),
      ],
    );
  }
}