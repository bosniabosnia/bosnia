<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Jenisobat extends Model
{
  protected $table = 'jenis_obat';

  public $primaryKey = 'kode_jenis';

  public $incrementing = false;

  public $timestamps = false;

  protected $fillable = [
    'nama_jenis'
    ];


}
