import 'package:dartz/dartz.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';

abstract class GenericDatasource<T> {
  Future<Either<Failure, List<T>>> getAllGeneric();

  Future<Either<Failure, bool>> addAllGeneric(List<T> list);
}
