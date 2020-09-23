import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class DetailMovie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Movie"),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'images/movieimages/1.jpg',
            fit: BoxFit.cover,
          ),
          BackdropFilter(
            filter: ui.ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
            child: Container(
              color: Colors.black.withOpacity(0.5),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20.0),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Container(
                    width: 400,
                    height: 400,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      image: DecorationImage(
                          image: AssetImage('images/movieimages/1.jpg'),
                          fit: BoxFit.cover),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black,
                            blurRadius: 20.0,
                            offset: Offset(0.0, 20.0))
                      ]),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    child: Container(
                      width: 400,
                      height: 400,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      image: DecorationImage(
                          image: AssetImage('images/movieimages/1.jpg'),
                          fit: BoxFit.cover),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 20.0,
                          offset: Offset(0.0, 10.0),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20, horizontal: 0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            'Toy Story',
                            style:
                                TextStyle(color: Colors.white, fontSize: 30.0),
                          ),
                        ),
                        Text(
                          '7/10',
                          style: TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Rp.100000',
                    style: TextStyle(
                        color: Theme.of(context).primaryColor, fontSize: 22.0),
                  ),
                  Padding(padding: EdgeInsets.all(5.0)),
                  Text(
                    'Deskripsi',
                    style: TextStyle(color: Colors.white, fontSize: 22.0),
                  ),
                  Padding(padding: EdgeInsets.all(5.0)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FlatButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            "Kembali Ke Movie List",
                            style:
                                TextStyle(color: Theme.of(context).accentColor),
                          )),
                      RaisedButton(
                          color: const Color(0xaa3C3261),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: const Color(0xaa3C3261))),
                          child: Text('Add To Cart',
                              style: TextStyle(color: Colors.white)),
                          onPressed: () {})
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
