// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qrrefund_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QrRefundResult _$QrRefundResultFromJson(Map<String, dynamic> json) =>
    QrRefundResult(
      qrRefundResultData: json['qrRefundResultData'] == null
          ? null
          : QrRefundResultData.fromJson(
              json['qrRefundResultData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$QrRefundResultToJson(QrRefundResult instance) =>
    <String, dynamic>{
      'qrRefundResultData': instance.qrRefundResultData,
    };

QrRefundResultData _$QrRefundResultDataFromJson(Map<String, dynamic> json) =>
    QrRefundResultData(
      refundId: json['refundId'] as String?,
    );

Map<String, dynamic> _$QrRefundResultDataToJson(QrRefundResultData instance) =>
    <String, dynamic>{
      'refundId': instance.refundId,
    };
