import 'package:json_annotation/json_annotation.dart';

part 'pixpdv_exception.g.dart';

@JsonSerializable()
class PixpdvException {
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'error',
  )
  PixpdvExceptionData? pixpdvExceptionData;

  PixpdvException({
    this.pixpdvExceptionData,
  });

  factory PixpdvException.fromJson(Map<String, dynamic> json) => _$PixpdvExceptionFromJson(json);
  Map<String, dynamic> toJson() => _$PixpdvExceptionToJson(this);
}

@JsonSerializable()
class PixpdvExceptionData {
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'code',
  )
  String? code;
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'description',
  )
  String? description;

  PixpdvExceptionData({
    this.code,
    this.description,
  });

  factory PixpdvExceptionData.fromJson(Map<String, dynamic> json) => _$PixpdvExceptionDataFromJson(json);
  Map<String, dynamic> toJson() => _$PixpdvExceptionDataToJson(this);
}
