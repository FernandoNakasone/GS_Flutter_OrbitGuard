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
                      Image.asset(
                        regiaoSelecionada?.fotoMapa ?? 'images/default.png',
                        width: 200,
                        height: 200,
                      ),
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
}
