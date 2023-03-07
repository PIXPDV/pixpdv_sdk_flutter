// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'extrato_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExtratoResult _$ExtratoResultFromJson(Map<String, dynamic> json) =>
    ExtratoResult(
      extratoResultData: json['data'] == null
          ? null
          : ExtratoResultData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ExtratoResultToJson(ExtratoResult instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.extratoResultData);
  return val;
}

ExtratoResultData _$ExtratoResultDataFromJson(Map<String, dynamic> json) =>
    ExtratoResultData(
      extrato: (json['extrato'] as List<dynamic>?)
          ?.map((e) => Extrato.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ExtratoResultDataToJson(ExtratoResultData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('extrato', instance.extrato);
  return val;
}

Extrato _$ExtratoFromJson(Map<String, dynamic> json) => Extrato(
      transacaoId: json['transacaoId'] as String?,
      transacaoTipo: json['transacaoTipo'] as String?,
      descricao: json['descricao'] as String?,
      data:
          json['data'] == null ? null : DateTime.parse(json['data'] as String),
      valor: (json['valor'] as num?)?.toDouble(),
      tipo: json['tipo'] as String?,
    );

Map<String, dynamic> _$ExtratoToJson(Extrato instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('transacaoId', instance.transacaoId);
  writeNotNull('transacaoTipo', instance.transacaoTipo);
  writeNotNull('descricao', instance.descricao);
  writeNotNull('data', instance.data?.toIso8601String());
  writeNotNull('valor', instance.valor);
  writeNotNull('tipo', instance.tipo);
  return val;
}
