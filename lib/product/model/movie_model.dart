class Movie {
  final int id;
  final String title;
  final String description;
  final String category;
  final String image;

  Movie({
    required this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.image,
  });

  factory Movie.fromJson(Map<String, dynamic> json) => Movie(
        id: json['id'] as int,
        title: json['title'] as String,
        description: json['description'] as String,
        category: json['categoryname'] as String,
        image: json['imagepath'] as String,
      );
}
