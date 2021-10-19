import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/datasources/generic_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/leira_model.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';
import 'package:flutter_pmm/app/shared/web/get_dio.dart';

part 'leira_datasource.g.dart';

@Injectable(singleton: false)
class LeiraDatasourceWeb extends GenericDatasource<LeiraModel> {
  final GetDio getDio;
  LeiraDatasourceWeb(this.getDio);

  @override
  Future<Either<Failure, List<LeiraModel>>> getAllGeneric() async {
    try {
      var data =
          await getDio("http://www.usinasantafe.com.br/fpmmdev/leira.php");
      return data.fold(
          (l) => left(l),
          (r) => r.isEmpty
              ? left(EmptyList())
              : right(
                  List<LeiraModel>.from(r.map((e) => LeiraModel.fromMap(e)))));
    } catch (e) {
      return Left(ErrorDesconhecido());
    }
  }

  @override
  Future<Either<Failure, bool>> addAllGeneric(List<LeiraModel> list) {
    throw UnimplementedError();
  }
}
