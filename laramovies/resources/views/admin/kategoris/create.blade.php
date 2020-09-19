@extends('layouts.app')

@section('content')
    @if(session('message'))
      <div class="alert alert-success">
        {{session('message')}}
      </div>
    @endif
  <h1 class="text-center">Create Kategori</h1>
  <div class="card">
    <div class="card-header">
      Create Kategori
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
      <form action="{{ route('kategori.store') }}" method="post" enctype="multipart/form-data">
        {{ csrf_field() }}
        <div class="form-group">
          <label for="kategori">Kategori</label>
          <input type="text" name="kategori" class="form-control" placeholder="masukkan kategori">
        </div>
        <div class="form-group">
          <label for="image">Image Kategori</label>
          <input type="file" name="image" class="form-control">
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