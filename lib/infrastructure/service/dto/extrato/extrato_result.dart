import 'package:json_annotation/json_annotation.dart';

part 'extrato_result.g.dart';

@JsonSerializable()
class ExtratoResult {
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'data',
  )
  ExtratoResultData? extratoResultData;

  ExtratoResult({
    this.extratoResultData,
  });

  factory ExtratoResult.fromJson(Map<String, dynamic> json) => _$ExtratoResultFromJson(json);
  Map<String, dynamic> toJson() => _$ExtratoResultToJson(this);
}

@JsonSerializable()
class ExtratoResultData {
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'extrato',
  )
  List<Extrato>? extrato;

  ExtratoResultData({
    this.extrato,
  });

  factory ExtratoResultData.fromJson(Map<String, dynamic> json) => _$ExtratoResultDataFromJson(json);
  Map<String, dynamic> toJson() => _$ExtratoResultDataToJson(this);
}

@JsonSerializable()
class Extrato {
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
    name: 'descricao',
  )
  String? descricao;
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
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'tipo',
  )
  String? tipo;

  Extrato({
    this.transacaoId,
    this.transacaoTipo,
    this.descricao,
    this.data,
    this.valor,
    this.tipo,
  });

  factory Extrato.fromJson(Map<String, dynamic> json) => _$ExtratoFromJson(json);
  Map<String, dynamic> toJson() => _$ExtratoToJson(this);
}
