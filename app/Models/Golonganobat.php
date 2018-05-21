<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Golonganobat extends Model
{
  protected $table = 'golongan_obat';

  public $primaryKey = 'kode_golongan';

  public $incrementing = false;

  public $timestamps = false;

  protected $fillable = [
    'golongan'
    ];


}
