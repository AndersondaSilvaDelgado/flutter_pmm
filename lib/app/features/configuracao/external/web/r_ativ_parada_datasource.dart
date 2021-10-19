import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/datasources/generic_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/r_ativ_parada_model.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';
import 'package:flutter_pmm/app/shared/web/get_dio.dart';

part 'r_ativ_parada_datasource.g.dart';

@Injectable(singleton: false)
class RAtivParadaDatasourceWeb extends GenericDatasource<RAtivParadaModel> {
  final GetDio getDio;
  RAtivParadaDatasourceWeb(this.getDio);

  @override
  Future<Either<Failure, List<RAtivParadaModel>>> getAllGeneric() async {
    try {
      var data = await getDio(
          "http://www.usinasantafe.com.br/fpmmdev/rativparada.php");
      return data.fold(
          (l) => left(l),
          (r) => r.isEmpty
              ? left(EmptyList())
              : right(List<RAtivParadaModel>.from(
                  r.map((e) => RAtivParadaModel.fromMap(e)))));
    } catch (e) {
      return Left(ErrorDesconhecido());
    }
  }

  @override
  Future<Either<Failure, bool>> addAllGeneric(List<RAtivParadaModel> list) {
    throw UnimplementedError();
  }
}
