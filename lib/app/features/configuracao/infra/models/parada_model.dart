import 'dart:convert';

import 'package:flutter_pmm/app/features/configuracao/domain/entities/parada.dart';
import 'package:flutter_pmm/app/shared/database/database.dart';

class ParadaModel extends Parada {
  ParadaModel({
    idParada,
    codParada,
    descrParada,
  }) : super(
          idParada: idParada,
          codParada: codParada,
          descrParada: descrParada,
        );

  ParadaTableData paradaTableData() => ParadaTableData(
        idParada: idParada,
        codParada: codParada,
        descrParada: descrParada,
      );

  Map<String, dynamic> toMap() {
    return {
      'idParada': idParada,
      'codParada': codParada,
      'descrParada': descrParada,
    };
  }

  factory ParadaModel.fromMap(Map<String, dynamic> map) {
    return ParadaModel(
      idParada: map['idParada'],
      codParada: map['codParada'],
      descrParada: map['descrParada'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ParadaModel.fromJson(String source) =>
      ParadaModel.fromMap(json.decode(source));
}
