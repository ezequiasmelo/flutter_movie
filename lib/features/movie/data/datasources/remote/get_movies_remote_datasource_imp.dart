import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:flutter_movie/core/domain/services/http_service.dart';
import 'package:flutter_movie/core/utils/apis.utils.dart';
import 'package:flutter_movie/features/movie/data/datasources/get_movies_datasource.dart';
import 'package:flutter_movie/features/movie/domain/entities/movie_entity.dart';

import '../../dtos/movie_dto.dart';

class GetMoviesRemoteDataSourceImp implements GetMoviesDataSource {
  final HttpService _httpService;
  GetMoviesRemoteDataSourceImp(this._httpService);

  @override
  Future<Either<Exception, MovieEntity>> call() async {
    try {
      await Future.delayed(Duration(seconds: 3));
      var result = await _httpService.get(API.REQUEST_MOVIE_LIST);
      log('Buscou remoto');
      return Right(MovieDto.fromJson(result.data));
    } catch (e) {
      return Left(Exception('Falha no datasource'));
    }
  }
}
