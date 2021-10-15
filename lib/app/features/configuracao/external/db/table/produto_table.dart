import 'package:moor_flutter/moor_flutter.dart';

class ProdutoTable extends Table {
  IntColumn get idProduto => integer()();
  TextColumn get codProduto => text()();
  TextColumn get descProduto => text()();
}
