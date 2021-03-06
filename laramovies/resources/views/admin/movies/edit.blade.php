@extends('layouts.app')

@section('content')
    @if(session('message'))
      <div class="alert alert-success">
        {{session('message')}}
      </div>
    @endif
  <h1 class="text-center">Edit Movie</h1>
  <div class="card">
    <div class="card-header">
      Edit Movie
    </div>

    @if(count($errors)>0)
      <ul class="list-group">
        @foreach($errors->all() as $error)
          <li class="list-group-item text-danger">
            {{$error}}
          </li>
        @endforeach
      </ul>
    @endif
    
    <div class="card-body">
      <form action="{{ route('movie.update', ['id'=>$movie->id]) }}" method="post" enctype="multipart/form-data">
        {{ csrf_field() }}
        <div class="form-group">
          <label for="title">Title</label>
          <input type="text" name="title" value={{$movie->title}} class="form-control" placeholder="masukkan title">
        </div>
        <div class="form-group">
          <label for="description">Deskripsi</label>
          <textarea type="text" name="description" class="form-control" placeholder="masukkan deskripsi">{{$movie->description}}</textarea>
        </div>
        <div class="form-group">
          <label for="rating">Rating</label>
          <input type="number" min="1" max="10" name="rating" class="form-control"value={{$movie->rating}} placeholder="masukkan rating">
        </div>
        <div class="form-group">
          <label for="price">Harga</label>
          <input type="number" min="1" name="price" class="form-control" value={{$movie->price}} placeholder="masukkan harga">
        </div>
        <div class="form-group">
          <label for="kategoris">Pilih Kategori</label>
            @foreach($kategoris as $kategori)
              <div class="checkbox">
                <label><input 
                  @foreach($movie->kategoris as $k)
                    @if($kategori->id == $k->id)
                      checked
                    @endif
                
                  @endforeach
                type="checkbox" name="kategoris[]" value="{{$kategori->id}}"> {{$kategori->kategori}}</label>
              </div>
            @endforeach
            
        </div>
        <div class="form-group">
          <label for="imageUrl">Image Movie</label>
          <input type="file" name="imageUrl" class="form-control">
        </div>
        <div class="form-group">
          <div>
            <button type="submit" class="btn btn-success">Simpan</button>
          </div>
        </div>
      </form>
    </div>
  </div>
@endsection