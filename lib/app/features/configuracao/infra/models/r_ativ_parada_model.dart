import 'dart:convert';

import 'package:flutter_pmm/app/features/configuracao/domain/entities/r_ativ_parada.dart';
import 'package:flutter_pmm/app/shared/database/database.dart';

class RAtivParadaModel extends RAtivParada {
  RAtivParadaModel({
    idRAtivParada,
    idAtiv,
    idParada,
  }) : super(
          idRAtivParada: idRAtivParada,
          idAtiv: idAtiv,
          idParada: idParada,
        );

  RAtivParadaTableData rAtivParadaTableData() => RAtivParadaTableData(
        idRAtivParada: idRAtivParada,
        idAtiv: idAtiv,
        idParada: idParada,
      );

  Map<String, dynamic> toMap() {
    return {
      'idRAtivParada': idRAtivParada,
      'idAtiv': idAtiv,
      'idParada': idParada,
    };
  }

  factory RAtivParadaModel.fromMap(Map<String, dynamic> map) {
    return RAtivParadaModel(
      idRAtivParada: map['idRAtivParada'],
      idAtiv: map['idAtiv'],
      idParada: map['idParada'],
    );
  }

  String toJson() => json.encode(toMap());

  factory RAtivParadaModel.fromJson(String source) =>
      RAtivParadaModel.fromMap(json.decode(source));
}
