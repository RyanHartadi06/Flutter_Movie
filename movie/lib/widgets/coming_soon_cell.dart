import 'package:flutter/material.dart';

class ComingSoonCell extends StatelessWidget {
  final id, title, description, imageUrl;

  ComingSoonCell(this.id, this.title, this.description, this.imageUrl);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              margin: EdgeInsets.all(16.0),
              child: Container(
                height: 70.0,
                width: 70.0,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey,
                  image: DecorationImage(
                      image: AssetImage(imageUrl), fit: BoxFit.cover),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xff3c3261),
                        blurRadius: 5.0,
                        offset: Offset(2.0, 5.0))
                  ]),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff3c3261)),
                    ),
                    Padding(
                      padding: EdgeInsets.all(2.0),
                    ),
                    Text(description,
                        maxLines: 3,
                        style: TextStyle(color: Color(0xff3c3261))),
                  ],
                ),
              ),
            )
          ],
        ),
        Container(
            height: 0.5,
            width: 400,
            margin: EdgeInsets.all(10),
            color: Color(0xd2d2e1ff))
      ],
    );
  }
}
