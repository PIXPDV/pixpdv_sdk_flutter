import 'package:json_annotation/json_annotation.dart';

part 'qrrefund_data.g.dart';

@JsonSerializable()
class QrRefundData {
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'qrcodeId',
  )
  String? qrcodeId;

  QrRefundData({
    this.qrcodeId,
  });

  factory QrRefundData.fromJson(Map<String, dynamic> json) => _$QrRefundDataFromJson(json);
  Map<String, dynamic> toJson() => _$QrRefundDataToJson(this);
}
