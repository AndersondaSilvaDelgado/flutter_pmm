import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/datasources/generic_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/parada_model.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';
import 'package:flutter_pmm/app/shared/web/get_dio.dart';

part 'parada_datasource.g.dart';

@Injectable(singleton: false)
class ParadaDatasourceWeb extends GenericDatasource<ParadaModel> {
  final GetDio getDio;
  ParadaDatasourceWeb(this.getDio);

  @override
  Future<Either<Failure, List<ParadaModel>>> getAllGeneric() async {
    try {
      var data =
          await getDio("http://www.usinasantafe.com.br/fpmmdev/parada.php");
      return data.fold(
          (l) => left(l),
          (r) => r.isEmpty
              ? left(EmptyList())
              : right(List<ParadaModel>.from(
                  r.map((e) => ParadaModel.fromMap(e)))));
    } catch (e) {
      return Left(ErrorDesconhecido());
    }
  }

  @override
  Future<Either<Failure, bool>> addAllGeneric(List<ParadaModel> list) {
    throw UnimplementedError();
  }

  @override
  Future<int> add(ParadaModel entity) {
    // TODO: implement add
    throw UnimplementedError();
  }
}
