import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_movie/core/domain/services/http_service.dart';

class DioHttpServiceImp implements HttpService {
  late Dio _dio;

  DioHttpServiceImp() {
    _dio = Dio(
      BaseOptions(
        baseUrl: dotenv.env['BASE_URL_API']!,
        headers: {
          'content-type': 'application/json;charset=utf-8',
          'authorization': 'Bearer ${dotenv.env['AUTHORIZATION_TOKEN_API']}',
        },
      ),
    );
  }

  @override
  Future<Response<T>> get<T>(String path,
      {Map<String, dynamic>? queryParameters}) {
    return _dio.get<T>(
      path,
      queryParameters: queryParameters,
    );
  }
}
