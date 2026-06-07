import 'package:flutter/material.dart';

class ComoPreparar extends StatefulWidget {
  const ComoPreparar({super.key});

  @override
  State<ComoPreparar> createState() => _ComoPrepararState();
}

class _ComoPrepararState extends State<ComoPreparar> {

    bool agua = false;
    bool alimentos = false;
    bool lanterna = false;
    bool kitSocorros = false;
    bool medicamentos = false;
    bool radio = false;
    bool powerbank = false;
    bool fosforos = false;
    bool canivete = false;
    bool roupas = false;
    double checked = 0;

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  'Checklist de preparação',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                CheckboxListTile(
                  title: Text('Água armazenada'),
                  value: agua,
                  onChanged: (value) {
                    setState(() {
                      agua = value!;
                      if(agua){
                        checked++;
                      } else{
                        checked--;
                      }
                    });
                  },
                ),
                CheckboxListTile(
                  title: Text('Alimentos não perecíveis'),
                  value: alimentos,
                  onChanged: (value) {
                    setState(() {
                      alimentos = value!;
                      if(alimentos){
                        checked++;
                      } else{
                        checked--;
                      }
                    });
                  },
                ),
                CheckboxListTile(
                  title: Text('Lanterna disponível'),
                  value: lanterna,
                  onChanged: (value) {
                    setState(() {
                      lanterna = value!;
                      if(lanterna){
                        checked++;
                      } else{
                        checked--;
                      }
                    });
                  },
                ),
                CheckboxListTile(
                  title: Text('Kit de primeiros socorros'),
                  value: kitSocorros,
                  onChanged: (value) {
                    setState(() {
                      kitSocorros = value!;
                      if(kitSocorros){
                        checked++;
                      } else{
                        checked--;
                      }
                    });
                  },
                ),
                CheckboxListTile(
                  title: Text('Medicamentos'),
                  value: medicamentos,
                  onChanged: (value) {
                    setState(() {
                      medicamentos = value!;
                      if(medicamentos){
                        checked++;
                      } else{
                        checked--;
                      }
                    });
                  },
                ),
                CheckboxListTile(
                  title: Text('Rádio portátil'),
                  value: radio,
                  onChanged: (value) {
                    setState(() {
                      radio = value!;
                      if(radio){
                        checked++;
                      } else{
                        checked--;
                      }
                    });
                  },
                ),
                CheckboxListTile(
                  title: Text('Powerbank para celulares'),
                  value: powerbank,
                  onChanged: (value) {
                    setState(() {
                      powerbank = value!;
                      if(powerbank){
                        checked++;
                      } else{
                        checked--;
                      }
                    });
                  },
                ),
                CheckboxListTile(
                  title: Text('Fósforos'),
                  value: fosforos,
                  onChanged: (value) {
                    setState(() {
                      fosforos = value!;
                      if(fosforos){
                        checked++;
                      } else{
                        checked--;
                      }
                    });
                  },
                ),
                CheckboxListTile(
                  title: Text('Canivete multiuso'),
                  value: canivete,
                  onChanged: (value) {
                    setState(() {
                      canivete = value!;
                      if(canivete){
                        checked++;
                      } else{
                        checked--;
                      }
                    });
                  },
                ),
                CheckboxListTile(
                  title: Text('Roupas limpas'),
                  value: roupas,
                  onChanged: (value) {
                    setState(() {
                      roupas = value!;
                      if(roupas){
                        checked++;
                      } else{
                        checked--;
                      }
                    });
                  },
                ),
                Text('Porcentagem de preparação: ${calculaPorcentagem(checked)}%')
              ],
            ),
          ),
        ),
      ),
    );
  }
    double calculaPorcentagem(checked){
      return checked/10 * 100;
    }
}
