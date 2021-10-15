import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'get_dio.g.dart';

@Injectable(singleton: false)
class GetDio {
  final Dio dio;
  GetDio(this.dio);

  Future<List> call(String url) async {
    print('Chegou aki');
    var result = await dio.get(url);
    print(result);
    if (result.statusCode == 200) {
      var jsonList = result.data['dados'] as List;
      return jsonDecode(jsonList.toString());
    } else {
      throw Exception();
    }
  }
}
