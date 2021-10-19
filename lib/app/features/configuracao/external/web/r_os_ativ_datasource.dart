import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/datasources/generic_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/r_os_ativ_model.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';
import 'package:flutter_pmm/app/shared/web/get_dio.dart';

part 'r_os_ativ_datasource.g.dart';

@Injectable(singleton: false)
class ROSAtivDatasourceWeb extends GenericDatasource<ROSAtivModel> {
  final GetDio getDio;
  ROSAtivDatasourceWeb(this.getDio);

  @override
  Future<Either<Failure, List<ROSAtivModel>>> getAllGeneric() async {
    try {
      var data =
          await getDio("http://www.usinasantafe.com.br/fpmmdev/rosativ.php");
      return data.fold(
          (l) => left(l),
          (r) => r.isEmpty
              ? left(EmptyList())
              : right(List<ROSAtivModel>.from(
                  r.map((e) => ROSAtivModel.fromMap(e)))));
    } catch (e) {
      return Left(ErrorDesconhecido());
    }
  }

  @override
  Future<Either<Failure, bool>> addAllGeneric(List<ROSAtivModel> list) {
    throw UnimplementedError();
  }
}
