import 'dart:convert';

import 'package:dio/dio.dart';
import '../service/dto/export_dto.dart';
import '../../domain/models/pixpdv_token_model.dart';
import '../../common/helpers/helpers_qrresumo.dart';
import '../service/pixpdv_api_service.dart';

class PixPDVRepository {
  PixPDVApiService service;
  PixPDVTokenModel token;

  PixPDVRepository({
    required this.service,
    required this.token,
  });

  Future<StatusTokenResult> statustoken({
    required StatusTokenData bodyData,
  }) async {
    try {
      var retorno = await service.statustoken(
        contentType: 'application/json',
        authorization: token.getBasicAuth(),
        jsonHash: token.getHmacHeader(
          json.encode(
            bodyData.toJson(),
          ),
        ),
        body: bodyData,
      );

      return retorno!;
    } on DioError catch (e) {
      throw PixpdvExceptionData(
        code: e.response!.data['error']['code'].toString(),
        description: e.response!.data['error']['description'],
      );
    }
  }

  Future<QrDinamicoResult> qrdinamico({
    required QrDinamicoData bodyData,
  }) async {
    try {
      var retorno = await service.qrdinamico(
        contentType: 'application/json',
        authorization: token.getBasicAuth(),
        jsonHash: token.getHmacHeader(
          json.encode(
            bodyData.toJson(),
          ),
        ),
        body: bodyData,
      );

      return retorno!;
    } on DioError catch (e) {
      throw PixpdvExceptionData(
        code: e.response!.data['error']['code'].toString(),
        description: e.response!.data['error']['description'],
      );
    }
  }

  Future<QrCobrancaResult> qrcobranca({
    required QrCobrancaData bodyData,
  }) async {
    try {
      var retorno = await service.qrcobranca(
        contentType: 'application/json',
        authorization: token.getBasicAuth(),
        jsonHash: token.getHmacHeader(
          json.encode(
            bodyData.toJson(),
          ),
        ),
        body: bodyData,
      );

      return retorno!;
    } on DioError catch (e) {
      throw PixpdvExceptionData(
        code: e.response!.data['error']['code'].toString(),
        description: e.response!.data['error']['description'],
      );
    }
  }

  Future<QrStatusResult> qrstatus({
    required String qrCodeId,
  }) async {
    try {
      var retorno = await service.qrstatus(
        contentType: 'application/json',
        authorization: token.getBasicAuth(),
        qrCodeId: qrCodeId,
      );

      return retorno!;
    } on DioError catch (e) {
      throw PixpdvExceptionData(
        code: e.response!.data['error']['code'].toString(),
        description: e.response!.data['error']['description'],
      );
    }
  }

  Future<QrRefundResult> qrrefund({
    required QrRefundData bodyData,
  }) async {
    try {
      var retorno = await service.qrrefund(
        contentType: 'application/json',
        authorization: token.getBasicAuth(),
        jsonHash: token.getHmacHeader(
          json.encode(
            bodyData.toJson(),
          ),
        ),
        body: bodyData,
      );

      return retorno!;
    } on DioError catch (e) {
      throw PixpdvExceptionData(
        code: e.response!.data['error']['code'].toString(),
        description: e.response!.data['error']['description'],
      );
    }
  }

  Future<QrResumoResult> qrresumo({
    required String inicio,
    required String fim,
    required QrResumoTipo tipo,
  }) async {
    try {
      var retorno = await service.qrresumo(
        contentType: 'application/json',
        authorization: token.getBasicAuth(),
        inicio: inicio,
        fim: fim,
        tipo: tipo.value,
      );

      return retorno!;
    } on DioError catch (e) {
      throw PixpdvExceptionData(
        code: e.response!.data['error']['code'].toString(),
        description: e.response!.data['error']['description'],
      );
    }
  }

  Future<SaldoResult> saldo() async {
    try {
      var retorno = await service.saldo(
        contentType: 'application/json',
        authorization: token.getBasicAuth(),
      );

      return retorno!;
    } on DioError catch (e) {
      throw PixpdvExceptionData(
        code: e.response!.data['error']['code'].toString(),
        description: e.response!.data['error']['description'],
      );
    }
  }

  Future<RetiradaResult> retirada({
    required RetiradaData bodyData,
  }) async {
    try {
      var retorno = await service.retirada(
        contentType: 'application/json',
        authorization: token.getBasicAuth(),
        jsonHash: token.getHmacHeader(
          json.encode(
            bodyData.toJson(),
          ),
        ),
        body: bodyData,
      );

      return retorno!;
    } on DioError catch (e) {
      throw PixpdvExceptionData(
        code: e.response!.data['error']['code'].toString(),
        description: e.response!.data['error']['description'],
      );
    }
  }

  Future<ExtratoResult> extrato({
    required String inicio,
    required String fim,
  }) async {
    try {
      var retorno = await service.extrato(
        contentType: 'application/json',
        authorization: token.getBasicAuth(),
        inicio: inicio,
        fim: fim,
      );

      return retorno!;
    } on DioError catch (e) {
      throw PixpdvExceptionData(
        code: e.response!.data['error']['code'].toString(),
        description: e.response!.data['error']['description'],
      );
    }
  }

  Future<QrSimulateResult> qrSimulateApproved({
    required QrSimulateData bodyData,
  }) async {
    try {
      var retorno = await service.qrsimulateapproved(
        contentType: 'application/json',
        authorization: token.getBasicAuth(),
        jsonHash: token.getHmacHeader(
          json.encode(
            bodyData.toJson(),
          ),
        ),
        body: bodyData,
      );

      return retorno!;
    } on DioError catch (e) {
      throw PixpdvExceptionData(
        code: e.response!.data['error']['code'].toString(),
        description: e.response!.data['error']['description'],
      );
    }
  }

  Future<QrSimulateResult> qrSimulateExpired({
    required QrSimulateData bodyData,
  }) async {
    try {
      var retorno = await service.qrsimulateexpired(
        contentType: 'application/json',
        authorization: token.getBasicAuth(),
        jsonHash: token.getHmacHeader(
          json.encode(
            bodyData.toJson(),
          ),
        ),
        body: bodyData,
      );

      return retorno!;
    } on DioError catch (e) {
      throw PixpdvExceptionData(
        code: e.response!.data['error']['code'].toString(),
        description: e.response!.data['error']['description'],
      );
    }
  }
}
