import 'package:json_annotation/json_annotation.dart';

part 'saldo_result.g.dart';

@JsonSerializable()
class SaldoResult {
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'data',
  )
  SaldoResultData? saldoResultData;

  SaldoResult({
    this.saldoResultData,
  });

  factory SaldoResult.fromJson(Map<String, dynamic> json) => _$SaldoResultFromJson(json);
  Map<String, dynamic> toJson() => _$SaldoResultToJson(this);
}

@JsonSerializable()
class SaldoResultData {
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'total',
  )
  double? total;
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'disponivel',
  )
  double? disponivel;
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'bloqueado',
  )
  double? bloqueado;

  SaldoResultData({
    this.total,
    this.disponivel,
    this.bloqueado,
  });

  factory SaldoResultData.fromJson(Map<String, dynamic> json) => _$SaldoResultDataFromJson(json);
  Map<String, dynamic> toJson() => _$SaldoResultDataToJson(this);
}
