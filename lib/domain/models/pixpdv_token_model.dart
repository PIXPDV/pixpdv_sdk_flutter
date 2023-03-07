// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:crypto/crypto.dart';

import '../../common/types/pixpdv_enviroment.dart';

class PixPDVTokenModel {
  PixPDVEnviroment enviroment;
  String userName;
  String password;
  String secretKey;

  PixPDVTokenModel({
    required this.enviroment,
    required this.userName,
    required this.password,
    required this.secretKey,
  });

  String get baseUrl {
    switch (enviroment) {
      case PixPDVEnviroment.producao:
        return 'https://pixpdv.com.br/api/v1/';
      case PixPDVEnviroment.homologacao:
        return 'https://pixpdv.com.br/api-h/v1/';
      default:
        return 'https://pixpdv.com.br/api-h/v1/';
    }
  }

  String getBasicAuth() {
    return 'Basic ${base64Encode(
      utf8.encode('$userName:$password'),
    )}';
  }

  String getHmacHeader(String bodyStr) {
    var key = utf8.encode(secretKey);
    var bytes = utf8.encode(bodyStr);
    var hmacSha256 = Hmac(sha256, key);
    var digest = hmacSha256.convert(bytes);

    return digest.toString();
  }

  PixPDVTokenModel copyWith({
    PixPDVEnviroment? enviroment,
    String? userName,
    String? password,
    String? secretKey,
  }) {
    return PixPDVTokenModel(
      enviroment: enviroment ?? this.enviroment,
      userName: userName ?? this.userName,
      password: password ?? this.password,
      secretKey: secretKey ?? this.secretKey,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enviroment': enviroment.display(),
      'userName': userName,
      'password': password,
      'secretKey': secretKey,
    };
  }

  factory PixPDVTokenModel.fromMap(Map<String, dynamic> map) {
    return PixPDVTokenModel(
      enviroment: pixPDVEnviromentFromString(map['enviroment'] as String),
      userName: map['userName'] as String,
      password: map['password'] as String,
      secretKey: map['secretKey'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory PixPDVTokenModel.fromJson(String source) =>
      PixPDVTokenModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'PixPDVTokenModel(enviroment: $enviroment, userName: $userName, password: $password, secretKey: $secretKey)';
  }

  @override
  bool operator ==(covariant PixPDVTokenModel other) {
    if (identical(this, other)) return true;

    return other.enviroment == enviroment &&
        other.userName == userName &&
        other.password == password &&
        other.secretKey == secretKey;
  }

  @override
  int get hashCode {
    return enviroment.hashCode ^ userName.hashCode ^ password.hashCode ^ secretKey.hashCode;
  }
}
