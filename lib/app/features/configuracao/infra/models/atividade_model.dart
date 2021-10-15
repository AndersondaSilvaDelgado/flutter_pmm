import 'dart:convert';

import 'package:flutter_pmm/app/features/configuracao/domain/entities/atividade.dart';
import 'package:flutter_pmm/app/shared/database/database.dart';

class AtividadeModel extends Atividade {
  AtividadeModel({
    idAtiv,
    codAtiv,
    descrAtiv,
  }) : super(
          idAtiv: idAtiv,
          codAtiv: codAtiv,
          descrAtiv: descrAtiv,
        );

  // ignore: unnecessary_new
  AtividadeTableData atividadeTableData() => new AtividadeTableData(
        idAtiv: idAtiv,
        codAtiv: codAtiv,
        descrAtiv: descrAtiv,
      );

  Map<String, dynamic> toMap() {
    return {
      'idAtiv': idAtiv,
      'codAtiv': codAtiv,
      'descrAtiv': descrAtiv,
    };
  }

  factory AtividadeModel.fromMap(Map<String, dynamic> map) {
    return AtividadeModel(
      idAtiv: map['idAtiv'],
      codAtiv: map['codAtiv'],
      descrAtiv: map['descrAtiv'],
    );
  }

  String toJson() => json.encode(toMap());

  factory AtividadeModel.fromJson(String source) =>
      AtividadeModel.fromMap(json.decode(source));
}
