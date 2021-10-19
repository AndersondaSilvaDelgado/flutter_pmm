import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';
import 'package:flutter_pmm/app/shared/web/logging.dart';

part 'get_dio.g.dart';

@Injectable(singleton: false)
class GetDio {
  final Dio dio;
  GetDio(this.dio);

  Future<Either<Failure, List>> call(String url) async {
    try {
      final Dio _dio = Dio(
        BaseOptions(
          baseUrl: url,
          connectTimeout: 5000,
          receiveTimeout: 3000,
        ),
      )..interceptors.add(Logging());
      var result = await _dio.get('');
      if (result.statusCode == 200) {
        return Right(result.data['dados'] as List);
      } else {
        return Left(ErrorHttpException());
      }
    } catch (e) {
      return Left(ErrorHttpException());
    }
  }
}
