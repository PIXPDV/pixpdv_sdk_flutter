import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'package:pixpdv_sdk/infrastructure/service/dto/export_dto.dart';

part 'pixpdv_api_service.g.dart';

@RestApi()
abstract class PixPDVApiService {
  factory PixPDVApiService(
    Dio dio, {
    String baseUrl,
  }) = _PixPDVApiService;

  static PixPDVApiService create({
    required Dio dio,
  }) {
    return PixPDVApiService(dio);
  }

  @POST('statustoken')
  Future<StatusTokenResult>? statustoken({
    @Header('Content-Type') String? contentType = 'application/json',
    @Header('Authorization') String? authorization,
    @Header('json-hash') String? jsonHash,
    @Body() StatusTokenData? body,
  });

  @POST('qrdinamico')
  Future<QrDinamicoResult>? qrdinamico({
    @Header('Content-Type') String? contentType = 'application/json',
    @Header('Authorization') String? authorization,
    @Header('json-hash') String? jsonHash,
    @Body() QrDinamicoData? body,
  });

  @POST('qrcobranca')
  Future<QrCobrancaResult>? qrcobranca({
    @Header('Content-Type') String? contentType = 'application/json',
    @Header('Authorization') String? authorization,
    @Header('json-hash') String? jsonHash,
    @Body() QrCobrancaData? body,
  });

  @GET('qrstatus')
  Future<QrStatusResult>? qrstatus({
    @Header('Content-Type') String? contentType = 'application/json',
    @Header('Authorization') String? authorization,
    @Query('qrcodeid') String? qrCodeId,
  });

  @POST('qrrefund')
  Future<QrRefundResult>? qrrefund({
    @Header('Content-Type') String? contentType = 'application/json',
    @Header('Authorization') String? authorization,
    @Header('json-hash') String? jsonHash,
    @Body() QrRefundData? body,
  });

  @GET('qrresumo')
  Future<QrResumoResult>? qrresumo({
    @Header('Content-Type') String? contentType = 'application/json',
    @Header('Authorization') String? authorization,
    @Query('inicio') String? inicio,
    @Query('fim') String? fim,
    @Query('tipo') String? tipo,
  });

  @GET('saldo')
  Future<SaldoResult>? saldo({
    @Header('Content-Type') String? contentType = 'application/json',
    @Header('Authorization') String? authorization,
  });

  @POST('retirada')
  Future<RetiradaResult>? retirada({
    @Header('Content-Type') String? contentType = 'application/json',
    @Header('Authorization') String? authorization,
    @Header('json-hash') String? jsonHash,
    @Body() RetiradaData? body,
  });

  @GET('extrato')
  Future<ExtratoResult>? extrato({
    @Header('Content-Type') String? contentType = 'application/json',
    @Header('Authorization') String? authorization,
    @Query('inicio') String? inicio,
    @Query('fim') String? fim,
  });

  @POST('qrSimulateApproved')
  Future<QrSimulateResult>? qrsimulateapproved({
    @Header('Content-Type') String? contentType = 'application/json',
    @Header('Authorization') String? authorization,
    @Header('json-hash') String? jsonHash,
    @Body() QrSimulateData? body,
  });

  @POST('qrSimulateExpired')
  Future<QrSimulateResult>? qrsimulateexpired({
    @Header('Content-Type') String? contentType = 'application/json',
    @Header('Authorization') String? authorization,
    @Header('json-hash') String? jsonHash,
    @Body() QrSimulateData? body,
  });
}
