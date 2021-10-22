import 'dart:convert';

import 'package:flutter_pmm/app/features/configuracao/domain/entities/os.dart';
import 'package:flutter_pmm/app/shared/database/database.dart';

class OSModel extends OS {
  OSModel({
    id,
    idOS,
    nroOS,
    idLibOS,
    idProprAgr,
    descrProprAgr,
    areaProgrOS,
    dtInicProgr,
    dtFimProgr,
    tipoOS,
    idAtiv,
    idAtivOS,
  }) : super(
          id: id,
          idOS: idOS,
          nroOS: nroOS,
          idLibOS: idLibOS,
          idProprAgr: idProprAgr,
          descrProprAgr: descrProprAgr,
          areaProgrOS: areaProgrOS,
          dtInicProgr: dtInicProgr,
          dtFimProgr: dtFimProgr,
          tipoOS: tipoOS,
          idAtiv: idAtiv,
          idAtivOS: idAtivOS,
        );

  OSTableData osTableData() => OSTableData(
        id: id,
        idOS: idOS,
        nroOS: nroOS,
        idLibOS: idLibOS,
        idProprAgr: idProprAgr,
        descrProprAgr: descrProprAgr,
        areaProgrOS: areaProgrOS,
        dtInicProgr: dtInicProgr,
        dtFimProgr: dtFimProgr,
        tipoOS: tipoOS,
        idAtiv: idAtiv,
        idAtivOS: idAtivOS,
      );

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'idOS': idOS,
      'nroOS': nroOS,
      'idLibOS': idLibOS,
      'idProprAgr': idProprAgr,
      'descrProprAgr': descrProprAgr,
      'areaProgrOS': areaProgrOS,
      'dtInicProgr': dtInicProgr,
      'dtFimProgr': dtFimProgr,
      'tipoOS': tipoOS,
      'idAtiv': idAtiv,
      'idAtivOS': idAtivOS,
    };
  }

  factory OSModel.fromMap(Map<String, dynamic> map) {
    return OSModel(
      id: map['id'],
      idOS: map['idOS'],
      nroOS: map['nroOS'],
      idLibOS: map['idLibOS'],
      idProprAgr: map['idProprAgr'],
      descrProprAgr: map['descrProprAgr'],
      areaProgrOS: map['areaProgrOS'],
      dtInicProgr: map['dtInicProgr'],
      dtFimProgr: map['dtFimProgr'],
      tipoOS: map['tipoOS'],
      idAtiv: map['idAtiv'],
      idAtivOS: map['idAtivOS'],
    );
  }

  String toJson() => json.encode(toMap());

  factory OSModel.fromJson(String source) =>
      OSModel.fromMap(json.decode(source));
}
