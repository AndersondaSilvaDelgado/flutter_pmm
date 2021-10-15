import 'dart:convert';

import 'package:flutter_pmm/app/features/configuracao/domain/entities/bocal.dart';
import 'package:flutter_pmm/app/shared/database/database.dart';

class BocalModel extends Bocal {
  BocalModel({
    idBocal,
    codBocal,
    descrBocal,
  }) : super(
          idBocal: idBocal,
          codBocal: codBocal,
          descrBocal: descrBocal,
        );

  BocalTableData bocalTableData() => BocalTableData(
        idBocal: idBocal,
        codBocal: codBocal,
        descrBocal: descrBocal,
      );

  Map<String, dynamic> toMap() {
    return {
      'idBocal': idBocal,
      'codBocal': codBocal,
      'descrBocal': descrBocal,
    };
  }

  factory BocalModel.fromMap(Map<String, dynamic> map) {
    return BocalModel(
      idBocal: map['idBocal'],
      codBocal: map['codBocal'],
      descrBocal: map['descrBocal'],
    );
  }

  String toJson() => json.encode(toMap());

  factory BocalModel.fromJson(String source) =>
      BocalModel.fromMap(json.decode(source));
}
