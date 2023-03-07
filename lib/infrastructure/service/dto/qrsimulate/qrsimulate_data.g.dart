// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qrsimulate_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QrSimulateData _$QrSimulateDataFromJson(Map<String, dynamic> json) =>
    QrSimulateData(
      qrcodeId: json['qrcodeId'] as String?,
    );

Map<String, dynamic> _$QrSimulateDataToJson(QrSimulateData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('qrcodeId', instance.qrcodeId);
  return val;
}
