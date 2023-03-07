import 'package:json_annotation/json_annotation.dart';

part 'status_token_data.g.dart';

@JsonSerializable()
class StatusTokenData {
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'cnpj',
  )
  String? cnpj;

  StatusTokenData({
    this.cnpj,
  });

  factory StatusTokenData.fromJson(Map<String, dynamic> json) => _$StatusTokenDataFromJson(json);
  Map<String, dynamic> toJson() => _$StatusTokenDataToJson(this);
}
