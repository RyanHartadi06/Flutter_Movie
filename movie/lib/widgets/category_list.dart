import 'package:flutter/material.dart';
import 'package:movie/models/category.dart';

class CategoryList extends StatelessWidget {
  // final List<Map<String, String>> menuItem;
  // CategoryList({@required this.menuItem});
  @override
  Widget build(BuildContext context) {
    return Container(
      //TODO: height ukuran
      height: 160.0,
      child: GridView.count(
          physics: NeverScrollableScrollPhysics(),
          //TODO: dibuat grid
          crossAxisCount: 5, //sebanyak 5
          padding: EdgeInsets.fromLTRB(17, 14, 17, 14), //paddingnya
          children: List.generate(kategori_list.length, (index) {
            //TODO: disini menggunakan list generate
            //TODO: parse  data json ada beberapa cara , yaitu listview builder dan list generate
            //TODO: implement initState
            //TODO : ini masuk kategorinya
            return Column(
              children: [
                InkWell(
                  onTap: () {
                    debugPrint(kategori_list[index].id);
                    Navigator.of(context).pushNamed('/movie', arguments: {
                      'id': kategori_list[index].id,
                      'kategori': kategori_list[index].kategori,
                    });
                  },
                  child: Container(
                    height: 45.0,
                    width: 45.0,
                    //TODO:box decoration membuat sbuah kotak
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        border: Border.all(color: Colors.grey[300])),
                    child:
                        Center(child: Image.asset(kategori_list[index].image)),
                  ),
                ),
                //TODO: sebuah expanded widget yg mengexpand / memperluas
                //TODO:sebuah child dari container , row , column , flex dll tergantung dari parentnya
                //TODO:jadi dia akan mengisi sebuah ruangan kosong yg tersedia
                Expanded(
                    child: Text(
                  kategori_list[index].kategori,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 10.0),
                ))
              ],
            );
          })),
    );
  }
}
