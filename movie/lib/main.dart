import 'package:flutter/material.dart';
import 'package:movie/screens/bottom_nav.dart';
import 'package:movie/screens/detail_movie.dart';
import 'screens/bottom_nav.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'SuperMovies',
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
      title: 'SuperMovie',
      routes: {
        '/': (context) => BottomNav(),
        '/detail-movie': (context) => DetailMovie()
      },
    );
  }
}
