import 'package:flutter/material.dart';

class TopMovieScreen extends StatefulWidget {
  @override
  _TopMovieScreenState createState() => _TopMovieScreenState();
}

class _TopMovieScreenState extends State<TopMovieScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text("Top Movie Screen State"),
        ),
      ),
    );
  }
}
