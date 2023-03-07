// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retirada_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RetiradaResult _$RetiradaResultFromJson(Map<String, dynamic> json) =>
    RetiradaResult(
      retiradaResultData: json['data'] == null
          ? null
          : RetiradaResultData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RetiradaResultToJson(RetiradaResult instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.retiradaResultData);
  return val;
}

RetiradaResultData _$RetiradaResultDataFromJson(Map<String, dynamic> json) =>
    RetiradaResultData(
      transacaoId: json['transacaoId'] as String?,
      endToEndId: json['endToEndId'] as String?,
      pspId: json['pspId'] as String?,
      pspNome: json['pspNome'] as String?,
      agencia: json['agencia'] as String?,
      conta: json['conta'] as String?,
      contaNome: json['contaNome'] as String?,
      contaTipo: json['contaTipo'] as String?,
    );

Map<String, dynamic> _$RetiradaResultDataToJson(RetiradaResultData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('transacaoId', instance.transacaoId);
  writeNotNull('endToEndId', instance.endToEndId);
  writeNotNull('pspId', instance.pspId);
  writeNotNull('pspNome', instance.pspNome);
  writeNotNull('agencia', instance.agencia);
  writeNotNull('conta', instance.conta);
  writeNotNull('contaNome', instance.contaNome);
  writeNotNull('contaTipo', instance.contaTipo);
  return val;
}
