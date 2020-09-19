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
      <h1>Kategori</h1>
    </div>
    <div class="col-sm-2">
      <a class="btn btn-primary" href="{{route('kategori.create')}}">Create Kategori</a>
    </div>
  </div>
</div>
<div class="container">
  <div class="panel panel-default">
    <div class="panel-body">
      <table class="table table-bordered table-hover">
        <thead>
          <th>Nama Kategori</th>
          <th>Edit</th>
          <th>Delete</th>
        </thead>
        <tbody>
          @if($kategoris->count()>0)
            @foreach($kategoris as $kategori)
              <tr>
                <td>{{$kategori->kategori}}</td>
                <td><a href="{{route('kategori.edit',['id' => $kategori->id])}}" class="btn btn-xs btn-success">Edit</a></td>
                <td><a href="{{route('kategori.delete',['id' => $kategori->id])}}" class="btn btn-xs btn-danger">Delete</a></td>
              </tr>
            @endforeach
          @else
            <tr>
              <th class='text-cente'>Tidak ada data kategori</th>
            </tr>
          @endif
        </tbody>
      </table>
    </div>
  </div>
</div>
@endsection