import 'package:flutter/material.dart';

class TopAppBar extends StatelessWidget
    implements PreferredSizeWidget {

  const TopAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 92, 129, 180),
      title: const Text('GeoPrevent'),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}