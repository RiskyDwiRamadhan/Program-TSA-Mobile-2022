class Movie {
  late int id;
  late String title;
  late double voteAverage;
  late String overview;
  late String posterPath;

  Movie(this.id, this.title, this.voteAverage, this.overview, this.posterPath);

  Movie.fromJson(Map<String, dynamic> parsedJson) {
    this.id = parsedJson['id'];
    this.title = parsedJson['title'];
    this.voteAverage = parsedJson['vote_average'];
    this.overview = parsedJson['overview'];
    this.posterPath = parsedJson['poster_path'];
  }
}
