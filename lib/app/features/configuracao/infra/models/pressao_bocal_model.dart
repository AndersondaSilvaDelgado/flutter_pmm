import 'dart:convert';

import 'package:flutter_pmm/app/features/configuracao/domain/entities/pressao_bocal.dart';
import 'package:flutter_pmm/app/shared/database/database.dart';

class PressaoBocalModel extends PressaoBocal {
  PressaoBocalModel({
    idPressaoBocal,
    idBocal,
    valorPressao,
    valorVeloc,
  }) : super(
          idPressaoBocal: idPressaoBocal,
          idBocal: idBocal,
          valorPressao: valorPressao,
          valorVeloc: valorVeloc,
        );

  PressaoBocalTableData pressaoBocalTableData() => PressaoBocalTableData(
        idPressaoBocal: idPressaoBocal,
        idBocal: idBocal,
        valorPressao: valorPressao,
        valorVeloc: valorVeloc,
      );

  Map<String, dynamic> toMap() {
    return {
      'idPressaoBocal': idPressaoBocal,
      'idBocal': idBocal,
      'valorPressao': valorPressao,
      'valorVeloc': valorVeloc,
    };
  }

  factory PressaoBocalModel.fromMap(Map<String, dynamic> map) {
    return PressaoBocalModel(
      idPressaoBocal: map['idPressaoBocal'],
      idBocal: map['idBocal'],
      valorPressao: map['valorPressao'],
      valorVeloc: map['valorVeloc'],
    );
  }

  String toJson() => json.encode(toMap());

  factory PressaoBocalModel.fromJson(String source) =>
      PressaoBocalModel.fromMap(json.decode(source));
}
