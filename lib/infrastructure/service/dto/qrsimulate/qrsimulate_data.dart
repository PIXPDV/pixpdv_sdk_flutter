import 'package:json_annotation/json_annotation.dart';

part 'qrsimulate_data.g.dart';

@JsonSerializable()
class QrSimulateData {
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'qrcodeId',
  )
  String? qrcodeId;

  QrSimulateData({
    this.qrcodeId,
  });

  factory QrSimulateData.fromJson(Map<String, dynamic> json) => _$QrSimulateDataFromJson(json);
  Map<String, dynamic> toJson() => _$QrSimulateDataToJson(this);
}
