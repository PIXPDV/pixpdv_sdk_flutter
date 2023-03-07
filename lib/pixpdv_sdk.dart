library pixpdv_sdk;

import 'package:dio/dio.dart';
import 'common/helpers/helpers_qrresumo.dart';
import 'domain/models/pixpdv_token_model.dart';
import 'infrastructure/repository/pixpdv_repository.dart';
import 'infrastructure/service/dto/extrato/extrato_result.dart';
import 'infrastructure/service/dto/qrcobranca/qrcobranca_data.dart';
import 'infrastructure/service/dto/qrcobranca/qrcobranca_result.dart';
import 'infrastructure/service/dto/qrdinamico/qrdinamico_data.dart';
import 'infrastructure/service/dto/qrdinamico/qrdinamico_result.dart';
import 'infrastructure/service/dto/qrrefound/qrrefund_data.dart';
import 'infrastructure/service/dto/qrrefound/qrrefund_result.dart';
import 'infrastructure/service/dto/qrresumo/qrresumo_result.dart';
import 'infrastructure/service/dto/qrsimulate/qrsimulate_data.dart';
import 'infrastructure/service/dto/qrsimulate/qrsimulate_result.dart';
import 'infrastructure/service/dto/qrstatus/qrstatus_result.dart';
import 'infrastructure/service/dto/retirada/retirada_data.dart';
import 'infrastructure/service/dto/retirada/retirada_result.dart';
import 'infrastructure/service/dto/saldo/saldo_result.dart';
import 'infrastructure/service/dto/status_token/status_token_data.dart';
import 'infrastructure/service/dto/status_token/status_token_result.dart';
import 'infrastructure/service/pixpdv_api_service.dart';

export 'common/helpers/helpers_qrcobranca.dart';
export 'common/helpers/helpers_qrresumo.dart';
export 'common/helpers/helpers_string_functions.dart';
export 'common/helpers/helpers_string.dart';
export 'common/types/pixpdv_enviroment.dart';
export 'domain/models/pixpdv_token_model.dart';
export 'infrastructure/repository/pixpdv_repository.dart';
export 'infrastructure/service/dto/extrato/extrato_result.dart';
export 'infrastructure/service/dto/qrcobranca/qrcobranca_data.dart';
export 'infrastructure/service/dto/qrcobranca/qrcobranca_result.dart';
export 'infrastructure/service/dto/qrdinamico/qrdinamico_data.dart';
export 'infrastructure/service/dto/qrdinamico/qrdinamico_result.dart';
export 'infrastructure/service/dto/qrrefound/qrrefund_data.dart';
export 'infrastructure/service/dto/qrrefound/qrrefund_result.dart';
export 'infrastructure/service/dto/qrresumo/qrresumo_result.dart';
export 'infrastructure/service/dto/qrsimulate/qrsimulate_data.dart';
export 'infrastructure/service/dto/qrsimulate/qrsimulate_result.dart';
export 'infrastructure/service/dto/qrstatus/qrstatus_result.dart';
export 'infrastructure/service/dto/retirada/retirada_data.dart';
export 'infrastructure/service/dto/retirada/retirada_result.dart';
export 'infrastructure/service/dto/saldo/saldo_result.dart';
export 'infrastructure/service/dto/status_token/status_token_data.dart';
export 'infrastructure/service/dto/status_token/status_token_result.dart';
export 'infrastructure/service/pixpdv_api_service.dart';

class PixPdvSdk {
  Dio dio;
  PixPDVTokenModel token;

  late PixPDVRepository _pixPDVRepository;

  PixPdvSdk({
    required this.dio,
    required this.token,
  }) {
    _pixPDVRepository = PixPDVRepository(
      service: PixPDVApiService(
        dio,
        baseUrl: token.baseUrl,
      ),
      token: token,
    );
  }

  Future<StatusTokenResult> statustoken({
    required StatusTokenData bodyData,
  }) async {
    return await _pixPDVRepository.statustoken(
      bodyData: bodyData,
    );
  }

  Future<QrDinamicoResult> qrdinamico({
    required QrDinamicoData bodyData,
  }) async {
    return await _pixPDVRepository.qrdinamico(
      bodyData: bodyData,
    );
  }

  Future<QrCobrancaResult> qrcobranca({
    required QrCobrancaData bodyData,
  }) async {
    return await _pixPDVRepository.qrcobranca(
      bodyData: bodyData,
    );
  }

  Future<QrStatusResult> qrstatus({
    required String qrCodeId,
  }) async {
    return await _pixPDVRepository.qrstatus(
      qrCodeId: qrCodeId,
    );
  }

  Future<QrSimulateResult> qrSimulateApproved({
    required QrSimulateData bodyData,
  }) async {
    return await _pixPDVRepository.qrSimulateApproved(
      bodyData: bodyData,
    );
  }

  Future<QrSimulateResult> qrSimulateExpired({
    required QrSimulateData bodyData,
  }) async {
    return await _pixPDVRepository.qrSimulateExpired(
      bodyData: bodyData,
    );
  }

  Future<QrRefundResult> qrrefund({
    required QrRefundData bodyData,
  }) async {
    return await _pixPDVRepository.qrrefund(
      bodyData: bodyData,
    );
  }

  Future<QrResumoResult> qrresumo({
    required String inicio,
    required String fim,
    required QrResumoTipo tipo,
  }) async {
    return await _pixPDVRepository.qrresumo(
      inicio: inicio,
      fim: fim,
      tipo: tipo,
    );
  }

  Future<SaldoResult> saldo() async {
    return await _pixPDVRepository.saldo();
  }

  Future<RetiradaResult> retirada({
    required RetiradaData bodyData,
  }) async {
    return await _pixPDVRepository.retirada(
      bodyData: bodyData,
    );
  }

  Future<ExtratoResult> extrato({
    required String inicio,
    required String fim,
  }) async {
    return await _pixPDVRepository.extrato(
      inicio: inicio,
      fim: fim,
    );
  }
}
