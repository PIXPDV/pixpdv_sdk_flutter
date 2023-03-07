# PIXPDV SDK

O `PIXPDV SDK` é uma biblioteca que foi desenvolvida com o intuito de facilitar a integração dos seus aplicativos desenvolvidos em flutter com a API do PIXPDV.

Ao utilizar o `PIXPDV SDK`, você pode criar um QRCODE de pagamento seja ele dinâmicou ou até mesmo QRCODE de cobrança com data de Vencimento, valor, juros, multa, desconto e data de expiração. Você ainda pode consultar o status de um QRCODE específico, solicitar uma devolução consultar resumos e extratos.

## Porque PIXPDV?

Por ser uma transferência eletrônica instantânea, em ambiente seguro, o PIXPDV se alinha ao ritmo do comércio e negócios em geral. Não há necessidade de esperar o próximo dia útil ou a próxima janela de horário para receber um pagamento. O PIXPDV funciona 24 horas, 7 dias por semana. Os custos são menores e há facilidade na integração com a conciliação de pagamentos. O PIXPDV na prática tem o mesmo efeito do pagamento em dinheiro (em espécie).

## Como começar

Adicione o `PIXPDV SDK` como dependência no seu projeto, para isso, adicione a seguinte linha no seu arquivo `pubspec.yaml`:

Você deve adicionar o seguinte ao seu pubspec.yaml:

```yaml

    dependencies:
        dio:
        pixpdv_sdk: ^0.0.1

```

Observação : se você estiver usando o canal Flutter `master`, se encontrar problemas de compilação ou quiser experimentar uma versão melhor e mais recente, utilize a versão mais atual apontando para a `master` e não uma versão de lançamento específica. Para fazer isso, use a seguinte configuração no seu pubspec.yaml:

```yaml

    dependencies:
        pixpdv_sdk:
            git:
                url: #Utilize a URL do repositorio do github

```

## Utilização

Para utilizar o PixPDV SDK, você deve seguir os seguintes passos:

## Importando a Biblioteca

```dart

    import 'package:dio/dio.dart'; // Utilizamos o Dio para fazer as requisições HTTP
    import 'package:pixpdv_sdk/pixpdv_sdk.dart';

```

## Criando a Instância do SDK

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

```

## Tipos de Requisições

| Tipo | Descrição |
| -- | -- |
| statustoken | Envia um json com o cnpj só para testar se as configurações estão corretas. |
| qrdinamico | Solicita um QRCode Dinâmico com valor e duração específicos. |
| qrcobranca | Solicita um QRCode cobrança com data de Vencimento, valor, juros, multa, desconto e data de expiração específicos. |
| qrstatus | Solicita o STATUS de um QRCode específico. |
| qrrefund | Solicita a devolução de um QRCode Dinâmico recebido anteriormente. |
| qrresumo | Solicita um RESUMO dos QRCodes de um período pelo Tipo de data. |
| saldo | Solicita o SALDO disponível na conta. |
| retirada | Retirar qualquer valor da conta e enviar para a instituição onde está a chave pix do cnpj. |
| extrato | Solicita o Extrato do período |

## Exemplos

Abaixo você pode ver alguns exemplos de como utilizar o SDK.

Para mais informações, acesse a documentação da API em [PixPDV API](https://pixpdv.com.br/api/index.html#section/Introducao).

### Status Token

Envia um json com o cnpj só para testar se as configurações estão corretas.

```dart

    StatusTokenResult statustoken = await pixPdvSdk.statustoken(
        bodyData: StatusTokenData(
            cnpj: '00641418000188',
        ),
    );

```

Exemplo de Retorno da Requisição

```json

    {
        "data": {
            "cnpj": "00641418000188",
            "nome": "JNP Software de Franca Ltda",
            "fantasia": "JNP Software"
        }
    }

```

### Qr Dinamico

Solicita um QRCode Dinâmico com valor e duração específicos.

```dart

    QrDinamicoResult qrdinamico = await pixPdvSdk.qrdinamico(
        bodyData: QrDinamicoData(
            valor: 10.19,
            minutos: 5,
            mensagem: 'Teste de QRCODE Dinamico',
            imagem: false,
        ),
    );

