<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Obat extends Model
{
  protected $table = 'obat';

  public $primaryKey = 'kode_obat';

  public $incrementing = false;

  public $timestamps = false;

  protected $fillable = [
    'no_batch',
    'kode_golongan',
    'nama_obat',
    'kode_jenis',
    'kode_bentuk',
    'kemasan',
    'harga_kemasan',
    'harga_resep',
    'harga_nonresep',
    'jumlah',
    'expired',
    'stock_obat'
    ];

    public function Jenisobat()
        {
            return $this->belongsTo('App\Models\Jenisobat', 'kode_jenis');
        }

    public function Bentukobat()
            {
                return $this->belongsTo('App\Models\Bentukobat', 'kode_bentuk');
            }
    public function Golonganobat()
                    {
                        return $this->belongsTo('App\Models\Golonganobat', 'kode_golongan');
                    }

}
