@extends('layouts.app')

@section('content')
    @if(session('message'))
              <div class="alert alert-success">
                {{session('message')}}
              </div>
    @endif
<div class="container">
  <div class="row">
    <div class="col-sm-10">
      <h1>Movie</h1>
    </div>
    <div class="col-sm-2">
      <a class="btn btn-primary" href="{{route('movie.create')}}">Create Movie</a>
    </div>
  </div>
</div>
<div class="container">
  <div class="panel panel-default">
    <div class="panel-body">
      <table class="table table-bordered table-hover">
        <thead>
          <th>Nama Movie</th>
          <th>Deskripsi</th>
          <th>Rating</th>
          <th>Harga</th>
          <th>Image Movie</th>
          <th>Kategori</th>

          <th>Edit</th>
          <th>Delete</th>
        </thead>
        <tbody>
          @if($movies->count()>0)
            @foreach($movies as $movie)
              <tr>
                <td>{{$movie->title}}</td>
                <td>{{$movie->description}}</td>
                <td>{{$movie->rating}}</td>
                <td>Rp. {{$movie->price}}</td>
                <td class="text-center"><img src="http://127.0.0.1:8000/{{$movie->imageUrl}}" width="60px" height="80px"></td>
                <td>
                  @foreach($movie->kategoris as $kategoris)
                    {{$kategoris->kategori}}, 
                  @endforeach
                </td>

                <td><a href="{{route('movie.edit',['id'=>$movie->id])}}" class="btn btn-xs btn-success">Edit</a></td>
                <td><a href="{{route('movie.delete',['id'=>$movie->id])}}" class="btn btn-xs btn-danger">Delete</a></td>
              </tr>
            @endforeach
          @else
            <tr>
              <th class='text-cente'>Tidak ada data movie</th>
            </tr>
          @endif
        </tbody>
      </table>
    </div>
  </div>
</div>
@endsection