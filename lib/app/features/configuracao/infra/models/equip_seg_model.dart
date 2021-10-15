import 'dart:convert';

import 'package:flutter_pmm/app/features/configuracao/domain/entities/equip_seg.dart';

class EquipSegModel extends EquipSeg {
  EquipSegModel({
    idEquip,
    nroEquip,
    codClasseEquip,
    descrClasseEquip,
    tipoEquip,
  }) : super(
          idEquip: idEquip,
          nroEquip: nroEquip,
          codClasseEquip: codClasseEquip,
          descrClasseEquip: descrClasseEquip,
          tipoEquip: tipoEquip,
        );

  Map<String, dynamic> toMap() {
    return {
      'idEquip': idEquip,
      'nroEquip': nroEquip,
      'codClasseEquip': codClasseEquip,
      'descrClasseEquip': descrClasseEquip,
      'tipoEquip': tipoEquip,
    };
  }

  factory EquipSegModel.fromMap(Map<String, dynamic> map) {
    return EquipSegModel(
      idEquip: map['idEquip'],
      nroEquip: map['nroEquip'],
      codClasseEquip: map['codClasseEquip'],
      descrClasseEquip: map['descrClasseEquip'],
      tipoEquip: map['tipoEquip'],
    );
  }

  String toJson() => json.encode(toMap());

  factory EquipSegModel.fromJson(String source) =>
      EquipSegModel.fromMap(json.decode(source));
}
