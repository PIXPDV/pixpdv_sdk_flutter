// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qrdinamico_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QrDinamicoData _$QrDinamicoDataFromJson(Map<String, dynamic> json) =>
    QrDinamicoData(
      valor: (json['valor'] as num?)?.toDouble(),
      minutos: json['minutos'] as int?,
      mensagem: json['mensagem'] as String?,
      imagem: json['imagem'] as bool?,
    );

Map<String, dynamic> _$QrDinamicoDataToJson(QrDinamicoData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('valor', instance.valor);
  writeNotNull('minutos', instance.minutos);
  writeNotNull('mensagem', instance.mensagem);
  writeNotNull('imagem', instance.imagem);
  return val;
}
