import 'package:json_annotation/json_annotation.dart';

part 'qrdinamico_result.g.dart';

@JsonSerializable()
class QrDinamicoResult {
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'data',
  )
  QrDinamicoResultData? qrDinamicoResultData;

  QrDinamicoResult({
    this.qrDinamicoResultData,
  });

  factory QrDinamicoResult.fromJson(Map<String, dynamic> json) => _$QrDinamicoResultFromJson(json);
  Map<String, dynamic> toJson() => _$QrDinamicoResultToJson(this);
}

@JsonSerializable()
class QrDinamicoResultData {
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'qrcodeId',
  )
  String? qrcodeId;
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'qrcode',
  )
  String? qrcode;
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'qrcodeBase64',
  )
  String? qrcodeBase64;

  QrDinamicoResultData({
    this.qrcodeId,
    this.qrcode,
    this.qrcodeBase64,
  });

  factory QrDinamicoResultData.fromJson(Map<String, dynamic> json) => _$QrDinamicoResultDataFromJson(json);
  Map<String, dynamic> toJson() => _$QrDinamicoResultDataToJson(this);
}
