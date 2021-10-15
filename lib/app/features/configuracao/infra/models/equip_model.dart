import 'dart:convert';

import 'package:flutter_pmm/app/features/configuracao/domain/entities/equip.dart';

class EquipModel extends Equip {
  EquipModel({
    idEquip,
    nroEquip,
    codClasseEquip,
    descrClasseEquip,
    codTurno,
    idCheckList,
    tipoEquipFert,
    horimetroEquip,
    medicaoEquipFert,
    tipoEquip,
    classifEquip,
  }) : super(
          idEquip: idEquip,
          nroEquip: nroEquip,
          codClasseEquip: codClasseEquip,
          descrClasseEquip: descrClasseEquip,
          codTurno: codTurno,
          idCheckList: idCheckList,
          tipoEquipFert: tipoEquipFert,
          horimetroEquip: horimetroEquip,
          medicaoEquipFert: medicaoEquipFert,
          tipoEquip: tipoEquip,
          classifEquip: classifEquip,
        );

  Map<String, dynamic> toMap() {
    return {
      'idEquip': idEquip,
      'nroEquip': nroEquip,
      'codClasseEquip': codClasseEquip,
      'descrClasseEquip': descrClasseEquip,
      'codTurno': codTurno,
      'idCheckList': idCheckList,
      'tipoEquipFert': tipoEquipFert,
      'horimetroEquip': horimetroEquip,
      'medicaoEquipFert': medicaoEquipFert,
      'tipoEquip': tipoEquip,
      'classifEquip': classifEquip,
    };
  }

  factory EquipModel.fromMap(Map<String, dynamic> map) {
    return EquipModel(
      idEquip: map['idEquip'],
      nroEquip: map['nroEquip'],
      codClasseEquip: map['codClasseEquip'],
      descrClasseEquip: map['descrClasseEquip'],
      codTurno: map['codTurno'],
      idCheckList: map['idCheckList'],
      tipoEquipFert: map['tipoEquipFert'],
      horimetroEquip: map['horimetroEquip'],
      medicaoEquipFert: map['medicaoEquipFert'],
      tipoEquip: map['tipoEquip'],
      classifEquip: map['classifEquip'],
    );
  }

  String toJson() => json.encode(toMap());

  factory EquipModel.fromJson(String source) =>
      EquipModel.fromMap(json.decode(source));
}
