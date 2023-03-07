// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qrcobranca_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QrCobrancaResult _$QrCobrancaResultFromJson(Map<String, dynamic> json) =>
    QrCobrancaResult(
      qrCobrancaResultData: json['data'] == null
          ? null
          : QrCobrancaResultData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$QrCobrancaResultToJson(QrCobrancaResult instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.qrCobrancaResultData);
  return val;
}

QrCobrancaResultData _$QrCobrancaResultDataFromJson(
        Map<String, dynamic> json) =>
    QrCobrancaResultData(
      qrcodeId: json['qrcodeId'] as String?,
      qrcode: json['qrcode'] as String?,
      qrcodeBase64: json['qrcodeBase64'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$QrCobrancaResultDataToJson(
    QrCobrancaResultData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('qrcodeId', instance.qrcodeId);
  writeNotNull('qrcode', instance.qrcode);
  writeNotNull('qrcodeBase64', instance.qrcodeBase64);
  writeNotNull('url', instance.url);
  return val;
}
