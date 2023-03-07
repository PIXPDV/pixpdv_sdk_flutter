import 'package:json_annotation/json_annotation.dart';

part 'status_token_result.g.dart';

@JsonSerializable()
class StatusTokenResult {
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'data',
  )
  StatusTokenResultData? statusTokenResultData;

  StatusTokenResult({
    this.statusTokenResultData,
  });

  factory StatusTokenResult.fromJson(Map<String, dynamic> json) => _$StatusTokenResultFromJson(json);
  Map<String, dynamic> toJson() => _$StatusTokenResultToJson(this);
}

@JsonSerializable()
class StatusTokenResultData {
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'cnpj',
  )
  String? cnpj;
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'nome',
  )
  String? nome;
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'fantasia',
  )
  String? fantasia;

  StatusTokenResultData({
    this.cnpj,
    this.nome,
    this.fantasia,
  });

  factory StatusTokenResultData.fromJson(Map<String, dynamic> json) => _$StatusTokenResultDataFromJson(json);
  Map<String, dynamic> toJson() => _$StatusTokenResultDataToJson(this);
}
