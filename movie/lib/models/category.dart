import 'package:flutter/foundation.dart';

class Category {
  final String id, kategori, image;

  Category({this.id, this.kategori, this.image});
}

final List<Category> kategori_list = [
  Category(
    id: '1',
    kategori: 'Action',
    image: 'images/category/action.png',
  ),
  Category(
    id: '2',
    kategori: 'Adventure',
    image: 'images/category/adventure.png',
  ),
  Category(
    id: '3',
    kategori: 'Comedy',
    image: 'images/category/comedy.png',
  ),
  Category(
    id: '4',
    kategori: 'Crime',
    image: 'images/category/crime.png',
  ),
  Category(
    id: '5',
    kategori: 'Drama',
    image: 'images/category/drama.png',
  ),
  Category(
    id: '6',
    kategori: 'Fantasy',
    image: 'images/category/fantasy.png',
  ),
  Category(
    id: '7',
    kategori: 'Kids',
    image: 'images/category/kids.png',
  ),
  Category(
    id: '8',
    kategori: 'Mistery',
    image: 'images/category/mistery.png',
  ),
  Category(
    id: '9',
    kategori: 'Sciencefiction',
    image: 'images/category/sciencefiction.png',
  ),
  Category(
    id: '10',
    kategori: 'Thriller',
    image: 'images/category/thriller.png',
  ),
];
