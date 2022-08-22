class Cardmenu {
  int? idMenuCard;
  String icone = '';
  String titulo = 'Sem Titulo';
  String? subtitulo;
  String? irPara;
  String? irParaUrl;

  Cardmenu(
      {this.idMenuCard,
      required this.icone,
      required this.titulo,
      this.subtitulo,
      this.irPara,
      this.irParaUrl});

  Cardmenu.fromJson(Map<String, dynamic> json) {
    idMenuCard = json['idMenuCard'];
    icone = json['icone'];
    titulo = json['titulo'];
    subtitulo = json['subtitulo'];
    irPara = json['irPara'];
    irParaUrl = json['irParaUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['idMenuCard'] = idMenuCard;
    data['icone'] = icone;
    data['titulo'] = titulo;
    data['subtitulo'] = subtitulo;
    data['irPara'] = irPara;
    data['irParaUrl'] = irParaUrl;
    return data;
  }
}
