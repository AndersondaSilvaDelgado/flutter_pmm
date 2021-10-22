import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/datasources/generic_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/frente_model.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';
import 'package:flutter_pmm/app/shared/web/get_dio.dart';

part 'frente_datasource.g.dart';

@Injectable(singleton: false)
class FrenteDatasourceWeb extends GenericDatasource<FrenteModel> {
  final GetDio getDio;
  FrenteDatasourceWeb(this.getDio);

  @override
  Future<Either<Failure, List<FrenteModel>>> getAllGeneric() async {
    try {
      var data =
          await getDio("http://www.usinasantafe.com.br/fpmmdev/frente.php");
      return data.fold(
          (l) => left(l),
          (r) => r.isEmpty
              ? left(EmptyList())
              : right(List<FrenteModel>.from(
                  r.map((e) => FrenteModel.fromMap(e)))));
    } catch (e) {
      return Left(ErrorDesconhecido());
    }
  }

  @override
  Future<Either<Failure, bool>> addAllGeneric(List<FrenteModel> list) {
    throw UnimplementedError();
  }

  @override
  Future<int> add(FrenteModel entity) {
    // TODO: implement add
    throw UnimplementedError();
  }
}