```

Exemplo de Retorno da Requisição

```json

    {
        "data": {
            "qrcodeId": "2d2bf7b7-24fc-4431-9cb8-460ea14ee9e9",
            "qrcode": "00020101021226990014br.gov.bcb.pix...",
            "qrcodeBase64": "iVBOR..."
        }
    }

```

### Qr Cobranca (Boleto)

Solicita um QRCode cobrança com data de Vencimento, valor, juros, multa, desconto e data de expiração específicos.

```dart

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
                endereco: 'Logradouro do Endereço, 1645',
                bairro: 'Bairro do Endereço',
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

```

Exemplo de Retorno da Requisição

```json

    {
        "valor": 1.23,
        "vencimento": "19/03/2022",
        "expira": 5,
        "mensagem": "Cobrança referente a mensalidade...",
        "imagem": false,
        "documento": "123456/1",
        "pagador": {
            "nome": "Jose Nilton Pace",
            "fantasia": "",
            "cpf_cnpj": "12345678901",
            "endereco": "Rua Emilio Bertoni, 1645",
            "bairro": "Vila Totoli",
            "cidade": "Franca",
            "estado": "SP",
            "cep": "14409108",
            "email": "demo@jnp.com.br",
            "telefone": "(16) 3727-5688"
        },
        "juros": {
            "tipo": 3,
            "valor": 10
        },
        "multa": {
            "tipo": 2,
            "valor": 5
        },
        "desconto": {
            "tipo": 2,
            "valor": 10,
            "data": "01/03/2022"
        }
    }

```

### Qr Status

Solicita o STATUS de um QRCode específico.

```dart

    QrStatusResult qrstatus = await pixPdvSdk.qrstatus(
        qrCodeId: qrdinamico.qrDinamicoResultData!.qrcodeId!,
    );

```

Exemplo de Retorno da Requisição

```json

    {
        "data": {
            "status": "APPROVED",
            "endToEndId": "E040131722...svm6Dgabyg",
            "identificadorId": "QRS1TXRLPI...IOHQ0EHVWT",
            "sender": {
                "nome": "Jose Nilton Pace",
                "cpf_cnpj": "***.532.728-**",
                "data": "2021-08-01T12:34:56.000Z",
                "valor": 12.34
            }
        }
    }

```

### Refund

Solicita a devolução de um QRCode Dinâmico recebido anteriormente.

```dart

    QrRefundResult qrrefund = await pixPdvSdk.qrrefund(
        bodyData: QrRefundData(
            qrcodeId: qrdinamico.qrDinamicoResultData!.qrcodeId!,
        ),
    );

```

Exemplo de Retorno da Requisição

```json

    {
        "data": {
            "refundId": "3324897f-393a-4bf6-b3af-0b999cbc2521"
        }
    }

```

### Qr Resumo

Solicita um RESUMO dos QRCodes de um período pelo Tipo de data.
  
```dart

    QrResumoResult qrresumo = await pixPdvSdk.qrresumo(
        tipo: QrResumoTipo.emissao,
        inicio: '01012023',
        fim: '31122023',
    );

```

Exemplo de Retorno da Requisição

```json

    {
        "data": {
            "resumo": [
                {
                    "status": "APPROVED",
                    "transacaoId": "e411865e-cd8b-4b6f-ad1a-67016e6e27d3",
                    "transacaoTipo": "Pix Recebimento",
                    "mensagem": "...",
                    "endToEndId": "E040131722...svm6Dgabyg",
                    "identificadorId": "QRS1TXRLPI...IOHQ0EHVWT",
                    "sender": {
                        "nome": "Jose Nilton Pace",
                        "cpf_cnpj": "***.532.728-**",
                        "data": "2021-08-01T12:34:56.000Z",
                        "valor": 12.34
                    }
                },
                {
                    "status": "APPROVED",
                    "transacaoId": "e411865e-cd8b-4b6f-ad1a-67016e6e27d3",
                    "transacaoTipo": "Pix Recebimento",
                    "mensagem": "...",
                    "endToEndId": "E040131722...svm6Dgabyg",
                    "identificadorId": "QRS1TXRLPI...IOHQ0EHVWT",
                    "sender": {
                        "nome": "Jose Nilton Pace",
                        "cpf_cnpj": "***.532.728-**",
                        "data": "2021-08-01T12:34:56.000Z",
                        "valor": 12.34
                    }
                },
                {
                    "status": "APPROVED",
                    "transacaoId": "e411865e-cd8b-4b6f-ad1a-67016e6e27d3",
                    "transacaoTipo": "Pix Recebimento",
                    "mensagem": "...",
                    "endToEndId": "E040131722...svm6Dgabyg",
                    "identificadorId": "QRS1TXRLPI...IOHQ0EHVWT",
                    "sender": {
                        "nome": "Jose Nilton Pace",
                        "cpf_cnpj": "***.532.728-**",
                        "data": "2021-08-01T12:34:56.000Z",
                        "valor": 12.34
                    }
                },
            ]
        }
    }

