import 'package:flutter/material.dart';
import 'package:orbitguard/components/card_registro.dart';
import 'package:orbitguard/data/registro_data.dart';
import 'package:orbitguard/data/satelite.dart';

class Satelites extends StatefulWidget {
  const Satelites({super.key});

  @override
  State<Satelites> createState() => _SatelitesState();
}

class _SatelitesState extends State<Satelites> {
  Satelite? satelite;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                SizedBox(
                  width: 200,
                  child: Column(
                    children: [
                      RadioListTile<Satelite>(
                        title: Text('${Satelite.jason3.nome}'),
                        value: Satelite.jason3,
                        groupValue: satelite,
                        onChanged: (value) {
                          setState(() {
                            satelite = value;
                          });
                        },
                      ),
                      RadioListTile<Satelite>(
                        title: Text('${Satelite.jasonCS.nome}'),
                        value: Satelite.jasonCS,
                        groupValue: satelite,
                        onChanged: (value) {
                          setState(() {
                            satelite = value;
                          });
                        },
                      ),
                    ],
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

    if (satelite == null) {
      return items;
    }

    for (var registro in registroData) {
      if (registro.satelite == satelite) {
        items.add(CardRegistro(registro: registro));
      }
    }

    return items;
  }
}
