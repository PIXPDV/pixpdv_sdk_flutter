import 'package:json_annotation/json_annotation.dart';

enum QrResumoTipo {
  @JsonValue('emissao')
  emissao,
  @JsonValue('recebimento')
  recebimento,
  @JsonValue('vencimento')
  vencimento,
}

extension QrResumoTipoExtension on QrResumoTipo {
  String get value {
    switch (this) {
      case QrResumoTipo.emissao:
        return 'emissao';
      case QrResumoTipo.recebimento:
        return 'recebimento';
      case QrResumoTipo.vencimento:
        return 'vencimento';
      default:
        return 'indefinido';
    }
  }

  String get description {
    switch (this) {
      case QrResumoTipo.emissao:
        return 'Resumo por Data e Emissão';
      case QrResumoTipo.recebimento:
        return 'Resumo por Data e Recebimento';
      case QrResumoTipo.vencimento:
        return 'Resumo por Data e Vencimento';
      default:
        return 'Não definido';
    }
  }
}
