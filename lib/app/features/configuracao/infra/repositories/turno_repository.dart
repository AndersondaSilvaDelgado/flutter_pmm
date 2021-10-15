import 'package:dartz/dartz.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/entities/turno.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/errors/errors.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/repositories/generic_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/external/web/turno_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/turno_model.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';

class TurnoRepositoryImpl extends GenericRepository<Turno> {
  final TurnoDatasourceWeb datasource;
  TurnoRepositoryImpl(this.datasource);

  @override
  Future<Either<ErrorException, List<Turno>>> getAllGeneric() async {
    try {
      List<TurnoModel> dados = await datasource.getAllGeneric();
      return Right(dados);
    } catch (e) {
      return Left(ErrorSearch());
    }
  }

  @override
  Future<Either<ErrorException, bool>> addAllGeneric(
      List<Turno> atividadeList) {
    // TODO: implement addAllGeneric
    throw UnimplementedError();
  }
}
