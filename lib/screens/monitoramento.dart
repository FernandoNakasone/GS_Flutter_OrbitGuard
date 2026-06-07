import 'package:flutter/material.dart';
import 'package:orbitguard/components/card_regiao.dart';
import 'package:orbitguard/data/regiao_data.dart';

class Monitorando extends StatefulWidget {
  const Monitorando({super.key});

  @override
  State<Monitorando> createState() => _MonitorandoState();
}

class _MonitorandoState extends State<Monitorando> {
  final ScrollController _scrollController = ScrollController();
  Regiao? regiaoSelecionada;

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Scrollbar(
              controller: _scrollController,
              thumbVisibility: true,
              child: SingleChildScrollView(
                controller: _scrollController,
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Row(children: listCardItem()),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ColorFiltered(colorFilter: ColorFilter.mode(
                          defineCor(regiaoSelecionada?.nivelRisco ?? -1),
                          BlendMode.overlay,
                        ),
                        child:
                      Image.asset(
                        regiaoSelecionada?.fotoMapa ?? 'images/default.png',
                        width: 200,
                        height: 200,
                      ),),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Região: ${regiaoSelecionada?.nome ?? "Nenhuma selecionada"}',
                            style: TextStyle(fontSize: 16),
                          ),
                          Text(
                            'Estado: ${regiaoSelecionada?.estado ?? "Nenhuma selecionada"}',
                            style: TextStyle(fontSize: 16),
                          ),
                          Text(
                            'Área (m2): ${regiaoSelecionada?.area ?? "Nenhuma selecionada"}',
                            style: TextStyle(fontSize: 16),
                          ),
                          Text(
                            'Risco: ${regiaoSelecionada?.nivelRisco ?? "Nenhuma selecionada"}',
                            style: TextStyle(fontSize: 16),
                          ),
                          Text(
                            'Data do último desastre: ${regiaoSelecionada?.dataUltimoDesastre ?? "Nenhuma selecionada"}',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> listCardItem() {
    List<CardRegiao> items = [];

    for (var regiao in regiaoData) {
      var item = CardRegiao(
        regiao,
        onTap: () {
          setState(() {
            regiaoSelecionada = regiao;
          });
        },
      );
      items.add(item);
    }
    return items;
  }
  Color defineCor(nivelRisco) {
  if (nivelRisco <= 2) {
    return Color.fromRGBO(0, 255, 0, 0.5);
  }
  if (nivelRisco > 2 && nivelRisco <= 5) {
    return Color.fromRGBO(255, 255, 0, 0.5);
  }
  if (nivelRisco > 5 && nivelRisco <= 8) {
    return Color.fromRGBO(255, 152, 0, 0.5);
  }
  return Color.fromRGBO(244, 67, 54, 0.7);
}
}
