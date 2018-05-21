<?php

namespace App\Http\Controllers;

use App\Models\Obat;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class ObatController extends Controller
{
    public function inputObat(Request $request)
    {
        $kode = $request->input('kode');
        $no_batch = $request->input('no_batch');
        $nama_obat = $request->input('nama_obat');
        $golongan = $request->input('golongan');
        $jenis = $request->input('jenis');
        $bentuk = $request->input('bentuk');
        $kemasan = $request->input('kemasan');
        $harga_kemasan = $request->input('harga_kemasan');
        $harga_resep = $request->input('harga_resep');
        $harga_nonresep = $request->input('harga_nonresep');
        $jumlah = $request->input('jumlah');
        $expired = $request->input('expired');

        $obat = new Obat;
        $obat->kode_obat = $kode;
        $obat->no_batch = $no_batch;
        $obat->nama_obat = $nama_obat;
        $obat->kode_golongan = $golongan;
        $obat->kode_jenis = $jenis;
        $obat->kode_bentuk = $bentuk;
        $obat->kemasan = $kemasan;
        $obat->harga_kemasan = $harga_kemasan;
        $obat->harga_resep = $harga_resep;
        $obat->harga_nonresep = $harga_nonresep;
        $obat->jumlah = $jumlah;
        $obat->expired = $expired;
        $obat->save();
        return redirect('stock-obat');
    }
}
