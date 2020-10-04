import 'package:flutter/material.dart';
import 'package:movie/models/coming_soon.dart';
import 'package:movie/widgets/coming_soon_cell.dart';

class ComingSoonScreen extends StatefulWidget {
  @override
  _ComingSoonScreenState createState() => _ComingSoonScreenState();
}

class _ComingSoonScreenState extends State<ComingSoonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Coming Soon"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Coming Soon Movie",
                style: TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: coming_soon == null ? 0 : coming_soon.length,
                  itemBuilder: (context, index) {
                    return ComingSoonCell(
                      coming_soon[index].id,
                      coming_soon[index].title,
                      coming_soon[index].description,
                      coming_soon[index].imageUrl,
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
