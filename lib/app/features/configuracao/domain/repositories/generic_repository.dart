import 'package:dartz/dartz.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';

abstract class GenericRepository<E> {
  Future<Either<ErrorException, List<E>>> getAllGeneric();

  Future<Either<ErrorException, bool>> addAllGeneric(List<E> atividadeList);
}
