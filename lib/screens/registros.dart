import 'package:flutter/material.dart';
import 'package:GeoPrevent/components/card_registro.dart';
import 'package:GeoPrevent/data/regiao_data.dart';
import 'package:GeoPrevent/data/registro_data.dart';

class Registros extends StatefulWidget {
  const Registros({super.key});

  @override
  State<Registros> createState() => _RegistrosState();
}

class _RegistrosState extends State<Registros> {
  int? regiaoId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView( 
          child:  Center( 
            child: Padding(
              padding:  EdgeInsets.all(16.0),
              child: Column(
                children: [
                  SizedBox(
                    width: 200,
                    child: DropdownButton<int>(
                      value: regiaoId,
                      hint:  Text('Selecione uma região'),
                      isExpanded: true,
                      items: regiaoData.map((regiao) {
                        return DropdownMenuItem<int>(
                          value: regiao.id,
                          child: Text(regiao.nome),
                        );
                      }).toList(),
                      onChanged: (int? valor) {
                        setState(() {
                          regiaoId = valor;
                        });
                      },
                    ),
                  ),
                  Column(children: listCardItem()),
                ],
              ),
            ),
          
        ),
      ),
    );
  }

  List<Widget> listCardItem() {
    List<Widget> items = [];

    if (regiaoId == null) {
      return items;
    }

    for (var registro in registroData) {
      if (registro.regiaoId == regiaoId) {
        items.add(CardRegistro(registro: registro));
      }
    }

    return items;
  }
}
