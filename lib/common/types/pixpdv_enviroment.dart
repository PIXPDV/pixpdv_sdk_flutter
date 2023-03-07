enum PixPDVEnviroment {
  producao,
  homologacao,
}

extension PixPDVEnviromentExtension on PixPDVEnviroment {
  String display() {
    return toString().split('.').last;
  }

  int value() {
    return index;
  }
}

// Obter o enum a partir de uma string
PixPDVEnviroment pixPDVEnviromentFromString(String display) {
  return PixPDVEnviroment.values.firstWhere(
    (e) => e.display() == display,
    orElse: () => PixPDVEnviroment.homologacao,
  );
}
