import 'package:dartz/dartz.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/entities/r_equip_ativ.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/errors/errors.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/repositories/generic_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/external/web/r_equip_ativ_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/r_equip_ativ_model.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';

class REquipAtivRepositoryImpl extends GenericRepository<REquipAtiv> {
  final REquipAtivDatasourceWeb datasource;
  REquipAtivRepositoryImpl(this.datasource);

  @override
  Future<Either<ErrorException, List<REquipAtiv>>> getAllGeneric() async {
    try {
      List<REquipAtivModel> dados = await datasource.getAllGeneric();
      return Right(dados);
    } catch (e) {
      return Left(ErrorSearch());
    }
  }

  @override
  Future<Either<ErrorException, bool>> addAllGeneric(
      List<REquipAtiv> atividadeList) {
    // TODO: implement addAllGeneric
    throw UnimplementedError();
  }
}
