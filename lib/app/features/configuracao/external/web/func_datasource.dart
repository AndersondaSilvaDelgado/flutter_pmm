import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/datasources/generic_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/func_model.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';
import 'package:flutter_pmm/app/shared/web/get_dio.dart';

part 'func_datasource.g.dart';

@Injectable(singleton: false)
class FuncDatasourceWeb extends GenericDatasource<FuncModel> {
  final GetDio getDio;
  FuncDatasourceWeb(this.getDio);

  @override
  Future<Either<Failure, List<FuncModel>>> getAllGeneric() async {
    try {
      var data = await getDio(
          "http://www.usinasantafe.com.br/fpmmdev/funcionario.php");
      return data.fold(
          (l) => left(l),
          (r) => r.isEmpty
              ? left(EmptyList())
              : right(
                  List<FuncModel>.from(r.map((e) => FuncModel.fromMap(e)))));
    } catch (e) {
      return Left(ErrorDesconhecido());
    }
  }

  @override
  Future<Either<Failure, bool>> addAllGeneric(List<FuncModel> list) {
    throw UnimplementedError();
  }
}
