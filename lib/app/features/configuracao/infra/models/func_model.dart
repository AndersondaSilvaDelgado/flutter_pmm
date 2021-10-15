import 'dart:convert';

import 'package:flutter_pmm/app/features/configuracao/domain/entities/func.dart';

class FuncModel extends Func {
  FuncModel({
    matricFunc,
    nomeFunc,
  }) : super(
          matricFunc: matricFunc,
          nomeFunc: nomeFunc,
        );

  Map<String, dynamic> toMap() {
    return {
      'matricFunc': matricFunc,
      'nomeFunc': nomeFunc,
    };
  }

  factory FuncModel.fromMap(Map<String, dynamic> map) {
    return FuncModel(
      matricFunc: map['matricFunc'],
      nomeFunc: map['nomeFunc'],
    );
  }

  String toJson() => json.encode(toMap());

  factory FuncModel.fromJson(String source) =>
      FuncModel.fromMap(json.decode(source));
}
