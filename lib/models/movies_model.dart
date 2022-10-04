class Movies {
  late final double averageRating;
  late final List<Movie> listMovies;

  Movies({
    required this.averageRating,
    required this.listMovies,
  });

  Movies.fromJson(Map<String, dynamic> json) {
    averageRating = json['averageRating'];
    listMovies =
        List.from(json['results']).map((e) => Movie.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['averageRating'] = averageRating;
    _data['results'] = listMovies.map((e) => e.toJson()).toList();
    return _data;
  }
}

class CreatedBy {
  late final String gravatarHash;
  CreatedBy({
    required this.gravatarHash,
  });
}

class Movie {
  late final bool adult;

  Movie({
    required this.adult,
  });

  Movie.fromJson(Map<String, dynamic> json) {
    adult = json['adult'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['adult'] = adult;
    return _data;
  }
}
