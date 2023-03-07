import 'package:json_annotation/json_annotation.dart';

part 'qrcobranca_result.g.dart';

@JsonSerializable()
class QrCobrancaResult {
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'data',
  )
  QrCobrancaResultData? qrCobrancaResultData;

  QrCobrancaResult({
    this.qrCobrancaResultData,
  });

  factory QrCobrancaResult.fromJson(Map<String, dynamic> json) => _$QrCobrancaResultFromJson(json);
  Map<String, dynamic> toJson() => _$QrCobrancaResultToJson(this);
}

@JsonSerializable()
class QrCobrancaResultData {
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
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'url',
  )
  String? url;

  QrCobrancaResultData({
    this.qrcodeId,
    this.qrcode,
    this.qrcodeBase64,
    this.url,
  });

  factory QrCobrancaResultData.fromJson(Map<String, dynamic> json) => _$QrCobrancaResultDataFromJson(json);
  Map<String, dynamic> toJson() => _$QrCobrancaResultDataToJson(this);
}
