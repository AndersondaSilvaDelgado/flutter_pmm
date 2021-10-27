import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/datasources/generic_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/oper_motomec_model.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';
import 'package:flutter_pmm/app/shared/web/get_dio.dart';

part 'oper_motomec_datasource.g.dart';

@Injectable(singleton: false)
class OperMotoMecDatasourceWeb extends GenericDatasource<OperMotoMecModel> {
  final GetDio getDio;
  OperMotoMecDatasourceWeb(this.getDio);

  @override
  Future<Either<Failure, List>> getAllGeneric() async {
    var data = await getDio(
        "http://www.usinasantafe.com.br/pmm_api_dev/view/opermotomec.php");
    return data.fold(
      (l) => left(l),
      (r) => r.isEmpty ? left(EmptyList()) : right(r),
    );
  }

  @override
  Future<Either<Failure, bool>> addAllGeneric(List<OperMotoMecModel> list) {
    throw UnimplementedError();
  }

  @override
  Future<int> add(OperMotoMecModel entity) {
    // TODO: implement add
    throw UnimplementedError();
  }
}
