import 'package:flutter_movie/features/movie/domain/entities/movie_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_movie/features/movie/domain/repositories/get_movies_repository.dart';

import '../datasources/get_movies_datasource.dart';

class GetMoviesRepositoryImp implements GetMoviesRepository {
  final GetMoviesDataSource _getMoviesDataSource;
  GetMoviesRepositoryImp(this._getMoviesDataSource);

  @override
  Future<Either<Exception, MovieEntity>> call() async {
    return await _getMoviesDataSource();
  }
}
