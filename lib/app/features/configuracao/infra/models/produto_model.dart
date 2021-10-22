import 'dart:convert';

import 'package:flutter_pmm/app/features/configuracao/domain/entities/produto.dart';
import 'package:flutter_pmm/app/shared/database/database.dart';

class ProdutoModel extends Produto {
  ProdutoModel({
    idProduto,
    codProduto,
    descProduto,
  }) : super(
          idProduto: idProduto,
          codProduto: codProduto,
          descProduto: descProduto,
        );

  ProdutoTableData produtoTableData() => ProdutoTableData(
        idProduto: idProduto,
        codProduto: codProduto,
        descProduto: descProduto,
      );

  Map<String, dynamic> toMap() {
    return {
      'idProduto': idProduto,
      'codProduto': codProduto,
      'descProduto': descProduto,
    };
  }

  factory ProdutoModel.fromMap(Map<String, dynamic> map) {
    return ProdutoModel(
      idProduto: map['idProduto'],
      codProduto: map['codProduto'],
      descProduto: map['descProduto'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ProdutoModel.fromJson(String source) =>
      ProdutoModel.fromMap(json.decode(source));
}
