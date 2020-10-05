import 'package:flutter/material.dart';
import 'package:movie/models/movie.dart';
import 'package:movie/screens/detail_movie.dart';

class MovieListScreen extends StatelessWidget {
  // var movie = [
  //   {
  //     'idmovie': '1',
  //     'nama': 'Toy Story',
  //     'picture': 'images/movieimages/1.jpg',
  //     'rating': '7',
  //     'harga': '10.000'
  //   },
  //   {
  //     'idmovie': '2',
  //     'nama': 'Wonder Park',
  //     'picture': 'images/movieimages/2.jpg',
  //     'rating': '7',
  //     'harga': '10.000'
  //   },
  //   {
  //     'idmovie': '3',
  //     'nama': 'Lion King',
  //     'picture': 'images/movieimages/3.jpg',
  //     'rating': '7',
  //     'harga': '10.000'
  //   },
  //   {
  //     'idmovie': '4',
  //     'nama': 'Angry Birds',
  //     'picture': 'images/movieimages/4.jpg',
  //     'rating': '7',
  //     'harga': '10.000'
  //   }
  // ];
  @override
  Widget build(BuildContext context) {
    final modalargs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final id = modalargs['id'];
    final kategori = modalargs['kategori'];
    final displayedMovie = movie_list.where((movie) {
      return movie.kategori.contains(id);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text("List Movie $kategori"),
      ),
      body: GridView.builder(
          itemCount: displayedMovie.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (BuildContext context, int index) {
            return SingleMovie(
              id_movie: displayedMovie[index].id,
              nama_movie: displayedMovie[index].title,
              picture_movie: displayedMovie[index].imageUrl,
              rating_movie: displayedMovie[index].rating,
              harga_movie: displayedMovie[index].price,
            );
          }),
    );
  }
}

class SingleMovie extends StatelessWidget {
  final id_movie, nama_movie, picture_movie, rating_movie, harga_movie;
  SingleMovie(
      {this.id_movie,
      this.nama_movie,
      this.picture_movie,
      this.rating_movie,
      this.harga_movie});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: id_movie,
        child: InkWell(
          onTap: () => _selectedMovie(context),
          child: GridTile(
            child: Image.asset(
              picture_movie,
              fit: BoxFit.cover,
            ),
            footer: Container(
              color: Colors.white70,
              child: ListTile(
                  leading: Text(
                    nama_movie,
                    style: TextStyle(fontSize: 17.0),
                  ),
                  title: Text("Rp." + harga_movie,
                      style: Theme.of(context).textTheme.subtitle)),
            ),
          ),
        ),
      ),
    );
  }

  void _selectedMovie(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => DetailMovie()));
  }
}
