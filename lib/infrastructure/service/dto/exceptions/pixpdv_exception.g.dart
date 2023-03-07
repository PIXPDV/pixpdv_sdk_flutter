// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pixpdv_exception.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PixpdvException _$PixpdvExceptionFromJson(Map<String, dynamic> json) =>
    PixpdvException(
      pixpdvExceptionData: json['error'] == null
          ? null
          : PixpdvExceptionData.fromJson(json['error'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PixpdvExceptionToJson(PixpdvException instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('error', instance.pixpdvExceptionData);
  return val;
}

PixpdvExceptionData _$PixpdvExceptionDataFromJson(Map<String, dynamic> json) =>
    PixpdvExceptionData(
      code: json['code'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$PixpdvExceptionDataToJson(PixpdvExceptionData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', instance.code);
  writeNotNull('description', instance.description);
  return val;
}
