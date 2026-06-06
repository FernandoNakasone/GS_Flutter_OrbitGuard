import 'package:flutter/material.dart';
import 'package:orbitguard/data/regiao_data.dart';

class CardItem extends StatelessWidget {
  final Regiao regiao;
  final VoidCallback onTap;

  const CardItem(
    this.regiao, {
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        child: Column(
          children: [
            Image.asset(
              regiao.fotoMapa,
              width: 100,
              height: 100,
            ),
            Text(regiao.nome, style: TextStyle(fontSize: (16)),),
          ],
        ),
      ),
    );
  }
}