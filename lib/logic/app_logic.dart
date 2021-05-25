import 'package:moviemax_flutter/model/detail.dart';
import 'package:moviemax_flutter/model/movie.dart';
import 'package:moviemax_flutter/model/tv_show.dart';

class AppLogic {
  Detail entityToDetailModel(Movie? movie, TvShow? tvShow) {
    if (movie != null) {
      return Detail(title: movie.title,
          overview: movie.overview,
          releaseDate: movie.releaseDate,
          genre: movie.genre,
          runtime: movie.runtime,
          seasons: null,
          posterPath: movie.posterPath);
    } else if (tvShow != null) {
      return Detail(title: tvShow.title,
          overview: tvShow.overview,
          releaseDate: tvShow.releaseDate,
          genre: tvShow.genre,
          runtime: null,
          seasons: tvShow.seasons,
          posterPath: tvShow.posterPath);
    } else {
      return Detail(title: "Error",
          overview: "Both TV Show and Movie is Null.",
          releaseDate: "releaseDate",
          genre: "genre",
          runtime: null,
          seasons: null,
          posterPath: "posterPath");
    }
  }
}