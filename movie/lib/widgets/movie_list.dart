import 'package:flutter/material.dart';

class MovieList extends StatelessWidget {
  final String title;
  final List<String> movieData;

  MovieList({@required this.title, @required this.movieData});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Container(
              height: 230.0,
              color: Colors.white,
              child: Column(
                children: [
                  //untuk tulisannya
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 10.0),
                        child: Text(title, style: TextStyle(fontSize: 20.0)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: InkWell(
                          child: Text(
                            "Lihat Semua",
                            style:
                                TextStyle(color: Colors.blue, fontSize: 17.0),
                          ),
                          onTap: () {
                            debugPrint("On Click Lihat ");
                          },
                        ),
                      ),
                    ],
                  ),
                  //LISTDATA
                  Column(
                    children: [
                      Container(
                        height: 180.0,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: movieData.length,
                          itemBuilder: (BuildContext context, index) {
                            return GestureDetector(
                              child: Container(
                                width: 140.0,
                                child: Card(
                                  child: Image.asset(movieData[index],
                                      fit: BoxFit.fill),
                                ),
                              ),
                              onTap: () {
                                debugPrint('$index');
                              },
                            );
                          },
                        ),
                      )
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
