import 'package:json_annotation/json_annotation.dart';

part 'qrdinamico_data.g.dart';

@JsonSerializable()
class QrDinamicoData {
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'valor',
  )
  double? valor;
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'minutos',
  )
  int? minutos;
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'mensagem',
  )
  String? mensagem;
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'imagem',
  )
  bool? imagem;

  QrDinamicoData({
    this.valor,
    this.minutos,
    this.mensagem,
    this.imagem,
  });

  factory QrDinamicoData.fromJson(Map<String, dynamic> json) => _$QrDinamicoDataFromJson(json);
  Map<String, dynamic> toJson() => _$QrDinamicoDataToJson(this);
}
