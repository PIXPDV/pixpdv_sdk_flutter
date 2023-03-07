// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qrcobranca_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QrCobrancaData _$QrCobrancaDataFromJson(Map<String, dynamic> json) =>
    QrCobrancaData(
      valor: (json['valor'] as num?)?.toDouble(),
      vencimento: json['vencimento'] as String?,
      expira: json['expira'] as int?,
      mensagem: json['mensagem'] as String?,
      imagem: json['imagem'] as bool?,
      documento: json['documento'] as String?,
      pagador: json['pagador'] == null
          ? null
          : Pagador.fromJson(json['pagador'] as Map<String, dynamic>),
      juros: json['juros'] == null
          ? null
          : Juros.fromJson(json['juros'] as Map<String, dynamic>),
      multa: json['multa'] == null
          ? null
          : Multa.fromJson(json['multa'] as Map<String, dynamic>),
      desconto: json['desconto'] == null
          ? null
          : Desconto.fromJson(json['desconto'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$QrCobrancaDataToJson(QrCobrancaData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('valor', instance.valor);
  writeNotNull('vencimento', instance.vencimento);
  writeNotNull('expira', instance.expira);
  writeNotNull('mensagem', instance.mensagem);
  writeNotNull('imagem', instance.imagem);
  writeNotNull('documento', instance.documento);
  writeNotNull('pagador', instance.pagador);
  writeNotNull('juros', instance.juros);
  writeNotNull('multa', instance.multa);
  writeNotNull('desconto', instance.desconto);
  return val;
}

Desconto _$DescontoFromJson(Map<String, dynamic> json) => Desconto(
      tipo: $enumDecodeNullable(_$QrCobrancaTipoDescontoEnumMap, json['tipo']),
      valor: (json['valor'] as num?)?.toDouble(),
      data: json['data'] as String?,
    );

Map<String, dynamic> _$DescontoToJson(Desconto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('tipo', _$QrCobrancaTipoDescontoEnumMap[instance.tipo]);
  writeNotNull('valor', instance.valor);
  writeNotNull('data', instance.data);
  return val;
}

const _$QrCobrancaTipoDescontoEnumMap = {
  QrCobrancaTipoDesconto.fixo: 1,
  QrCobrancaTipoDesconto.percentual: 2,
};

Juros _$JurosFromJson(Map<String, dynamic> json) => Juros(
      tipo: $enumDecodeNullable(_$QrCobrancaTipoJurosEnumMap, json['tipo']),
      valor: (json['valor'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$JurosToJson(Juros instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('tipo', _$QrCobrancaTipoJurosEnumMap[instance.tipo]);
  writeNotNull('valor', instance.valor);
  return val;
}

const _$QrCobrancaTipoJurosEnumMap = {
  QrCobrancaTipoJuros.valorDiasCorridos: 1,
  QrCobrancaTipoJuros.percentualDiaDiasCorridos: 2,
  QrCobrancaTipoJuros.percentualMesDiasCorridos: 3,
  QrCobrancaTipoJuros.percentualAnoDiasCorridos: 4,
  QrCobrancaTipoJuros.valorDiasUteis: 5,
  QrCobrancaTipoJuros.percentualDiaDiasUteis: 6,
  QrCobrancaTipoJuros.percentualMesDiasUteis: 7,
  QrCobrancaTipoJuros.percentualAnoDiasUteis: 8,
};

Multa _$MultaFromJson(Map<String, dynamic> json) => Multa(
      tipo: $enumDecodeNullable(_$QrCobrancaTipoMultaEnumMap, json['tipo']),
      valor: (json['valor'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$MultaToJson(Multa instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('tipo', _$QrCobrancaTipoMultaEnumMap[instance.tipo]);
  writeNotNull('valor', instance.valor);
  return val;
}

const _$QrCobrancaTipoMultaEnumMap = {
  QrCobrancaTipoMulta.fixo: 1,
  QrCobrancaTipoMulta.percentual: 2,
};

Pagador _$PagadorFromJson(Map<String, dynamic> json) => Pagador(
      nome: json['nome'] as String?,
      fantasia: json['valor'] as String?,
      cpfCnpj: json['cpf_cnpj'] as String?,
      endereco: json['endereco'] as String?,
      bairro: json['bairro'] as String?,
      cidade: json['cidade'] as String?,
      estado: json['estado'] as String?,
      cep: json['cep'] as String?,
      email: json['email'] as String?,
      telefone: json['telefone'] as String?,
    );

Map<String, dynamic> _$PagadorToJson(Pagador instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('nome', instance.nome);
  writeNotNull('valor', instance.fantasia);
  writeNotNull('cpf_cnpj', instance.cpfCnpj);
  writeNotNull('endereco', instance.endereco);
  writeNotNull('bairro', instance.bairro);
  writeNotNull('cidade', instance.cidade);
  writeNotNull('estado', instance.estado);
  writeNotNull('cep', instance.cep);
  writeNotNull('email', instance.email);
  writeNotNull('telefone', instance.telefone);
  return val;
}
