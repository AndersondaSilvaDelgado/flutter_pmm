import 'package:dartz/dartz.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';

abstract class GenericRepository<E> {
  Future<Either<Failure, List<E>>> getAllGeneric();

  Future<Either<Failure, bool>> addAllGeneric(List<E> list);
}
