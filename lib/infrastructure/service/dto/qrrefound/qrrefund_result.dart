import 'package:json_annotation/json_annotation.dart';

part 'qrrefund_result.g.dart';

@JsonSerializable()
class QrRefundResult {
  QrRefundResultData? qrRefundResultData;

  QrRefundResult({
    this.qrRefundResultData,
  });

  factory QrRefundResult.fromJson(Map<String, dynamic> json) => _$QrRefundResultFromJson(json);
  Map<String, dynamic> toJson() => _$QrRefundResultToJson(this);
}

@JsonSerializable()
class QrRefundResultData {
  String? refundId;

  QrRefundResultData({
    this.refundId,
  });

  factory QrRefundResultData.fromJson(Map<String, dynamic> json) => _$QrRefundResultDataFromJson(json);
  Map<String, dynamic> toJson() => _$QrRefundResultDataToJson(this);
}
