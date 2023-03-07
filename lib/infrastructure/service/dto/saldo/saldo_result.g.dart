// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saldo_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SaldoResult _$SaldoResultFromJson(Map<String, dynamic> json) => SaldoResult(
      saldoResultData: json['data'] == null
          ? null
          : SaldoResultData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SaldoResultToJson(SaldoResult instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.saldoResultData);
  return val;
}

SaldoResultData _$SaldoResultDataFromJson(Map<String, dynamic> json) =>
    SaldoResultData(
      total: (json['total'] as num?)?.toDouble(),
      disponivel: (json['disponivel'] as num?)?.toDouble(),
      bloqueado: (json['bloqueado'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$SaldoResultDataToJson(SaldoResultData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('total', instance.total);
  writeNotNull('disponivel', instance.disponivel);
  writeNotNull('bloqueado', instance.bloqueado);
  return val;
}
