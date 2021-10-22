import 'dart:convert';

import 'package:flutter_pmm/app/features/configuracao/domain/entities/frente.dart';
import 'package:flutter_pmm/app/shared/database/database.dart';

class FrenteModel extends Frente {
  FrenteModel({
    idFrente,
    codFrente,
    descrFrente,
  }) : super(
          idFrente: idFrente,
          codFrente: codFrente,
          descrFrente: descrFrente,
        );

  FrenteTableData frenteTableData() => FrenteTableData(
        idFrente: idFrente,
        codFrente: codFrente,
        descrFrente: descrFrente,
      );

  Map<String, dynamic> toMap() {
    return {
      'idFrente': idFrente,
      'codFrente': codFrente,
      'descrFrente': descrFrente,
    };
  }

  factory FrenteModel.fromMap(Map<String, dynamic> map) {
    return FrenteModel(
      idFrente: map['idFrente'],
      codFrente: map['codFrente'],
      descrFrente: map['descrFrente'],
    );
  }

  String toJson() => json.encode(toMap());

  factory FrenteModel.fromJson(String source) =>
      FrenteModel.fromMap(json.decode(source));
}
