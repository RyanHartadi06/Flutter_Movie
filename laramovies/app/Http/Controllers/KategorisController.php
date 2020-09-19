<?php

namespace App\Http\Controllers;

use App\Kategori;
use File;
use Illuminate\Http\Request;

class KategorisController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.kategoris.index')->with('kategoris', Kategori::all());        
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.kategoris.create');
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
            'kategori' => 'required',
            'image' => 'required|image',
        ]);

        $kategori = new Kategori;
        $kategori->kategori = $request->kategori;
        $kategori->image = $request->image->getClientOriginalName();

        $request->image->move('uploads/kategoriIcons', $request->image->getClientOriginalName());

        $kategori->save();
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
        $kategori = Kategori::find($id);
        return view('admin.kategoris.edit')->with('kategori', $kategori);        
        
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
        $this->validate($request, [
            'kategori' => 'required'
        ]);

        $kategori = Kategori::find($id);
        $kategori->kategori = $request->kategori;

        $kategori->save();

        return redirect()->route('kategori')->with('message','Data Berhasil diupdate');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $kategori = Kategori::find($id);
        $kategori->movies()->detach();

        File::delete('uploads/kategoriIcons/'.$kategori->image);
        $kategori->delete();

        return redirect()->route('kategori')->with('message','Data Berhasil didelete');
    }
}
