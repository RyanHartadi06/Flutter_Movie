import 'package:flutter/material.dart';
import 'package:movie/screens/detail_movie.dart';
import 'package:movie/screens/home_screen.dart';
import 'package:movie/widgets/main_drawer.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  List<Map<String, Object>> _pages;
  int _selectedPagesIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    _pages = [
      {
        'page': HomeScreen(),
        'title': 'SuperMovies',
      },
      {
        'page': DetailMovie(),
        'title': 'Detail Movie',
      }
    ];
    super.initState();
  }

  void _halamanpilih(int index) {
    setState(() {
      _selectedPagesIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.red),
          backgroundColor: Colors.white,
          title: Text(
            _pages[_selectedPagesIndex]['title'],
            style: TextStyle(color: Colors.redAccent),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
              color: Colors.red,
            )
          ],
        ),
        drawer: MainDrawer(),
        body: _pages[_selectedPagesIndex]['page'],
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.red,
            unselectedItemColor: Colors.white,
            selectedItemColor: Colors.yellow,
            currentIndex: _selectedPagesIndex,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  title: Text(
                    "Home",
                  )),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.movie,
                  ),
                  title: Text(
                    "Movie",
                  )),
            ],
            onTap: _halamanpilih));
  }
}
