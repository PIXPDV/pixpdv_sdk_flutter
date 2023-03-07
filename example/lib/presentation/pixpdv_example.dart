import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:example/presentation/pixpdv_example_controller.dart';
import 'package:flutter/material.dart';
import 'package:pixpdv_sdk/pixpdv_sdk.dart';
import 'package:qr_flutter/qr_flutter.dart';

class PixPDVExample extends StatefulWidget {
  final String title = 'PixPDVExample';

  const PixPDVExample({Key? key}) : super(key: key);

  @override
  PixPDVExampleState createState() => PixPDVExampleState();
}

class PixPDVExampleState extends State<PixPDVExample> {
  PixPDVExampleController controller = PixPDVExampleController(
    dio: Dio(),
    token: PixPDVTokenModel(
      enviroment: PixPDVEnviroment.homologacao,
      userName: '00641418000188',
      password: 'tk-ezI0OTgwMzRDLUE1MzctNDM3QS1CQTk0LUZFODlFMEE0MzIyNn0',
      secretKey: 'sk-e0JBNTFGRTY0LTczMkYtNDYxNC1CQ0Q1LUI0OTVDODgxOTUwRX0',
    ),
  );

  QrDinamicoResult? qrDinamicoResult;

  String jsonResult = '';
  String qrCode = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: const Color(0xff01a19a),
        elevation: 0,
        title: const Text(
          'PixPDV SDK',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 56,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff01a19a),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'Gerar QR Code Dinâmico',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                onPressed: () async {
                  qrDinamicoResult = await controller.pixPdvSdk.qrdinamico(
                    bodyData: QrDinamicoData(
                      valor: 10.19,
                      minutos: 5,
                      mensagem: 'Teste de QRCODE Dinamico',
                      imagem: false,
                    ),
                  );

                  JsonEncoder encoder = const JsonEncoder.withIndent('  ');
                  String prettyprint = encoder.convert(
                    qrDinamicoResult?.qrDinamicoResultData?.toJson(),
                  );

                  setState(() {
                    jsonResult = prettyprint;
                    qrCode = qrDinamicoResult?.qrDinamicoResultData?.qrcode ?? '';
                  });
                },
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text(
                        'QR Code Dinâmico',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Expanded(
                        child: SingleChildScrollView(
                          child: Text(
                            jsonResult,
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text(
                        'QR Code',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Expanded(
                        child: Center(
                          child: (qrCode.trim() != '')
                              ? QrImage(
                                  data: qrCode,
                                  version: QrVersions.auto,
                                  size: 200.0,
                                )
                              : Container(
                                  height: 200,
                                  width: 200,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade100,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        Icons.qr_code,
                                        size: 64,
                                        color: Colors.grey,
                                      ),
                                      Text(
                                        'QR Code',
                                        style: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    'Desenvolvido - Claudney Sarti Sessa / PixPDV',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
