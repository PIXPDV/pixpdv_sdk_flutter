// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qrdinamico_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QrDinamicoResult _$QrDinamicoResultFromJson(Map<String, dynamic> json) =>
    QrDinamicoResult(
      qrDinamicoResultData: json['data'] == null
          ? null
          : QrDinamicoResultData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$QrDinamicoResultToJson(QrDinamicoResult instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.qrDinamicoResultData);
  return val;
}

QrDinamicoResultData _$QrDinamicoResultDataFromJson(
        Map<String, dynamic> json) =>
    QrDinamicoResultData(
      qrcodeId: json['qrcodeId'] as String?,
      qrcode: json['qrcode'] as String?,
      qrcodeBase64: json['qrcodeBase64'] as String?,
    );

Map<String, dynamic> _$QrDinamicoResultDataToJson(
    QrDinamicoResultData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('qrcodeId', instance.qrcodeId);
  writeNotNull('qrcode', instance.qrcode);
  writeNotNull('qrcodeBase64', instance.qrcodeBase64);
  return val;
}
