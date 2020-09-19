<?php

namespace App\Http\Controllers;

use App\Kategori;
use App\Movie;
use Illuminate\Http\Request;

use File;


class MoviesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // $movies = Movie::all();
        // return view('admin.movies.index')->with('movies', $movies);
        $movies = Movie::with('kategoris')->get();
        return view('admin.movies.index')->with('movies', $movies);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $kategoris = Kategori::all();
        return view('admin.movies.create')->with('kategoris', $kategoris);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request,[
            'title' => 'required',
            'description' => 'required',
            'rating' => 'required',
            'price' => 'required',
            'imageUrl' => 'required|image',
        ]);


        $imageUrlName = time().$request->imageUrl->getClientOriginalName();

        $request->imageUrl->move('uploads/movieImages', $imageUrlName);

        $movie = Movie::create([
            'title' => $request->title,
            'description' => $request->description,
            'rating' => $request->rating,
            'price' => $request->price,
            'imageUrl' => $imageUrlName,
        ]);
       
        $movie->kategoris()->attach($request->kategoris);

        return redirect()->back()->with('message','Data Berhasil disimpan');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $movie = Movie::find($id);
        $kategoris = Kategori::all();

        return view('admin.movies.edit')->with(compact('movie','kategoris'));     
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $this->validate($request,[
            'title' => 'required',
            'description' => 'required',
            'rating' => 'required',
            'price' => 'required',
            'kategoris' => 'required',
        ]);

        $movie = Movie::find($id);

        if($request->hasFile('imageUrl')){
              //delete gambar yg ada
             File::delete($movie->imageUrl);

             //upload gambar yang baru utk diupdate
             $imageUrlName = time().$request->imageUrl->getClientOriginalName();
             $request->imageUrl->move('uploads/movieImages', $imageUrlName);

             $movie->imageUrl = $imageUrlName;
        }
    
        $movie->title = $request->title;
        $movie->description = $request->description;
        $movie->rating = $request->rating;
        $movie->price = $request->price;

        //save data movie ditabel database movie
        $movie->save();

        //mensinkronkan data pivot table sesuai data yang kita centang di kategori
        $movie->kategoris()->sync($request->kategoris);

        return redirect()->route('movie')->with('message', 'Data berhasil diupdate');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $movie = Movie::find($id);  
        $movie->kategoris()->detach();
  
        File::delete($movie->imageUrl);
        $movie->delete();

        return redirect()->route('movie')->with('message','Data Berhasil didelete');
    }





}
