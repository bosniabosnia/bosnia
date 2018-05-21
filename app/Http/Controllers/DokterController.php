<?php

namespace App\Http\Controllers;

use App\Models\Dokter;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class DokterController extends Controller
{
    public function inputDokter(Request $request)
    {
        $kode = $request->input('kode');
        $nama_dokter = $request->input('nama_dokter');
        $alamat_praktek = $request->input('alamat_praktek');
        $telp = $request->input('telp');
        $fee = $request->input('fee');

        $dokter = new Dokter;
        $dokter->kode_dokter = $kode;
        $dokter->nama_dokter = $nama_dokter;
        $dokter->alamat_praktek = $alamat_praktek;
        $dokter->telp = $telp;
        $dokter->fee = $fee;
        $dokter->save();
        return redirect('dokter-peresep');

    }
}
