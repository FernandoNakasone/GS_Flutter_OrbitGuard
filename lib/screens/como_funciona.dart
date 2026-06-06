import 'package:flutter/material.dart';

class ComoFunciona extends StatefulWidget {
  const ComoFunciona({super.key});

  @override
  State<ComoFunciona> createState() => _ComoFuncionaState();
}

class _ComoFuncionaState extends State<ComoFunciona> {
  int nivelRisco = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Cada região tem seu risco analisado em tempo real por meio dos satélites Jason-3 e Jason-CS.',
                style: TextStyle(fontSize: 24),
              ),
              Text(
                'Por meio da página de monitoramento, é possível visualizar dados sobre cada região, além de exibir cores de acordo com o risco atual da mesma.',
                style: TextStyle(fontSize: 16),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(children: [
                    Padding(
                      padding: EdgeInsetsGeometry.all(26),
                      child: ColorFiltered(
                        colorFilter: ColorFilter.mode(
                          defineCor(nivelRisco),
                          BlendMode.overlay,
                        ),
                        child: Container(
                          width: 300,
                          height: 300,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              'images/campinas.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Nivel de risco: $nivelRisco',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Slider(
                          value: nivelRisco.toDouble(),
                          min: 0,
                          max: 10,
                          onChanged: (value) {
                            setState(() {
                              nivelRisco = value.toInt();
                            });
                          },
                        ),
                      ],
                    ),
                   ],
                  )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
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
