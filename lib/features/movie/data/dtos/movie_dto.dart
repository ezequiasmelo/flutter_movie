import 'package:flutter_movie/features/movie/domain/entities/movie_entity.dart';

import 'movie_details_dto.dart';

extension MovieDto on MovieEntity {
  static MovieEntity fromJson(Map json) {
    return MovieEntity(
      averageRating: json['average_rating'] as double,
      backdropPath: json['backdropPath'],
      description: json['description'],
      id: json['id'] as int,
      iso_3166_1: json['iso_3166_1'],
      iso_639_1: json['iso_639_1'],
      name: json['name'],
      page: json['page'] as int,
      posterPath: json['posterPath'],
      public: json['public'] as bool,
      listMovies: List.from(json['results'])
          .map((e) => MovieDetailsDto.fromJson(e))
          .toList(),
      revenue: json['revenue'],
      runtime: json['runtime'],
      sortBy: json['sort_by'],
      totalPages: json['total_pages'],
      totalResults: json['total_results'],
    );
  }

  Map toJson() {
    return {
      'average_rating': averageRating,
      'backdrop_path': backdropPath,
      'description': description,
      'id': id,
      'iso_3166_1': iso_3166_1,
      'iso_639_1': iso_639_1,
      'name': name,
      'page': page,
      'poster_path': posterPath,
      'public': public,
      'results': listMovies.map((e) => e.toJson()).toList(),
      'revenue': revenue,
      'runtime': runtime,
      'sort_by': sortBy,
      'total_pages': totalPages,
      'total_results': totalResults,
    };
  }
}
