import 'package:flutter/material.dart';
import 'package:movie/models/coming_soon.dart';
import 'package:movie/models/top_rated.dart';
import 'package:movie/widgets/list_carousel.dart';
import '../widgets/grey_area.dart';
import '../widgets/category_list.dart';
import '../widgets/movie_list.dart';

class HomeScreen extends StatelessWidget {
  //NOTE: List of Map
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
  //NOTE: List
  // List<String> topmovies = [
  //   'images/movieimages/1.jpg',
  //   'images/movieimages/2.jpg',
  //   'images/movieimages/3.jpg',
  //   'images/movieimages/4.jpg',
  //   'images/movieimages/5.jpg',
  // ];
  // List<String> comingsoon = [
  //   'images/movieimages/6.jpg',
  //   'images/movieimages/7.jpg',
  //   'images/movieimages/8.jpg',
  //   'images/movieimages/9.jpg',
  //   'images/movieimages/10.jpg',
  // ];
  List<String> comingSoonMovies =
      coming_soon.map((e) => e.imageUrl).take(4).toList();
  List<String> top = top_rated_movie.map((e) => e.imageUrl).take(4).toList();
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListCarousel(),
        GreyArea(),
        CategoryList(menuItem: menuItem),
        GreyArea(),
        MovieList(title: "Top Rated", movieData: top),
        GreyArea(),
        MovieList(title: "Coming Soon", movieData: comingSoonMovies),
      ],
    );
  }
}
