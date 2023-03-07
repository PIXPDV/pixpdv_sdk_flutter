import 'package:dio/dio.dart';
import 'package:pixpdv_sdk/pixpdv_sdk.dart';

class PixPDVExampleController {
  late PixPdvSdk pixPdvSdk;

  PixPDVExampleController({
    required Dio dio,
    required PixPDVTokenModel token,
  }) {
    pixPdvSdk = PixPdvSdk(
      dio: dio,
      token: token,
    );
  }
}
