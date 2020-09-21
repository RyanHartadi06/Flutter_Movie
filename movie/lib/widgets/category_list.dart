import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  final List<Map<String, String>> menuItem;
  CategoryList({@required this.menuItem});
  @override
  Widget build(BuildContext context) {
    return Container(
      //note height ukuran
      height: 160.0,
      child: GridView.count(
          physics: NeverScrollableScrollPhysics(),
          //dibuat grid
          crossAxisCount: 5, //sebanyak 5
          padding: EdgeInsets.fromLTRB(17, 14, 17, 14), //paddingnya
          children: List.generate(menuItem.length, (index) {
            //disini menggunakan list generate
            //parse  data json ada beberapa cara , yaitu listview builder dan list generate
            return Column(
              children: [
                Container(
                  height: 45.0,
                  width: 45.0,
                  //box decoration membuat sbuah kotak
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      border: Border.all(color: Colors.grey[300])),
                  child: Center(child: Image.asset(menuItem[index]['images'])),
                ),
                //note : sebuah expanded widget yg mengexpand / memperluas
                // sebuah child dari container , row , column , flex dll tergantung dari parentnya
                // jadi dia akan mengisi sebuah ruangan kosong yg tersedia
                Expanded(
                    child: Text(
                  menuItem[index]['text'],
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 10.0),
                ))
              ],
            );
          })),
    );
  }
}
