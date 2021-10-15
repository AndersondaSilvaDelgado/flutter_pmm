import 'dart:convert';

import 'package:flutter_pmm/app/features/configuracao/domain/entities/turno.dart';

class TurnoModel extends Turno {
  TurnoModel({
    idTurno,
    codTurno,
    nroTurno,
    descTurno,
  }) : super(
          idTurno: idTurno,
          codTurno: codTurno,
          nroTurno: nroTurno,
          descTurno: descTurno,
        );

  Map<String, dynamic> toMap() {
    return {
      'idTurno': idTurno,
      'codTurno': codTurno,
      'nroTurno': nroTurno,
      'descTurno': descTurno,
    };
  }

  factory TurnoModel.fromMap(Map<String, dynamic> map) {
    return TurnoModel(
      idTurno: map['idTurno'],
      codTurno: map['codTurno'],
      nroTurno: map['nroTurno'],
      descTurno: map['descTurno'],
    );
  }

  String toJson() => json.encode(toMap());

  factory TurnoModel.fromJson(String source) =>
      TurnoModel.fromMap(json.decode(source));
}
