import 'package:flutter/material.dart';
import 'package:movie/screens/detail_movie.dart';

Widget BuildListTile(String title, IconData icon, Function onTapHandler) {
  return ListTile(
      title: Text(
        title,
      ),
      leading: Icon(
        icon,
        color: Colors.red,
      ),
      onTap: onTapHandler);
}

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.white),
            accountName: Text(
              "Ryan Hartadi",
              style: TextStyle(color: Colors.red),
            ),
            accountEmail: Text(
              "Ryanhartadi999@gmail.com",
              style: TextStyle(color: Colors.red),
            ),
            currentAccountPicture: GestureDetector(
              onDoubleTap: () {
                debugPrint("Double Tap");
              },
              child: CircleAvatar(
                backgroundColor: Colors.red,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          BuildListTile('Home', Icons.home, () {
            debugPrint("Test Home");
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => DetailMovie()));
          }),
          Divider(),
          BuildListTile('Home 1', Icons.home, () {
            debugPrint("Test Home 1");
            Navigator.pop(context);
          }),
          Divider(),
          BuildListTile('Home 2', Icons.home, () {
            debugPrint("Test Home 2");
            Navigator.pop(context);
          }),
        ],
      ),
    );
  }
}
