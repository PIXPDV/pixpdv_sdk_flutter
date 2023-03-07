import 'package:json_annotation/json_annotation.dart';

part 'qrresumo_result.g.dart';

@JsonSerializable()
class QrResumoResult {
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'data',
  )
  QrResumoResultData? qrResumoResultData;

  QrResumoResult({
    this.qrResumoResultData,
  });

  factory QrResumoResult.fromJson(Map<String, dynamic> json) => _$QrResumoResultFromJson(json);
  Map<String, dynamic> toJson() => _$QrResumoResultToJson(this);
}

@JsonSerializable()
class QrResumoResultData {
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'resumo',
  )
  List<Resumo>? resumo;

  QrResumoResultData({
    this.resumo,
  });

  factory QrResumoResultData.fromJson(Map<String, dynamic> json) => _$QrResumoResultDataFromJson(json);
  Map<String, dynamic> toJson() => _$QrResumoResultDataToJson(this);
}

@JsonSerializable()
class Resumo {
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'status',
  )
  String? status;
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'transacaoId',
  )
  String? transacaoId;
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'transacaoTipo',
  )
  String? transacaoTipo;
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'mensagem',
  )
  String? mensagem;
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
  Sender? sender;

  Resumo({
    this.status,
    this.transacaoId,
    this.transacaoTipo,
    this.mensagem,
    this.endToEndId,
    this.identificadorId,
    this.sender,
  });

  factory Resumo.fromJson(Map<String, dynamic> json) => _$ResumoFromJson(json);
  Map<String, dynamic> toJson() => _$ResumoToJson(this);
}

@JsonSerializable()
class Sender {
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

  Sender({
    this.nome,
    this.cpfCnpj,
    this.data,
    this.valor,
  });

  factory Sender.fromJson(Map<String, dynamic> json) => _$SenderFromJson(json);
  Map<String, dynamic> toJson() => _$SenderToJson(this);
}
