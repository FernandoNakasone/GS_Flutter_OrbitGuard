import 'package:flutter/material.dart';
import 'package:orbitguard/data/registro_data.dart';

class CardRegistro extends StatelessWidget {
  final Registro registro;

  const CardRegistro({super.key, required this.registro});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        width: 350,
        height: 200,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${registro.tipo}',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                'Descrição: ${registro.descricao}',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                'Intensidade: ${registro.intensidade}',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                'Data do evento: ${registro.data}',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                'Satélite: ${registro.satelite.nome}',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
