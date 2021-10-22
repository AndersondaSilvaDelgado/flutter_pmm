import 'dart:convert';

import 'package:flutter_pmm/app/features/configuracao/domain/entities/oper_motomec.dart';
import 'package:flutter_pmm/app/shared/database/database.dart';

class OperMotoMecModel extends OperMotoMec {
  OperMotoMecModel({
    idOperMotoMec,
    codOperMotoMec,
    descrOperMotoMec,
    codFuncaoOperMotoMec,
    posOperMotoMec,
    tipoOperMotoMec,
    aplicOperMotoMec,
    funcaoOperMotoMec,
  }) : super(
          idOperMotoMec: idOperMotoMec,
          codOperMotoMec: codOperMotoMec,
          descrOperMotoMec: descrOperMotoMec,
          codFuncaoOperMotoMec: codFuncaoOperMotoMec,
          posOperMotoMec: posOperMotoMec,
          tipoOperMotoMec: tipoOperMotoMec,
          aplicOperMotoMec: aplicOperMotoMec,
          funcaoOperMotoMec: funcaoOperMotoMec,
        );

  OperMotoMecTableData operMotoMecTableData() => OperMotoMecTableData(
        idOperMotoMec: idOperMotoMec,
        codOperMotoMec: codOperMotoMec,
        descrOperMotoMec: descrOperMotoMec,
        codFuncaoOperMotoMec: codFuncaoOperMotoMec,
        posOperMotoMec: posOperMotoMec,
        tipoOperMotoMec: tipoOperMotoMec,
        aplicOperMotoMec: aplicOperMotoMec,
        funcaoOperMotoMec: funcaoOperMotoMec,
      );

  Map<String, dynamic> toMap() {
    return {
      'idOperMotoMec': idOperMotoMec,
      'codOperMotoMec': codOperMotoMec,
      'descrOperMotoMec': descrOperMotoMec,
      'codFuncaoOperMotoMec': codFuncaoOperMotoMec,
      'posOperMotoMec': posOperMotoMec,
      'tipoOperMotoMec': tipoOperMotoMec,
      'aplicOperMotoMec': aplicOperMotoMec,
      'funcaoOperMotoMec': funcaoOperMotoMec,
    };
  }

  factory OperMotoMecModel.fromMap(Map<String, dynamic> map) {
    return OperMotoMecModel(
      idOperMotoMec: map['idOperMotoMec'],
      codOperMotoMec: map['codOperMotoMec'],
      descrOperMotoMec: map['descrOperMotoMec'],
      codFuncaoOperMotoMec: map['codFuncaoOperMotoMec'],
      posOperMotoMec: map['posOperMotoMec'],
      tipoOperMotoMec: map['tipoOperMotoMec'],
      aplicOperMotoMec: map['aplicOperMotoMec'],
      funcaoOperMotoMec: map['funcaoOperMotoMec'],
    );
  }

  String toJson() => json.encode(toMap());

  factory OperMotoMecModel.fromJson(String source) =>
      OperMotoMecModel.fromMap(json.decode(source));
}
