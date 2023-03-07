// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retirada_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RetiradaData _$RetiradaDataFromJson(Map<String, dynamic> json) => RetiradaData(
      valor: (json['valor'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$RetiradaDataToJson(RetiradaData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('valor', instance.valor);
  return val;
}
