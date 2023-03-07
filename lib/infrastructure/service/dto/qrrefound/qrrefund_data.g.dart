// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qrrefund_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QrRefundData _$QrRefundDataFromJson(Map<String, dynamic> json) => QrRefundData(
      qrcodeId: json['qrcodeId'] as String?,
    );

Map<String, dynamic> _$QrRefundDataToJson(QrRefundData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('qrcodeId', instance.qrcodeId);
  return val;
}
