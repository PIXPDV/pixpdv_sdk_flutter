import 'package:json_annotation/json_annotation.dart';

import '../../../../common/helpers/helpers_qrcobranca.dart';

part 'qrcobranca_data.g.dart';

@JsonSerializable()
class QrCobrancaData {
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'valor',
  )
  double? valor;
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'vencimento',
  )
  String? vencimento;
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'expira',
  )
  int? expira;
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'mensagem',
  )
  String? mensagem;
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'imagem',
  )
  bool? imagem;
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'documento',
  )
  String? documento;
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'pagador',
  )
  Pagador? pagador;
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'juros',
  )
  Juros? juros;
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'multa',
  )
  Multa? multa;
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'desconto',
  )
  Desconto? desconto;

  QrCobrancaData({
    this.valor,
    this.vencimento,
    this.expira,
    this.mensagem,
    this.imagem,
    this.documento,
    this.pagador,
    this.juros,
    this.multa,
    this.desconto,
  });

  factory QrCobrancaData.fromJson(Map<String, dynamic> json) => _$QrCobrancaDataFromJson(json);
  Map<String, dynamic> toJson() => _$QrCobrancaDataToJson(this);
}

@JsonSerializable()
class Desconto {
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'tipo',
  )
  QrCobrancaTipoDesconto? tipo;
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'valor',
  )
  double? valor;
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'data',
  )
  String? data;

  Desconto({
    this.tipo,
    this.valor,
    this.data,
  });
  factory Desconto.fromJson(Map<String, dynamic> json) => _$DescontoFromJson(json);
  Map<String, dynamic> toJson() => _$DescontoToJson(this);
}

@JsonSerializable()
class Juros {
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'tipo',
  )
  QrCobrancaTipoJuros? tipo;
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'valor',
  )
  double? valor;

  Juros({
    this.tipo,
    this.valor,
  });

  factory Juros.fromJson(Map<String, dynamic> json) => _$JurosFromJson(json);
  Map<String, dynamic> toJson() => _$JurosToJson(this);
}

@JsonSerializable()
class Multa {
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'tipo',
  )
  QrCobrancaTipoMulta? tipo;
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'valor',
  )
  double? valor;

  Multa({
    this.tipo,
    this.valor,
  });

  factory Multa.fromJson(Map<String, dynamic> json) => _$MultaFromJson(json);
  Map<String, dynamic> toJson() => _$MultaToJson(this);
}

@JsonSerializable()
class Pagador {
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'nome',
  )
  String? nome;
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'valor',
  )
  String? fantasia;
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'cpf_cnpj',
  )
  String? cpfCnpj;
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'endereco',
  )
  String? endereco;
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'bairro',
  )
  String? bairro;
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'cidade',
  )
  String? cidade;
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'estado',
  )
  String? estado;
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'cep',
  )
  String? cep;
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'email',
  )
  String? email;
  @JsonKey(
    required: false,
    includeIfNull: false,
    name: 'telefone',
  )
  String? telefone;

  Pagador({
    this.nome,
    this.fantasia,
    this.cpfCnpj,
    this.endereco,
    this.bairro,
    this.cidade,
    this.estado,
    this.cep,
    this.email,
    this.telefone,
  });

  factory Pagador.fromJson(Map<String, dynamic> json) => _$PagadorFromJson(json);
  Map<String, dynamic> toJson() => _$PagadorToJson(this);
}
