import 'dart:convert';

import 'package:flutter_pmm/app/features/configuracao/domain/entities/r_equip_ativ.dart';

class REquipAtivModel extends REquipAtiv {
  REquipAtivModel({
    idREquipAtiv,
    idEquip,
    idAtiv,
  }) : super(
          idREquipAtiv: idREquipAtiv,
          idEquip: idEquip,
          idAtiv: idAtiv,
        );

  Map<String, dynamic> toMap() {
    return {
      'idREquipAtiv': idREquipAtiv,
      'idEquip': idEquip,
      'idAtiv': idAtiv,
    };
  }

  factory REquipAtivModel.fromMap(Map<String, dynamic> map) {
    return REquipAtivModel(
      idREquipAtiv: map['idREquipAtiv'],
      idEquip: map['idEquip'],
      idAtiv: map['idAtiv'],
    );
  }

  String toJson() => json.encode(toMap());

  factory REquipAtivModel.fromJson(String source) =>
      REquipAtivModel.fromMap(json.decode(source));
}
