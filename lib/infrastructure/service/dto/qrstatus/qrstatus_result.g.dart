// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qrstatus_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QrStatusResult _$QrStatusResultFromJson(Map<String, dynamic> json) =>
    QrStatusResult(
      qrStatusResultData: json['data'] == null
          ? null
          : QrStatusResultData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$QrStatusResultToJson(QrStatusResult instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.qrStatusResultData);
  return val;
}

QrStatusResultData _$QrStatusResultDataFromJson(Map<String, dynamic> json) =>
    QrStatusResultData(
      status: json['status'] as String?,
      endToEndId: json['endToEndId'] as String?,
      identificadorId: json['identificadorId'] as String?,
      sender: json['sender'] == null
          ? null
          : QrStatusResultSender.fromJson(
              json['sender'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$QrStatusResultDataToJson(QrStatusResultData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status', instance.status);
  writeNotNull('endToEndId', instance.endToEndId);
  writeNotNull('identificadorId', instance.identificadorId);
  writeNotNull('sender', instance.sender);
  return val;
}

QrStatusResultSender _$QrStatusResultSenderFromJson(
        Map<String, dynamic> json) =>
    QrStatusResultSender(
      nome: json['nome'] as String?,
      cpfCnpj: json['cpfCnpj'] as String?,
      data:
          json['data'] == null ? null : DateTime.parse(json['data'] as String),
      valor: (json['valor'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$QrStatusResultSenderToJson(
    QrStatusResultSender instance) {
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
