import 'package:json_annotation/json_annotation.dart';

part 'retirada_result.g.dart';

@JsonSerializable()
class RetiradaResult {
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'data',
  )
  RetiradaResultData? retiradaResultData;

  RetiradaResult({
    this.retiradaResultData,
  });

  factory RetiradaResult.fromJson(Map<String, dynamic> json) => _$RetiradaResultFromJson(json);
  Map<String, dynamic> toJson() => _$RetiradaResultToJson(this);
}

@JsonSerializable()
class RetiradaResultData {
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'transacaoId',
  )
  String? transacaoId;
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'endToEndId',
  )
  String? endToEndId;
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'pspId',
  )
  String? pspId;
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'pspNome',
  )
  String? pspNome;
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'agencia',
  )
  String? agencia;
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'conta',
  )
  String? conta;
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'contaNome',
  )
  String? contaNome;
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'contaTipo',
  )
  String? contaTipo;

  RetiradaResultData({
    this.transacaoId,
    this.endToEndId,
    this.pspId,
    this.pspNome,
    this.agencia,
    this.conta,
    this.contaNome,
    this.contaTipo,
  });

  factory RetiradaResultData.fromJson(Map<String, dynamic> json) => _$RetiradaResultDataFromJson(json);
  Map<String, dynamic> toJson() => _$RetiradaResultDataToJson(this);
}
