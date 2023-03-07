import 'package:json_annotation/json_annotation.dart';

part 'qrsimulate_result.g.dart';

@JsonSerializable()
class QrSimulateResult {
  QrSimulateResultData? qrSimulateResultData;

  QrSimulateResult({
    this.qrSimulateResultData,
  });

  factory QrSimulateResult.fromJson(Map<String, dynamic> json) => _$QrSimulateResultFromJson(json);
  Map<String, dynamic> toJson() => _$QrSimulateResultToJson(this);
}

@JsonSerializable()
class QrSimulateResultData {
  String? status;

  QrSimulateResultData({
    this.status,
  });

  factory QrSimulateResultData.fromJson(Map<String, dynamic> json) => _$QrSimulateResultDataFromJson(json);
  Map<String, dynamic> toJson() => _$QrSimulateResultDataToJson(this);
}
