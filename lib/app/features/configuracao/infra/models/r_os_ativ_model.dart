import 'dart:convert';

import 'package:flutter_pmm/app/features/configuracao/domain/entities/r_os_ativ.dart';

class ROSAtivModel extends ROSAtiv {
  ROSAtivModel({
    idROSAtiv,
    nroOS,
    idAtiv,
  }) : super(
          idROSAtiv: idROSAtiv,
          nroOS: nroOS,
          idAtiv: idAtiv,
        );

  Map<String, dynamic> toMap() {
    return {
      'idROSAtiv': idROSAtiv,
      'nroOS': nroOS,
      'idAtiv': idAtiv,
    };
  }

  factory ROSAtivModel.fromMap(Map<String, dynamic> map) {
    return ROSAtivModel(
      idROSAtiv: map['idROSAtiv'],
      nroOS: map['nroOS'],
      idAtiv: map['idAtiv'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ROSAtivModel.fromJson(String source) =>
      ROSAtivModel.fromMap(json.decode(source));
}
