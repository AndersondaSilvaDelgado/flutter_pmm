import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/datasources/generic_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/equip_seg_model.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';
import 'package:flutter_pmm/app/shared/web/get_dio.dart';

part 'equip_seg_datasource.g.dart';

@Injectable(singleton: false)
class EquipSegDatasourceWeb extends GenericDatasource<EquipSegModel> {
  final GetDio getDio;
  EquipSegDatasourceWeb(this.getDio);

  @override
  Future<Either<Failure, List<EquipSegModel>>> getAllGeneric() async {
    try {
      var data =
          await getDio("http://www.usinasantafe.com.br/fpmmdev/equipseg.php");
      return data.fold(
          (l) => left(l),
          (r) => r.isEmpty
              ? left(EmptyList())
              : right(List<EquipSegModel>.from(
                  r.map((e) => EquipSegModel.fromMap(e)))));
    } catch (e) {
      return Left(ErrorDesconhecido());
    }
  }

  @override
  Future<Either<Failure, bool>> addAllGeneric(List<EquipSegModel> list) {
    throw UnimplementedError();
  }
}