```

### Saldo

Solicita o SALDO disponível na conta.

```dart

    SaldoResult saldo = await pixPdvSdk.saldo();

```

Exemplo de Retorno da Requisição

```json

    {
        "data": {
            "total": 12.34,
            "disponivel": 11.34,
            "bloqueado": 1
        }
    }

```

### Retirada

Retirar qualquer valor da conta e enviar para a instituição onde está a chave pix do cnpj.
  
```dart

    RetiradaResult retirada = await pixPdvSdk.retirada(
        bodyData: RetiradaData(
            valor: 10.99,
        ),
    );

```

Exemplo de Retorno da Requisição

```json

    {
        "data": {
            "transacaoId": "e411865e-cd8b-4b6f-ad1a-67016e6e27d3",
            "endToEndId": "E231144472...KOYDkjOtrT",
            "pspId": "04013172",
            "pspNome": "CC SICOOB CRED-ACIF",
            "agencia": "4321",
            "conta": "20211831",
            "contaNome": "JNP Software de Franca Ltda",
            "contaTipo": "CC"
        }
    }

```

### Extrato
  
Solicita o Extrato do período.

```dart

    ExtratoResult extrato = await pixPdvSdk.extrato(
        inicio: '01012023',
        fim: '31122023',
    );

```

Exemplo de Retorno da Requisição

```json

    {
        "data": {
            "extrato": [
                {
                    "transacaoId": "e411865e-cd8b-4b6f-ad1a-67016e6e27d3",
                    "transacaoTipo": "PAYMENTINSTANTPAYMENT",
                    "descricao": "CREDITO DE PAGAMENTO VIA PIX",
                    "data": "2021-10-14T09:53:35.000Z",
                    "valor": 0.9,
                    "tipo": "C"
                },
                {
                    "transacaoId": "e411865e-cd8b-4b6f-ad1a-67016e6e27d3",
                    "transacaoTipo": "PAYMENTINSTANTPAYMENT",
                    "descricao": "CREDITO DE PAGAMENTO VIA PIX",
                    "data": "2021-10-14T09:53:35.000Z",
                    "valor": 0.9,
                    "tipo": "C"
                },
                {
                    "transacaoId": "e411865e-cd8b-4b6f-ad1a-67016e6e27d3",
                    "transacaoTipo": "PAYMENTINSTANTPAYMENT",
                    "descricao": "CREDITO DE PAGAMENTO VIA PIX",
                    "data": "2021-10-14T09:53:35.000Z",
                    "valor": 0.9,
                    "tipo": "C"
                },
                {
                    "transacaoId": "e411865e-cd8b-4b6f-ad1a-67016e6e27d3",
                    "transacaoTipo": "PAYMENTINSTANTPAYMENT",
                    "descricao": "CREDITO DE PAGAMENTO VIA PIX",
                    "data": "2021-10-14T09:53:35.000Z",
                    "valor": 0.9,
                    "tipo": "C"
                }
            ]
        }
    }

```

## Informações adicionais

Para que seja possível a utilização dos recursos do `PIXPDV SDK`, é necessário que você tenha uma conta PIXPDV. Caso ainda não tenha, acesse o site [PIXPDV](https://pixpdv.com.br) ou entre em contato pelo whatsapp [+55 16 99972-5688](https://api.whatsapp.com/send?phone=5516999725688&text=Ol%C3%A1%2C%20gostaria%20de%20saber%20mais%20sobre%20o%20PIXPDV%20SDK) e crie a sua conta.

## Créditos

Este SDK foi desenvolvido por [Claudney Sarti Sessa](https://github.com/claudneysessa) atendendo as especificações da API de integração do [PIXPDV](https://pixpdv.com.br), empresa especializada em soluções para o mercado de pagamentos.
