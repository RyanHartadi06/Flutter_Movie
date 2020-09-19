@extends('layouts.app')

@section('content')
  <h1 class="text-center">Edit Kategori</h1>
  <div class="card">
    <div class="card-header">
      Edit Kategori
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
      <form action="{{ route('kategori.update', ['id'=>$kategori->id]) }}" method="post">
        {{ csrf_field() }}
        <div class="form-group">
          <label for="kategori">Kategori</label>
          <input type="text" name="kategori" value="{{$kategori->kategori}}" class="form-control" placeholder="masukkan kategori">
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