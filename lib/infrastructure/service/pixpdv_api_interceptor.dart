import 'package:dio/dio.dart';

class PixPDVApiInterceptor extends Interceptor {
  PixPDVApiInterceptor();

  @override
  void onResponse(
    Response response,
    ResponseInterceptorHandler handler,
  ) {
    handler.next(response);
  }

  @override
  void onError(
    DioError err,
    ErrorInterceptorHandler handler,
  ) async {
    if ([400, 401, 404, 406, 412, 500].contains(err.response?.statusCode)) {
      return handler.next(err);
    } else {
      return handler.next(err);
    }
  }
}
