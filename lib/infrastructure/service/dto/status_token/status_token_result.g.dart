// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status_token_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StatusTokenResult _$StatusTokenResultFromJson(Map<String, dynamic> json) =>
    StatusTokenResult(
      statusTokenResultData: json['data'] == null
          ? null
          : StatusTokenResultData.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StatusTokenResultToJson(StatusTokenResult instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.statusTokenResultData);
  return val;
}

StatusTokenResultData _$StatusTokenResultDataFromJson(
        Map<String, dynamic> json) =>
    StatusTokenResultData(
      cnpj: json['cnpj'] as String?,
      nome: json['nome'] as String?,
      fantasia: json['fantasia'] as String?,
    );

Map<String, dynamic> _$StatusTokenResultDataToJson(
    StatusTokenResultData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('cnpj', instance.cnpj);
  writeNotNull('nome', instance.nome);
  writeNotNull('fantasia', instance.fantasia);
  return val;
}
