<?php

namespace App\Http\Controllers\petugas;

use App\Http\Controllers\Controller;
use App\Models\Buku;
use App\Models\Rak;
use Illuminate\Http\Request;

class BukuPetugasController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $req)
    {
        $rakid = '';
        $rakname = '';
        $rak = Rak::orderBy('jenis_rak', 'ASC')->get();
        $query = Buku::join('rak', 'rak.id_rak', '=', 'buku.rak')
            ->select('buku.*', 'rak.jenis_rak', 'rak.id_rak')
            ->latest();
        if ($req->query('rak')) {
            $query->where('buku.rak', $req->query('rak'));
            $rakid = Rak::where('id_rak', $req->query('rak'))->get()->first()['id_rak'] ?? '';
            $rakname = Rak::where('id_rak', $req->query('rak'))->get()->first()['jenis_rak'] ?? '';
        }
        if ($req->query('search')) {
            $search = $req->query('search');
            $query->where(function ($query) use ($search) {
                $query->where('buku.nama_buku', 'like', '%' . $search . '%')
                    ->orWhere('buku.penerbit', 'like', '%' . $search . '%')
                    ->orWhere('buku.kode_buku', 'like', '%' . $search . '%')
                    ->orWhere('buku.id_buku', 'like', '%' . $search . '%');
            });
        }
        $buku = $query->paginate(5);
        return view('petugas.buku.buku', compact('buku', 'rak', 'rakid', 'rakname'));
    }


    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $rak = Rak::orderBy('jenis_rak', 'ASC')->get();
        return view('petugas.buku.buku_store', compact(['rak']));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'kode_buku' => 'required|unique:buku,kode_buku',
            'judul_buku' => 'required|unique:buku,nama_buku',
            'penerbit' => 'required',
            'rak' => 'required',
            'stok' => 'required',
            'foto' => 'required'
        ]);

        if ($request->hasFile('foto')) {
            $foto_profile = $request->file('foto')->getClientOriginalName();
            $request->foto->move(public_path('foto_buku'), $foto_profile);
        }

        Buku::create([
            'kode_buku' => $request->kode_buku,
            'nama_buku' => $request->judul_buku,
            'penerbit' => $request->penerbit,
            'rak' => $request->rak,
            'stok_buku' => $request->stok,
            'foto_buku' => $foto_profile,
        ]);

        return to_route('buku.index')->with('success', 'Berhasil Menambahkan Buku Baru');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $buku = Buku::join('rak', 'rak.id_rak', '=', 'buku.rak')
            ->select('buku.*', 'rak.jenis_rak', 'rak.id_rak')->where('kode_buku', $id)->get()->first();
        if (empty($buku->id_buku)) return redirect(route('buku.index'));
        return view('petugas.buku.bukuSingle', compact('buku'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $buku = Buku::find($id);
        $rak = Rak::orderBy('jenis_rak', 'ASC')->get();

        return view('petugas.buku.buku_edit', compact(['buku', 'rak']));
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
        $request->validate([
            'kode_buku' => 'required',
            'judul_buku' => 'required',
            'penerbit' => 'required',
            'rak' => 'required',
            'stok' => 'required',
        ]);

        if ($request->foto == NULL) {
            Buku::find($id)->update([
                'kode_buku' => $request->kode_buku,
                'nama_buku' => $request->judul_buku,
                'penerbit' => $request->penerbit,
                'rak' => $request->rak,
                'stok_buku' => $request->stok,
            ]);

            return to_route('buku.index')->with('success', 'Berhasil Memperbaharui Data Buku');
        }

        if ($request->hasFile('foto')) {
            $foto_profile = $request->file('foto')->getClientOriginalName();
            $request->foto->move(public_path('foto_buku'), $foto_profile);
        }

        Buku::find($id)->update([
            'kode_buku' => $request->kode_buku,
            'nama_buku' => $request->judul_buku,
            'penerbit' => $request->penerbit,
            'rak' => $request->rak,
            'stok_buku' => $request->stok,
            'foto_buku' => $foto_profile,
        ]);

        return to_route('buku.index')->with('success', 'Berhasil Memperbaharui Data Buku');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Buku::find($id)->delete();

        return back()->with('success', 'Berhasil Menghapus Buku');
    }
}
