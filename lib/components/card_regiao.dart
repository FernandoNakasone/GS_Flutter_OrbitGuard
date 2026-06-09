import 'package:flutter/material.dart';
import 'package:GeoPrevent/data/regiao_data.dart';

class CardRegiao extends StatelessWidget {
  final Regiao regiao;
  final VoidCallback onTap;

  const CardRegiao(this.regiao, {super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(regiao.fotoMapa, width: 150, height: 150),
            Text(regiao.nome, style: TextStyle(fontSize: (16))),
          ],
        ),
      ),
    );
  }
}
