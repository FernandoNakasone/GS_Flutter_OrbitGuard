import 'package:orbitguard/data/satelite.dart';

class Registro {
  final String tipo;
  final String descricao;
  final int intensidade;
  final DateTime data;
  final int regiaoId;
  final Satelite satelite;

  const Registro({
    required this.tipo,
    required this.descricao,
    required this.intensidade,
    required this.data,
    required this.regiaoId,
    required this.satelite
  });
}

final List<Registro> registroData = [
  Registro(
    tipo: 'Alagamento',
    descricao: 'Alagamento durante chuva forte',
    intensidade: 8,
    data: DateTime(2026, 05, 26),
    regiaoId: 1,
    satelite: Satelite.jason3
  ),
  Registro(
    tipo: 'Deslizamento de terra',
    descricao: 'Deslizamento durante a noite após dias de chuvas fortes',
    intensidade: 10,
    data: DateTime(2026, 01, 04),
    regiaoId: 2,
    satelite: Satelite.jasonCS
  ),
  Registro(
    tipo: 'Alagamento',
    descricao: 'Alagamento durante chuva',
    intensidade: 5,
    data: DateTime(2026, 03, 14),
    regiaoId: 3,
    satelite: Satelite.jason3
  ),
  Registro(
    tipo: 'Deslizamento de terra',
    descricao: 'Deslizamento de terra após chuva fraca',
    intensidade: 3,
    data: DateTime(2024, 12, 14),
    regiaoId: 3,
    satelite: Satelite.jasonCS
  ),
  Registro(
    tipo: 'Enchente',
    descricao: 'Enchente durante chuva intensa',
    intensidade: 7,
    data: DateTime(2023, 11, 14),
    regiaoId: 4,
    satelite: Satelite.jason3
  ),
  Registro(
    tipo: 'Deslizamento de terra',
    descricao: 'Deslizamento durante a noite após dias de chuvas fortes',
    intensidade: 10,
    data: DateTime(2026, 01, 04),
    regiaoId: 1,
    satelite: Satelite.jasonCS
  ),
  Registro(
    tipo: 'Enchente',
    descricao: 'Enchente durante chuva intensa',
    intensidade: 7,
    data: DateTime(2023, 11, 14),
    regiaoId: 1,
    satelite: Satelite.jason3
  ),
  Registro(
    tipo: 'Enchente',
    descricao: 'Enchente durante chuva intensa',
    intensidade: 7,
    data: DateTime(2023, 11, 14),
    regiaoId: 2,
    satelite: Satelite.jason3
  ),
  Registro(
    tipo: 'Enchente',
    descricao: 'Enchente durante chuva intensa',
    intensidade: 7,
    data: DateTime(2023, 11, 14),
    regiaoId: 5,
    satelite: Satelite.jason3
  ),
  Registro(
    tipo: 'Enchente',
    descricao: 'Enchente durante chuva intensa',
    intensidade: 7,
    data: DateTime(2023, 11, 14),
    regiaoId: 6,
    satelite: Satelite.jason3
  ),
];
