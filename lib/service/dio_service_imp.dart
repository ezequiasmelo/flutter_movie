import 'package:dio/dio.dart';
import 'package:dio/src/dio.dart';
import 'package:flutter_movie/service/dio_service.dart';

class DioServiceImp implements DioService {
  @override
  Dio getDio() {
    return Dio(BaseOptions(
      baseUrl: 'https://api.themoviedb.org/4/',
      headers: {
        'content-type': 'application/json;charset=utf-8',
        'authorization': 'Bearer '
      },
    ));
  }
}
