class Detail {
  String title;
  String overview;
  String releaseDate;
  String genre;
  String? runtime;
  String posterPath;
  int? seasons;

  Detail({
    required this.title,
    required this.overview,
    required this.releaseDate,
    required this.genre,
    required this.runtime,
    required this.seasons,
    required this.posterPath
  });
}