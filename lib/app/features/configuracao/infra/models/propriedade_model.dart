import 'dart:convert';

import 'package:flutter_pmm/app/features/configuracao/domain/entities/propriedade.dart';
import 'package:flutter_pmm/app/shared/database/database.dart';

class PropriedadeModel extends Propriedade {
  PropriedadeModel({
    idPropriedade,
    descrPropriedade,
  }) : super(
          idPropriedade: idPropriedade,
          descrPropriedade: descrPropriedade,
        );

  PropriedadeTableData propriedadeTableData() => PropriedadeTableData(
        idPropriedade: idPropriedade,
        descrPropriedade: descrPropriedade,
      );

  Map<String, dynamic> toMap() {
    return {
      'idPropriedade': idPropriedade,
      'descrPropriedade': descrPropriedade,
    };
  }

  factory PropriedadeModel.fromMap(Map<String, dynamic> map) {
    return PropriedadeModel(
      idPropriedade: map['idPropriedade'],
      descrPropriedade: map['descrPropriedade'],
    );
  }

  String toJson() => json.encode(toMap());

  factory PropriedadeModel.fromJson(String source) =>
      PropriedadeModel.fromMap(json.decode(source));
}
