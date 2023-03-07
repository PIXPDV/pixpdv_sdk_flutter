import 'package:intl/intl.dart';
import 'helpers_string_functions.dart';

extension ToOnlyNumbers on String {
  String toOnlyNumbers() {
    var aux = replaceAll(RegExp(r'[^0-9]'), '');
    return aux;
  }
}

extension ToOnlyLetters on String {
  String toOnlyLetters() {
    var aux = replaceAll(RegExp(r'[^a-z^A-Z]'), '');
    return aux;
  }
}

extension ToLocalDate on String {
  String toLocalDate({bool dataHora = true}) {
    String strData;
    DateFormat formatter;
    if (trim() != '') {
      if (dataHora) {
        formatter = DateFormat('dd/MM/yyyy HH:mm:ss');
      } else {
        formatter = DateFormat('dd/MM/yyyy');
      }
      DateTime aux = DateTime.parse(this);
      strData = formatter.format(aux);
    } else {
      strData = '';
    }
    return strData;
  }
}

extension DoubleToStringIgnoreNull on double {
  String toStringIgnoreNull() {
    var aux = toString().toUpperCase() == 'NULL' ? '' : toString();
    return aux;
  }
}

extension IntToStringIgnoreNull on int {
  String toStringIgnoreNull() {
    var aux = toString().toUpperCase() == 'NULL' ? '' : toString();
    return aux;
  }
}

extension StringToStringIgnoreNull on String {
  String toStringIgnoreNull() {
    var aux = toString().toUpperCase() == 'NULL' ? '' : toString();
    return aux;
  }
}

extension ToBrazilianCep on String {
  String toBrazilianCep() {
    var aux = replaceAll(RegExp(r'[^0-9]'), '').trim();
    if (aux != '') {
      aux = length == 8 ? BrazilianCep.formatToBrazilianCep(aux)! : 'Inválido';
    } else {
      aux = '';
    }
    return aux;
  }
}

extension IsValidBrazilianCep on String {
  bool get isValidBrazilianCep {
    return BrazilianCep.isValidBrazilianCep(this);
  }
}

extension ToBrazilianCpf on String {
  String toBrazilianCpf() {
    return length == 11 ? BrazilianCpf.formatToBrazilianCpf(this)! : 'Inválido';
  }
}

extension IsValidBrazilianCpf on String {
  bool get isValidBrazilianCpf {
    return BrazilianCpf.isValidBrazilianCpf(this);
  }
}

extension ToBrazilianCnpj on String {
  String tnBrazilianCnpj() {
    return length == 14 ? BrazilianCnpj.formatToBrazilianCnpj(this)! : 'Inválido';
  }
}

extension IsValidBrazilianCnpj on String {
  bool get isValidBrazilianCnpj {
    return BrazilianCnpj.isValidBrazilianCnpj(this);
  }
}

extension ToBrazilianCpfCnpj on String {
  String toBrazilianCpfCnpj() {
    return length < 14 ? BrazilianCpf.formatToBrazilianCpf(this)! : BrazilianCnpj.formatToBrazilianCnpj(this)!;
  }
}

extension IsValidBrazilianCpfCnpj on String {
  bool get isValidBrazilianCpfCnpj {
    switch (length) {
      case 11:
        return BrazilianCpf.isValidBrazilianCpf(this);
      case 14:
        return BrazilianCnpj.isValidBrazilianCnpj(this);
      default:
        return false;
    }
  }
}
