import 'package:dartz/dartz.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';

abstract class GenericDatasource<T> {
  Future<List<T>> getAllGeneric();

  Future<Either<ErrorException, bool>> addAllGeneric(List<T> list);
}
