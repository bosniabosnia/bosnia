<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Bentukobat extends Model
{
  protected $table = 'bentuk_obat';

  public $primaryKey = 'kode_bentuk';

  public $incrementing = false;

  public $timestamps = false;

  protected $fillable = [
    'nama_bentuk'
    ];


}
