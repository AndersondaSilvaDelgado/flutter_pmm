import 'dart:convert';

import 'package:flutter_pmm/app/features/configuracao/domain/entities/leira.dart';
import 'package:flutter_pmm/app/shared/database/database.dart';

class LeiraModel extends Leira {
  LeiraModel({
    idLeira,
    codLeira,
    statusLeira,
  }) : super(
          idLeira: idLeira,
          codLeira: codLeira,
          statusLeira: statusLeira,
        );

  LeiraTableData leiraTableData() => LeiraTableData(
        idLeira: idLeira,
        codLeira: codLeira,
        statusLeira: statusLeira,
      );

  Map<String, dynamic> toMap() {
    return {
      'idLeira': idLeira,
      'codLeira': codLeira,
      'statusLeira': statusLeira,
    };
  }

  factory LeiraModel.fromMap(Map<String, dynamic> map) {
    return LeiraModel(
      idLeira: map['idLeira'],
      codLeira: map['codLeira'],
      statusLeira: map['statusLeira'],
    );
  }

  String toJson() => json.encode(toMap());

  factory LeiraModel.fromJson(String source) =>
      LeiraModel.fromMap(json.decode(source));
}
