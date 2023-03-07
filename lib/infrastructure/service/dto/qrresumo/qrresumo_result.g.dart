// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qrresumo_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QrResumoResult _$QrResumoResultFromJson(Map<String, dynamic> json) =>
    QrResumoResult(
      qrResumoResultData: json['data'] == null
          ? null
          : QrResumoResultData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$QrResumoResultToJson(QrResumoResult instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.qrResumoResultData);
  return val;
}

QrResumoResultData _$QrResumoResultDataFromJson(Map<String, dynamic> json) =>
    QrResumoResultData(
      resumo: (json['resumo'] as List<dynamic>?)
          ?.map((e) => Resumo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$QrResumoResultDataToJson(QrResumoResultData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('resumo', instance.resumo);
  return val;
}

Resumo _$ResumoFromJson(Map<String, dynamic> json) => Resumo(
      status: json['status'] as String?,
      transacaoId: json['transacaoId'] as String?,
      transacaoTipo: json['transacaoTipo'] as String?,
      mensagem: json['mensagem'] as String?,
      endToEndId: json['endToEndId'] as String?,
      identificadorId: json['identificadorId'] as String?,
      sender: json['sender'] == null
          ? null
          : Sender.fromJson(json['sender'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ResumoToJson(Resumo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status', instance.status);
  writeNotNull('transacaoId', instance.transacaoId);
  writeNotNull('transacaoTipo', instance.transacaoTipo);
  writeNotNull('mensagem', instance.mensagem);
  writeNotNull('endToEndId', instance.endToEndId);
  writeNotNull('identificadorId', instance.identificadorId);
  writeNotNull('sender', instance.sender);
  return val;
}

Sender _$SenderFromJson(Map<String, dynamic> json) => Sender(
      nome: json['nome'] as String?,
      cpfCnpj: json['cpfCnpj'] as String?,
      data:
          json['data'] == null ? null : DateTime.parse(json['data'] as String),
      valor: (json['valor'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$SenderToJson(Sender instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('nome', instance.nome);
  writeNotNull('cpfCnpj', instance.cpfCnpj);
  writeNotNull('data', instance.data?.toIso8601String());
  writeNotNull('valor', instance.valor);
  return val;
}
