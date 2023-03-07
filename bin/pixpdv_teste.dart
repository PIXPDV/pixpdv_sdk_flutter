// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:pixpdv_sdk/pixpdv_sdk.dart';

void main() async {
  PixPdvSdk pixPdvSdk = PixPdvSdk(
    dio: Dio(),
    token: PixPDVTokenModel(
      enviroment: PixPDVEnviroment.homologacao,
      userName: '00641418000188',
      password: 'tk-ezI0OTgwMzRDLUE1MzctNDM3QS1CQTk0LUZFODlFMEE0MzIyNn0',
      secretKey: 'sk-e0JBNTFGRTY0LTczMkYtNDYxNC1CQ0Q1LUI0OTVDODgxOTUwRX0',
    ),
  );

  StatusTokenResult statustoken = await pixPdvSdk.statustoken(
    bodyData: StatusTokenData(
      cnpj: '00641418000188',
    ),
  );

  print('\n');
  print('- - - - - - - - - - - - - - - - - - - - - - -');
  print('EndPoint: statustoken');
  print('- - - - - - - - - - - - - - - - - - - - - - -');
  print('Cnpj: ${statustoken.statusTokenResultData?.cnpj}');
  print('Nome: ${statustoken.statusTokenResultData?.nome}');
  print('Fantasia: ${statustoken.statusTokenResultData?.fantasia}');
  print('- - - - - - - - - - - - - - - - - - - - - - -');
  print('\n');

  QrDinamicoResult qrdinamico = await pixPdvSdk.qrdinamico(
    bodyData: QrDinamicoData(
      valor: 10.19,
      minutos: 5,
      mensagem: 'Teste de QRCODE Dinamico',
      imagem: false,
    ),
  );

  print('\n');
  print('- - - - - - - - - - - - - - - - - - - - - - -');
  print('EndPoint: qrdinamico');
  print('- - - - - - - - - - - - - - - - - - - - - - -');
  print('qrcode: ${qrdinamico.qrDinamicoResultData?.qrcode}');
  print('qrcodeBase64: ${qrdinamico.qrDinamicoResultData?.qrcodeBase64}');
  print('qrcodeId: ${qrdinamico.qrDinamicoResultData?.qrcodeId}');
  print('- - - - - - - - - - - - - - - - - - - - - - -');
  print('\n');

  QrCobrancaResult qrcobranca = await pixPdvSdk.qrcobranca(
    bodyData: QrCobrancaData(
      valor: 123.87,
      vencimento: '10/03/2023',
      expira: 5,
      mensagem: 'Teste de QRCODE Cobranca',
      imagem: false,
      documento: '1234567890',
      pagador: Pagador(
        nome: 'Teste',
        fantasia: 'Teste',
        cpfCnpj: '12345678901',
        endereco: 'Rua Emilio Bertoni, 1645',
        bairro: 'Jardim das Flores',
        cidade: 'São Paulo',
        estado: 'SP',
        cep: '12345678',
        email: 'teste@teste.com.br',
        telefone: '11999999999',
      ),
      juros: Juros(
        tipo: QrCobrancaTipoJuros.valorDiasUteis,
        valor: 1.99,
      ),
      multa: Multa(
        tipo: QrCobrancaTipoMulta.fixo,
        valor: 5.60,
      ),
      desconto: Desconto(
        tipo: QrCobrancaTipoDesconto.fixo,
        valor: 15.78,
        data: '10/03/2023',
      ),
    ),
  );

  print('\n');
  print('- - - - - - - - - - - - - - - - - - - - - - -');
  print('EndPoint: qrcobranca');
  print('- - - - - - - - - - - - - - - - - - - - - - -');
  print('qrcodeId: ${qrcobranca.qrCobrancaResultData?.qrcodeId}');
  print('qrcode: ${qrcobranca.qrCobrancaResultData?.qrcode}');
  print('qrcodeBase64: ${qrcobranca.qrCobrancaResultData?.qrcodeBase64}');
  print('url: ${qrcobranca.qrCobrancaResultData?.url}');
  print('- - - - - - - - - - - - - - - - - - - - - - -');
  print('\n');

  QrStatusResult qrstatus = await pixPdvSdk.qrstatus(
    qrCodeId: qrdinamico.qrDinamicoResultData!.qrcodeId!,
  );

  print('\n');
  print('- - - - - - - - - - - - - - - - - - - - - - -');
  print('EndPoint: qrstatus');
  print('- - - - - - - - - - - - - - - - - - - - - - -');
  print('status: ${qrstatus.qrStatusResultData?.status}');
  print('endToEndId: ${qrstatus.qrStatusResultData?.endToEndId}');
  print('identificadorId: ${qrstatus.qrStatusResultData?.identificadorId}');
  print('sender: ${qrstatus.qrStatusResultData?.sender}');
  print('- - - - - - - - - - - - - - - - - - - - - - -');
  print('\n');

  QrSimulateResult qrsimulateapproved = await pixPdvSdk.qrSimulateApproved(
    bodyData: QrSimulateData(
      qrcodeId: qrdinamico.qrDinamicoResultData!.qrcodeId!,
    ),
  );

  print('\n');
  print('- - - - - - - - - - - - - - - - - - - - - - -');
  print('EndPoint: qrsimulateapproved');
  print('- - - - - - - - - - - - - - - - - - - - - - -');
  print('status: ${qrsimulateapproved.qrSimulateResultData?.status}');
  print('- - - - - - - - - - - - - - - - - - - - - - -');
  print('\n');

  QrRefundResult qrrefund = await pixPdvSdk.qrrefund(
    bodyData: QrRefundData(
      qrcodeId: qrdinamico.qrDinamicoResultData!.qrcodeId!,
    ),
  );

  print('\n');
  print('- - - - - - - - - - - - - - - - - - - - - - -');
  print('EndPoint: qrrefund');
  print('- - - - - - - - - - - - - - - - - - - - - - -');
  print('refundId: ${qrrefund.qrRefundResultData?.refundId}');
  print('- - - - - - - - - - - - - - - - - - - - - - -');
  print('\n');

  QrResumoResult qrresumo = await pixPdvSdk.qrresumo(
    tipo: QrResumoTipo.emissao,
    inicio: '01012023',
    fim: '31122023',
  );

  print('\n');
  print('- - - - - - - - - - - - - - - - - - - - - - -');
  print('EndPoint: qrresumo');
  print('- - - - - - - - - - - - - - - - - - - - - - -');
  for (Resumo data in qrresumo.qrResumoResultData!.resumo!) {
    print('resumo: ${data.toJson()}');
    print('resumo: ${data.sender?.toJson()}');
  }
  print('- - - - - - - - - - - - - - - - - - - - - - -');
  print('\n');

  SaldoResult saldo = await pixPdvSdk.saldo();

  print('\n');
  print('- - - - - - - - - - - - - - - - - - - - - - -');
  print('EndPoint: saldo');
  print('- - - - - - - - - - - - - - - - - - - - - - -');
  print('total: ${saldo.saldoResultData?.total?.toStringAsFixed(2)}');
  print('disponivel: ${saldo.saldoResultData?.disponivel?.toStringAsFixed(2)}');
  print('bloqueado: ${saldo.saldoResultData?.bloqueado?.toStringAsFixed(2)}');
  print('- - - - - - - - - - - - - - - - - - - - - - -');
  print('\n');

  RetiradaResult retirada = await pixPdvSdk.retirada(
    bodyData: RetiradaData(
      valor: 10.99,
    ),
  );

  print('\n');
  print('- - - - - - - - - - - - - - - - - - - - - - -');
  print('EndPoint: retirada');
  print('- - - - - - - - - - - - - - - - - - - - - - -');
  print('transacaoId: ${retirada.retiradaResultData?.transacaoId}');
  print('endToEndId: ${retirada.retiradaResultData?.endToEndId}');
  print('pspId: ${retirada.retiradaResultData?.pspId}');
  print('pspNome: ${retirada.retiradaResultData?.pspNome}');
  print('agencia: ${retirada.retiradaResultData?.agencia}');
  print('conta: ${retirada.retiradaResultData?.conta}');
  print('contaNome: ${retirada.retiradaResultData?.contaNome}');
  print('contaTipo: ${retirada.retiradaResultData?.contaTipo}');
  print('- - - - - - - - - - - - - - - - - - - - - - -');
  print('\n');

  ExtratoResult extrato = await pixPdvSdk.extrato(
    inicio: '01012023',
    fim: '31122023',
  );

  print('\n');
  print('- - - - - - - - - - - - - - - - - - - - - - -');
  print('EndPoint: extrato');
  print('- - - - - - - - - - - - - - - - - - - - - - -');
  for (var data in extrato.extratoResultData!.extrato!) {
    print('extrato: ${data.toJson()}');
  }
  print('- - - - - - - - - - - - - - - - - - - - - - -');
  print('\n');
}
