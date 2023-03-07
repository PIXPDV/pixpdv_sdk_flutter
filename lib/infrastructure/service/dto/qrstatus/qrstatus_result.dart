import 'package:json_annotation/json_annotation.dart';

part 'qrstatus_result.g.dart';

@JsonSerializable()
class QrStatusResult {
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'data',
  )
  QrStatusResultData? qrStatusResultData;

  QrStatusResult({
    this.qrStatusResultData,
  });

  factory QrStatusResult.fromJson(Map<String, dynamic> json) => _$QrStatusResultFromJson(json);
  Map<String, dynamic> toJson() => _$QrStatusResultToJson(this);
}

@JsonSerializable()
class QrStatusResultData {
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'status',
  )
  String? status;
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'endToEndId',
  )
  String? endToEndId;
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'identificadorId',
  )
  String? identificadorId;
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'sender',
  )
  QrStatusResultSender? sender;

  QrStatusResultData({
    this.status,
    this.endToEndId,
    this.identificadorId,
    this.sender,
  });

  factory QrStatusResultData.fromJson(Map<String, dynamic> json) => _$QrStatusResultDataFromJson(json);
  Map<String, dynamic> toJson() => _$QrStatusResultDataToJson(this);
}

@JsonSerializable()
class QrStatusResultSender {
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'nome',
  )
  String? nome;
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'cpfCnpj',
  )
  String? cpfCnpj;
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'data',
  )
  DateTime? data;
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'valor',
  )
  double? valor;

  QrStatusResultSender({
    this.nome,
    this.cpfCnpj,
    this.data,
    this.valor,
  });

  factory QrStatusResultSender.fromJson(Map<String, dynamic> json) => _$QrStatusResultSenderFromJson(json);
  Map<String, dynamic> toJson() => _$QrStatusResultSenderToJson(this);
}
