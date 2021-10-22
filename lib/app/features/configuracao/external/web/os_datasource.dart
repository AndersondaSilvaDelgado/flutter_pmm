import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/datasources/generic_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/os_model.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';
import 'package:flutter_pmm/app/shared/web/get_dio.dart';

part 'os_datasource.g.dart';

@Injectable(singleton: false)
class OSDatasourceWeb extends GenericDatasource<OSModel> {
  final GetDio getDio;
  OSDatasourceWeb(this.getDio);

  @override
  Future<Either<Failure, List<OSModel>>> getAllGeneric() async {
    try {
      var data = await getDio("http://www.usinasantafe.com.br/fpmmdev/os.php");
      return data.fold(
          (l) => left(l),
          (r) => r.isEmpty
              ? left(EmptyList())
              : right(List<OSModel>.from(r.map((e) => OSModel.fromMap(e)))));
    } catch (e) {
      return Left(ErrorDesconhecido());
    }
  }

  @override
  Future<Either<Failure, bool>> addAllGeneric(List<OSModel> list) {
    throw UnimplementedError();
  }

  @override
  Future<int> add(OSModel entity) {
    // TODO: implement add
    throw UnimplementedError();
  }
}
