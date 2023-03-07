// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qrsimulate_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QrSimulateResult _$QrSimulateResultFromJson(Map<String, dynamic> json) =>
    QrSimulateResult(
      qrSimulateResultData: json['qrSimulateResultData'] == null
          ? null
          : QrSimulateResultData.fromJson(
              json['qrSimulateResultData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$QrSimulateResultToJson(QrSimulateResult instance) =>
    <String, dynamic>{
      'qrSimulateResultData': instance.qrSimulateResultData,
    };

QrSimulateResultData _$QrSimulateResultDataFromJson(
        Map<String, dynamic> json) =>
    QrSimulateResultData(
      status: json['status'] as String?,
    );

Map<String, dynamic> _$QrSimulateResultDataToJson(
        QrSimulateResultData instance) =>
    <String, dynamic>{
      'status': instance.status,
    };
