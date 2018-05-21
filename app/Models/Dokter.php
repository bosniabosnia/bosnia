<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Dokter extends Model
{
  protected $table = 'dokter';

  public $primaryKey = 'kode_dokter';

  public $incrementing = false;

  public $timestamps = false;

  protected $fillable = [
    'nama_dokter',
    'alamat_praktek',
    'telp',
    'fee'
    ];


}
