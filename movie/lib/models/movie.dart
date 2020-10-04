import 'package:flutter/foundation.dart';

class Movie {
  final String id, title, description, imageUrl;

  Movie({
    @required this.id,
    @required this.title,
    @required this.description,
    @required this.imageUrl,
  });
}

final List<Movie> top_movie = [
  Movie(
      id: '1',
      title: 'Dora',
      description: 'Ini Deskripsi',
      imageUrl: 'images/movieimages/1.jpg'),
  Movie(
      id: '2',
      title: 'Naruto',
      description: 'Ini Deskripsi',
      imageUrl: 'images/movieimages/2.jpg'),
  Movie(
      id: '3',
      title: 'Saske',
      description: 'Ini Deskripsi',
      imageUrl: 'images/movieimages/3.jpg'),
  Movie(
      id: '4',
      title: 'Gaara',
      description: 'Ini Deskripsi',
      imageUrl: 'images/movieimages/4.jpg'),
  Movie(
      id: '5',
      title: 'Madara',
      description: 'Ini Deskripsi',
      imageUrl: 'images/movieimages/5.jpg'),
];
