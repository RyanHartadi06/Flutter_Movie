import 'package:flutter/foundation.dart';

class TopRated {
  final String id, title, description, imageUrl;

  TopRated({
    @required this.id,
    @required this.title,
    @required this.description,
    @required this.imageUrl,
  });
}

final List<TopRated> top_rated_movie = [
  TopRated(
      id: '1',
      title: 'Dora',
      description: 'Ini Deskripsi',
      imageUrl: 'images/movieimages/1.jpg'),
  TopRated(
      id: '2',
      title: 'Naruto',
      description: 'Ini Deskripsi',
      imageUrl: 'images/movieimages/2.jpg'),
  TopRated(
      id: '3',
      title: 'Saske',
      description: 'Ini Deskripsi',
      imageUrl: 'images/movieimages/3.jpg'),
  TopRated(
      id: '4',
      title: 'Gaara',
      description: 'Ini Deskripsi',
      imageUrl: 'images/movieimages/4.jpg'),
  TopRated(
      id: '5',
      title: 'Madara',
      description: 'Ini Deskripsi',
      imageUrl: 'images/movieimages/5.jpg'),
];
