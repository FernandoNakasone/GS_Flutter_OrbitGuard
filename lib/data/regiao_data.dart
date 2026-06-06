class Regiao {
  final int id;
  final String nome;
  final String estado;
  final double area;
  final String fotoMapa;
  final int nivelRisco;
  final DateTime dataUltimoDesastre;

  const Regiao({
    required this.id,
    required this.nome,
    required this.estado,
    required this.area,
    required this.fotoMapa,
    required this.nivelRisco,
    required this.dataUltimoDesastre,
  });
}

final List<Regiao> regiaoData = [
  Regiao(
    id: 1,
    nome: 'Peruíbe',
    estado: 'SP',
    area: 326.20,
    fotoMapa: 'images/peruibe.png',
    nivelRisco: 7,
    dataUltimoDesastre: DateTime(2026, 06, 02),
  ),
  Regiao(
    id: 2,
    nome: 'Campinas',
    estado: 'SP',
    area: 794.57,
    fotoMapa: 'images/campinas.png',
    nivelRisco: 2,
    dataUltimoDesastre: DateTime(2026, 06, 19),
  ),
  Regiao(
    id: 3,
    nome: 'Pindamonhangaba',
    estado: 'SP',
    area: 731.35,
    fotoMapa: 'images/Pindamonhangaba.png',
    nivelRisco: 4,
    dataUltimoDesastre: DateTime(2026, 04, 16),
  ),
  Regiao(
    id: 4,
    nome: 'Boa Esperança',
    estado: 'ES',
    area: 428.50,
    fotoMapa: 'images/BoaEsperanca.png',
    nivelRisco: 8,
    dataUltimoDesastre: DateTime(2025, 07, 25),
  ),
  Regiao(
    id: 5,
    nome: 'Pouso Alegre',
    estado: 'MG',
    area: 542.80,
    fotoMapa: 'images/PousoAlegre.png',
    nivelRisco: 5,
    dataUltimoDesastre: DateTime(2024, 05, 11),
  ),
  Regiao(
    id: 6,
    nome: 'Niterói',
    estado: 'RJ',
    area: 133.76,
    fotoMapa: 'images/niteroi.png',
    nivelRisco: 3,
    dataUltimoDesastre: DateTime(2025, 12, 18),
  ),
];
