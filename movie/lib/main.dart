import 'package:flutter/material.dart';
import 'package:movie/screens/bottom_nav.dart';
import 'package:movie/screens/coming_soon_screen.dart';
import 'package:movie/screens/detail_movie.dart';
import 'package:movie/screens/movie_list_screen.dart';
import 'package:movie/screens/top_movie_screen.dart';
import 'screens/bottom_nav.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SuperMovie',
      theme: ThemeData(
          primarySwatch: Colors.red,
          accentColor: Colors.amberAccent,
          canvasColor: Colors.white,
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
              body1: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              body2: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              subtitle: TextStyle(
                  fontSize: 15,
                  color: Colors.blue,
                  fontFamily: 'RobotoCondensed',
                  fontWeight: FontWeight.bold))),
      // initialRoute: '/detail-movie',
      routes: {
        '/': (context) => BottomNav(),
        '/movie': (context) => MovieListScreen(),
        '/comingsoon': (context) => ComingSoonScreen(),
        '/topmovie': (context) => TopMovieScreen(),
        '/detail-movie': (context) => DetailMovie()
      },
    );
  }
}
