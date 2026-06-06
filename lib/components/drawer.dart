import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  final VoidCallback changeTheme;

  const AppDrawer({super.key, required this.changeTheme});

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SwitchListTile(
            secondary: const Icon(Icons.dark_mode),
            title: const Text('Modo Escuro'),
            value: isDark,
            onChanged: (value) {
              changeTheme();
            },
          ),
        ],
      ),
    );
  }
}
