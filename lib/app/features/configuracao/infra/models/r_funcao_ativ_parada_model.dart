import 'dart:convert';

import 'package:flutter_pmm/app/features/configuracao/domain/entities/r_funcao_ativ_parada.dart';
import 'package:flutter_pmm/app/shared/database/database.dart';

class RFuncaoAtivParadaModel extends RFuncaoAtivParada {
  RFuncaoAtivParadaModel({
    idRFuncaoAtivParada,
    idAtivParada,
    codFuncao,
    tipoFuncao,
  }) : super(
          idRFuncaoAtivParada: idRFuncaoAtivParada,
          idAtivParada: idAtivParada,
          codFuncao: codFuncao,
          tipoFuncao: tipoFuncao,
        );

  RFuncaoAtivParadaTableData rFuncaoAtivParadaTableData() =>
      RFuncaoAtivParadaTableData(
        idRFuncaoAtivParada: idRFuncaoAtivParada,
        idAtivParada: idAtivParada,
        codFuncao: codFuncao,
        tipoFuncao: tipoFuncao,
      );

  Map<String, dynamic> toMap() {
    return {
      'idRFuncaoAtivParada': idRFuncaoAtivParada,
      'idAtivParada': idAtivParada,
      'codFuncao': codFuncao,
      'tipoFuncao': tipoFuncao,
    };
  }

  factory RFuncaoAtivParadaModel.fromMap(Map<String, dynamic> map) {
    return RFuncaoAtivParadaModel(
      idRFuncaoAtivParada: map['idRFuncaoAtivParada'],
      idAtivParada: map['idAtivParada'],
      codFuncao: map['codFuncao'],
      tipoFuncao: map['tipoFuncao'],
    );
  }

  String toJson() => json.encode(toMap());

  factory RFuncaoAtivParadaModel.fromJson(String source) =>
      RFuncaoAtivParadaModel.fromMap(json.decode(source));
}
