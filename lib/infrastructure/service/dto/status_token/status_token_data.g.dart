// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status_token_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StatusTokenData _$StatusTokenDataFromJson(Map<String, dynamic> json) =>
    StatusTokenData(
      cnpj: json['cnpj'] as String?,
    );

Map<String, dynamic> _$StatusTokenDataToJson(StatusTokenData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('cnpj', instance.cnpj);
  return val;
}
