class Movie{
  final int id;
  final String title;
  final String overview;
  final String posterPath;
  final String backdropDate;
  final String releaseDate;
  final double voteAverage;

  Movie({
    required this.id, 
    required this.title, 
    required this.overview, 
    required this.posterPath, 
    required this.backdropDate, 
    required this.releaseDate, 
    required this.voteAverage
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      id: json ['id'],
      title: json['title'],
      overview: json['overview'],
      posterPath: json['poster_path'],
      backdropDate: json['backdrop_path'],
      releaseDate: json['release_date'],
      voteAverage: json['vote_average'].toDouble(),
    );
  }
}