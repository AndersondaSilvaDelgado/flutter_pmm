import 'package:dartz/dartz.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/entities/equip.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/errors/errors.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/repositories/generic_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/external/web/equip_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/equip_model.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';

class EquipRepositoryImpl extends GenericRepository<Equip> {
  final EquipDatasourceWeb datasourceWeb;
  EquipRepositoryImpl(this.datasourceWeb);

  @override
  Future<Either<ErrorException, List<Equip>>> getAllGeneric() async {
    try {
      List<EquipModel> dados = await datasourceWeb.getAllGeneric();
      return Right(dados);
    } catch (e) {
      return Left(ErrorSearch());
    }
  }

  @override
  Future<Either<ErrorException, bool>> addAllGeneric(
      List<Equip> atividadeList) {
    // TODO: implement addAllGeneric
    throw UnimplementedError();
  }
}
