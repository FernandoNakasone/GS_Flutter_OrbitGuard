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
          label: 'Home'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.palette), 
          label: 'Funcionamento'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.map_rounded),
          label: 'Regiões',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.article_sharp),
          label: 'Registros',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.checklist_rounded),
          label: 'Preparar',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.cell_tower_sharp),
          label: 'Satélites',
        ),
      ],
    );
  }
}
