import 'package:flutter/foundation.dart';

class Movie {
  final String id;
  final String title;
  final String description;
  final List<String> kategori;
  final String price;
  final String rating;
  final String imageUrl;

  Movie({
    @required this.id,
    @required this.title,
    @required this.kategori,
    @required this.description,
    @required this.rating,
    @required this.price,
    @required this.imageUrl,
  });
}

final List<Movie> movie_list = [
  Movie(
      id: '1',
      kategori: ['1', '2'],
      title: 'Naruto',
      description: 'Ini Film Naruto',
      rating: '7',
      price: '2000',
      imageUrl: 'images/movieimages/1.jpg'),
  Movie(
      id: '2',
      kategori: ['3', '4'],
      title: 'x-men',
      description: 'Ini Film x-men',
      rating: '7',
      price: '2000',
      imageUrl: 'images/movieimages/2.jpg'),
  Movie(
      id: '3',
      kategori: ['5', '6'],
      title: 'Ninja',
      description: 'Ini Film Ninja',
      rating: '7',
      price: '2000',
      imageUrl: 'images/movieimages/3.jpg'),
  Movie(
      id: '4',
      kategori: ['7', '8'],
      title: 'Hero',
      description: 'Ini Film Hero',
      rating: '7',
      price: '2000',
      imageUrl: 'images/movieimages/4.jpg'),
  Movie(
      id: '5',
      kategori: ['9', '10'],
      title: 'DragonBall',
      description: 'Ini Film DragonBall',
      rating: '7',
      price: '2000',
      imageUrl: 'images/movieimages/5.jpg'),
  Movie(
      id: '6',
      kategori: ['1', '6'],
      title: 'Avengers',
      description: 'Ini Film Avengers',
      rating: '7',
      price: '2000',
      imageUrl: 'images/movieimages/6.jpg'),
];
