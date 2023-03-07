# Exempo de Utilização do PixPDV SDK

Este projeto tem como finalidade demonstrar a utilização da biblioteca [PixPDV SDK](https://pub.dev/packages/pixpdv_sdk) para a geração de QRCODE de pagamento seja ele dinâmicou ou até mesmo QRCODE de cobrança com data de Vencimento, valor, juros, multa, desconto e data de expiração. Você ainda pode consultar o status de um QRCODE específico, solicitar uma devolução consultar resumos e extratos.

Maiores informações sobre a API PixPDV, acesse o [Portal PixPDV](https://www.pixpdv.com.br/).

Encontre o código fonte do projeto no [GitHub](https://github.com/PIXPDV/pixpdv_sdk_flutter)

Para que seja possível a utilização dos recursos do `PIXPDV SDK`, é necessário que você tenha uma conta PIXPDV. Caso ainda não tenha, acesse o site [PIXPDV](https://pixpdv.com.br) ou entre em contato pelo whatsapp [+55 16 99972-5688](https://api.whatsapp.com/send?phone=5516999725688&text=Ol%C3%A1%2C%20gostaria%20de%20saber%20mais%20sobre%20o%20PIXPDV%20SDK) e crie a sua conta.

## Sobre o Exemplo

Neste exemplo utilizaremos o PixPDV SDK para gerar um QRCode dinâmico com o tempo de expiração de 5 minutos e o valor de R\$ 10.19.

```dart

    import 'package:dio/dio.dart';
    import 'package:pixpdv_sdk/pixpdv_sdk.dart';

    // Crie uma Instância do Dio
    // Não é necessário passar o baseUrl, pois o SDK já faz isso automaticamente
    // com base no token informado e no ambiente de produção ou homologação

    Dio dio = Dio();

    // Crie uma Instância do Token
    // Você pode utilizar o token de produção ou de homologação

    // Usuário para testes em homologação
    String userName = '00641418000188';

    // Token de Homologação
    String password = 'tk-ezI0OTgwMzRDLUE1MzctNDM3QS1CQTk0LUZFODlFMEE0MzIyNn0';

    // Chave Secreta de Homologação
    String secretKey = 'sk-e0JBNTFGRTY0LTczMkYtNDYxNC1CQ0Q1LUI0OTVDODgxOTUwRX0';

    PixPDVTokenModel token = PixPDVTokenModel(
        enviroment: PixPDVEnviroment.homologacao,
        userName: userName,
        password: password,
        secretKey: secretKey,
    );

    // Crie uma Instância do SDK
    // Informe o Dio e o Token criados anteriormente

    pixPdvSdk = PixPdvSdk(
        dio: dio,
        token: token,
    );

    // Obs: Todo QRCode gerado no ambiente de homologação, independente do tempo de duração
    // sempre retornará o status CREATED


    // Criando um QRCode Dinâmico
    // O tempo de expiração é em minutos ( 5 minutos )
    // O valor é em reais ( RR 10.19 )

    QrDinamicoResult qrDinamicoResult = await pixPdvSdk.qrdinamico(
        bodyData: QrDinamicoData(
            valor: 10.19,
            minutos: 5,
            mensagem: 'Teste de QRCODE Dinamico',
            imagem: false,
        ),
    );

```

## Print do Aplicativo de Exemplo

![image](https://user-images.githubusercontent.com/12506432/223465094-17502491-670d-4378-8ec6-ae86d7ac9529.png)
![image](https://user-images.githubusercontent.com/12506432/223465158-6ecb0f3c-f162-44e7-8f10-117da2e59131.png)


## Créditos

Este Projeto foi desenvolvido por [Claudney Sarti Sessa](https://github.com/claudneysessa) atendendo as especificações da API de integração do [PIXPDV](https://pixpdv.com.br), empresa especializada em soluções para o mercado de pagamentos.
