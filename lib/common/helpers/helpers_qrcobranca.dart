import 'package:json_annotation/json_annotation.dart';

enum QrCobrancaTipoJuros {
  @JsonValue(1)
  valorDiasCorridos,
  @JsonValue(2)
  percentualDiaDiasCorridos,
  @JsonValue(3)
  percentualMesDiasCorridos,
  @JsonValue(4)
  percentualAnoDiasCorridos,
  @JsonValue(5)
  valorDiasUteis,
  @JsonValue(6)
  percentualDiaDiasUteis,
  @JsonValue(7)
  percentualMesDiasUteis,
  @JsonValue(8)
  percentualAnoDiasUteis,
}

extension QrCobrancaTipoJurosExtension on QrCobrancaTipoJuros {
  int get value {
    switch (this) {
      case QrCobrancaTipoJuros.valorDiasCorridos:
        return 1;
      case QrCobrancaTipoJuros.percentualDiaDiasCorridos:
        return 2;
      case QrCobrancaTipoJuros.percentualMesDiasCorridos:
        return 3;
      case QrCobrancaTipoJuros.percentualAnoDiasCorridos:
        return 4;
      case QrCobrancaTipoJuros.valorDiasUteis:
        return 5;
      case QrCobrancaTipoJuros.percentualDiaDiasUteis:
        return 6;
      case QrCobrancaTipoJuros.percentualMesDiasUteis:
        return 7;
      case QrCobrancaTipoJuros.percentualAnoDiasUteis:
        return 8;
      default:
        return 0;
    }
  }

  String get description {
    switch (this) {
      case QrCobrancaTipoJuros.valorDiasCorridos:
        return 'Valor (dias corridos)';
      case QrCobrancaTipoJuros.percentualDiaDiasCorridos:
        return 'Percentual ao dia (dias corridos)';
      case QrCobrancaTipoJuros.percentualMesDiasCorridos:
        return 'Percentual ao mês (dias corridos)';
      case QrCobrancaTipoJuros.percentualAnoDiasCorridos:
        return 'Percentual ao ano (dias corridos)';
      case QrCobrancaTipoJuros.valorDiasUteis:
        return 'Valor (dias úteis)';
      case QrCobrancaTipoJuros.percentualDiaDiasUteis:
        return 'Percentual ao dia (dias úteis)';
      case QrCobrancaTipoJuros.percentualMesDiasUteis:
        return 'Percentual ao dia (dias úteis)';
      case QrCobrancaTipoJuros.percentualAnoDiasUteis:
        return 'Percentual ao dia (dias úteis)';
      default:
        return 'Não definido';
    }
  }
}

enum QrCobrancaTipoMulta {
  @JsonValue(1)
  fixo,
  @JsonValue(2)
  percentual,
}

extension QrCobrancaTipoMultaExtension on QrCobrancaTipoMulta {
  int get value {
    switch (this) {
      case QrCobrancaTipoMulta.fixo:
        return 1;
      case QrCobrancaTipoMulta.percentual:
        return 2;
      default:
        return 0;
    }
  }

  String get description {
    switch (this) {
      case QrCobrancaTipoMulta.fixo:
        return 'Valor Fixo';
      case QrCobrancaTipoMulta.percentual:
        return 'Percentual';
      default:
        return 'Não definido';
    }
  }
}

enum QrCobrancaTipoDesconto {
  @JsonValue(1)
  fixo,
  @JsonValue(2)
  percentual,
}

extension QrCobrancaTipoDescontoExtension on QrCobrancaTipoDesconto {
  int get value {
    switch (this) {
      case QrCobrancaTipoDesconto.fixo:
        return 1;
      case QrCobrancaTipoDesconto.percentual:
        return 2;
      default:
        return 0;
    }
  }

  String get description {
    switch (this) {
      case QrCobrancaTipoDesconto.fixo:
        return 'Valor Fixo até a data informada';
      case QrCobrancaTipoDesconto.percentual:
        return 'Percentual até a data informada';
      default:
        return 'Não definido';
    }
  }
}
