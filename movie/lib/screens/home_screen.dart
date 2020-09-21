import 'package:flutter/material.dart';
import 'package:movie/widgets/list_carousel.dart';
import '../widgets/grey_area.dart';
import '../widgets/category_list.dart';
import '../widgets/movie_list.dart';

class HomeScreen extends StatelessWidget {
  //List of Map
  var menuItem = [
    {'images': 'images/category/action.png', 'text': 'Action'},
    {'images': 'images/category/adventure.png', 'text': 'Adventure'},
    {'images': 'images/category/comedy.png', 'text': 'comedy'},
    {'images': 'images/category/crime.png', 'text': 'crime'},
    {'images': 'images/category/drama.png', 'text': 'drama'},
    {'images': 'images/category/fantasy.png', 'text': 'fantasy'},
    {'images': 'images/category/kids.png', 'text': 'kids'},
    {'images': 'images/category/mistery.png', 'text': 'mistery'},
    {'images': 'images/category/sciencefiction.png', 'text': 'sciencefiction'},
    {'images': 'images/category/thriller.png', 'text': 'thriller'},
  ];
  //List
  List<String> topmovies = [
    'images/movieimages/1.jpg',
    'images/movieimages/2.jpg',
    'images/movieimages/3.jpg',
    'images/movieimages/4.jpg',
    'images/movieimages/5.jpg',
  ];
  List<String> comingsoon = [
    'images/movieimages/6.jpg',
    'images/movieimages/7.jpg',
    'images/movieimages/8.jpg',
    'images/movieimages/9.jpg',
    'images/movieimages/10.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListCarousel(),
        GreyArea(),
        CategoryList(menuItem: menuItem),
        GreyArea(),
        MovieList(title: "Top Rated", movieData: topmovies),
        GreyArea(),
        MovieList(title: "Coming Soon", movieData: comingsoon),
      ],
    );
  }
}
