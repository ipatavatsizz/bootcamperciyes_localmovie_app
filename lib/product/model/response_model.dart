import 'package:bootcamperciyes_localmovie_app/product/model/movie_model.dart';

class Response {
  final List<Movie> movies;

  Response({required this.movies});

  factory Response.fromJson(Map<String, dynamic> json) => Response(
        movies:
            List.from(json['filmler']).map((e) => Movie.fromJson(e)).toList(),
      );
}
