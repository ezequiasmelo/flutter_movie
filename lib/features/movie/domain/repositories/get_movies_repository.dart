import 'package:dartz/dartz.dart';
import 'package:flutter_movie/features/movie/domain/entities/movie_entity.dart';

abstract class GetMoviesRepository {
  Future<Either<Exception, MovieEntity>> call();
}
