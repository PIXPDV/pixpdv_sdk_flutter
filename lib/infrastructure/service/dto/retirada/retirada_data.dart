import 'package:json_annotation/json_annotation.dart';

part 'retirada_data.g.dart';

@JsonSerializable()
class RetiradaData {
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'valor',
  )
  double? valor;

  RetiradaData({
    this.valor,
  });

  factory RetiradaData.fromJson(Map<String, dynamic> json) => _$RetiradaDataFromJson(json);
  Map<String, dynamic> toJson() => _$RetiradaDataToJson(this);
}
