// class Movies {
//   late final double averageRating;
//   late final List<Movie> listMovies;

//   Movies({
//     required this.averageRating,
//     required this.listMovies,
//   });

//   Movies.fromJson(Map<String, dynamic> json) {
//     averageRating = json['averageRating'];
//     listMovies =
//         List.from(json['results']).map((e) => Movie.fromJson(e)).toList();
//   }

//   Map<String, dynamic> toJson() {
//     final _data = <String, dynamic>{};
//     _data['averageRating'] = averageRating;
//     _data['results'] = listMovies.map((e) => e.toJson()).toList();
//     return _data;
//   }
// }

// class CreatedBy {
//   late final String gravatarHash;
//   CreatedBy({
//     required this.gravatarHash,
//   });
// }

// class Movie {
//   late final bool adult;

//   Movie({
//     required this.adult,
//   });

//   Movie.fromJson(Map<String, dynamic> json) {
//     adult = json['adult'];
//   }

//   Map<String, dynamic> toJson() {
//     final _data = <String, dynamic>{};
//     _data['adult'] = adult;
//     return _data;
//   }
// }

class Movies {
  Movies({
    required this.averageRating,
    this.backdropPath,
    // required this.comments,
    required this.createdBy,
    required this.description,
    required this.id,
    required this.iso_3166_1,
    required this.iso_639_1,
    required this.name,
    // required this.objectIds,
    required this.page,
    this.posterPath,
    required this.public,
    required this.listMovies,
    required this.revenue,
    required this.runtime,
    required this.sortBy,
    required this.totalPages,
    required this.totalResults,
  });
  late final double averageRating;
  late final Null backdropPath;
  // late final Comments comments;
  late final CreatedBy createdBy;
  late final String description;
  late final int id;
  late final String iso_3166_1;
  late final String iso_639_1;
  late final String name;
  // late final ObjectIds objectIds;
  late final int page;
  late final Null posterPath;
  late final bool public;
  late final List<Movie> listMovies;
  late final int revenue;
  late final int runtime;
  late final String sortBy;
  late final int totalPages;
  late final int totalResults;

  Movies.fromJson(Map<String, dynamic> json) {
    averageRating = json['average_rating'];
    backdropPath = null;
    // comments = Comments.fromJson(json['comments']);
    createdBy = CreatedBy.fromJson(json['created_by']);
    description = json['description'];
    id = json['id'];
    iso_3166_1 = json['iso_3166_1'];
    iso_639_1 = json['iso_639_1'];
    name = json['name'];
    // objectIds = ObjectIds.fromJson(json['object_ids']);
    page = json['page'];
    posterPath = null;
    public = json['public'];
    listMovies =
        List.from(json['results']).map((e) => Movie.fromJson(e)).toList();
    revenue = json['revenue'];
    runtime = json['runtime'];
    sortBy = json['sort_by'];
    totalPages = json['total_pages'];
    totalResults = json['total_results'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['average_rating'] = averageRating;
    _data['backdrop_path'] = backdropPath;
    // _data['comments'] = comments.toJson();
    _data['created_by'] = createdBy.toJson();
    _data['description'] = description;
    _data['id'] = id;
    _data['iso_3166_1'] = iso_3166_1;
    _data['iso_639_1'] = iso_639_1;
    _data['name'] = name;
    // _data['object_ids'] = objectIds.toJson();
    _data['page'] = page;
    _data['poster_path'] = posterPath;
    _data['public'] = public;
    _data['results'] = listMovies.map((e) => e.toJson()).toList();
    _data['revenue'] = revenue;
    _data['runtime'] = runtime;
    _data['sort_by'] = sortBy;
    _data['total_pages'] = totalPages;
    _data['total_results'] = totalResults;
    return _data;
  }
}

// class Comments {
//   Comments({
//      this.movie:615,
//   });
//   late final Null movie:615;

//   Comments.fromJson(Map<String, dynamic> json){
//     movie:615 = null;
//   }

//   Map<String, dynamic> toJson() {
//     final _data = <String, dynamic>{};
//     _data['movie:615'] = movie:615;
//     return _data;
//   }
// }

class CreatedBy {
  CreatedBy({
    required this.gravatarHash,
    required this.id,
    required this.username,
  });
  late final String gravatarHash;
  late final String id;
  late final String username;

  CreatedBy.fromJson(Map<String, dynamic> json) {
    gravatarHash = json['gravatar_hash'];
    id = json['id'];
    username = json['username'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['gravatar_hash'] = gravatarHash;
    _data['id'] = id;
    _data['username'] = username;
    return _data;
  }
}

// class ObjectIds {
//   ObjectIds({
//     required this.movie:615,
//   });
//   late final String movie:615;

//   ObjectIds.fromJson(Map<String, dynamic> json){
//     movie:615 = json['movie:615'];
//   }

//   Map<String, dynamic> toJson() {
//     final _data = <String, dynamic>{};
//     _data['movie:615'] = movie:615;
//     return _data;
//   }
// }

class Movie {
  Movie({
    required this.adult,
    required this.backdropPath,
    required this.genreIds,
    required this.id,
    required this.mediaType,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.releaseDate,
    required this.title,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
  });
  late final bool adult;
  late final String backdropPath;
  late final List<int> genreIds;
  late final int id;
  late final String mediaType;
  late final String originalLanguage;
  late final String originalTitle;
  late final String overview;
  late final double popularity;
  late final String posterPath;
  late final String releaseDate;
  late final String title;
  late final bool video;
  late final num voteAverage;
  late final int voteCount;

  Movie.fromJson(Map<String, dynamic> json) {
    adult = json['adult'];
    backdropPath = json['backdrop_path'];
    genreIds = List.castFrom<dynamic, int>(json['genre_ids']);
    id = json['id'];
    mediaType = json['media_type'];
    originalLanguage = json['original_language'];
    originalTitle = json['original_title'];
    overview = json['overview'];
    popularity = json['popularity'];
    posterPath = json['poster_path'];
    releaseDate = json['release_date'];
    title = json['title'];
    video = json['video'];
    voteAverage = json['vote_average'];
    voteCount = json['vote_count'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['adult'] = adult;
    _data['backdrop_path'] = backdropPath;
    _data['genre_ids'] = genreIds;
    _data['id'] = id;
    _data['media_type'] = mediaType;
    _data['original_language'] = originalLanguage;
    _data['original_title'] = originalTitle;
    _data['overview'] = overview;
    _data['popularity'] = popularity;
    _data['poster_path'] = posterPath;
    _data['release_date'] = releaseDate;
    _data['title'] = title;
    _data['video'] = video;
    _data['vote_average'] = voteAverage;
    _data['vote_count'] = voteCount;
    return _data;
  }
}
