class Regiao{
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
  required this.dataUltimoDesastre
});

}


final List<Regiao> sateliteData = [
  Regiao(
    id: 1,
    nome: 'São Paulo',
    estado: 'São Paulo',
    area: 1522,
    fotoMapa: 'images/',
    nivelRisco: 8,
    dataUltimoDesastre: DateTime.utc(2026, 6, 2, 14, 30),
    )
];