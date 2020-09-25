import 'package:flutter/foundation.dart';

class ComingSoon {
  final String id, title, description, imageUrl;

  ComingSoon({
    @required this.id,
    @required this.title,
    @required this.description,
    @required this.imageUrl,
  });
}

final List<ComingSoon> coming_soon = [
  ComingSoon(
      id: '6',
      title: 'Dora',
      description: 'Ini Deskripsi',
      imageUrl: 'images/movieimages/6.jpg'),
  ComingSoon(
      id: '7',
      title: 'Naruto',
      description: 'Ini Deskripsi',
      imageUrl: 'images/movieimages/7.jpg'),
  ComingSoon(
      id: '8',
      title: 'Saske',
      description: 'Ini Deskripsi',
      imageUrl: 'images/movieimages/8.jpg'),
  ComingSoon(
      id: '9',
      title: 'Gaara',
      description: 'Ini Deskripsi',
      imageUrl: 'images/movieimages/9.jpg'),
  ComingSoon(
      id: '10',
      title: 'Madara',
      description: 'Ini Deskripsi',
      imageUrl: 'images/movieimages/10.jpg'),
];
