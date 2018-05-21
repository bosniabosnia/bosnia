<?php
namespace App\Http\Controllers;

use DB;
class Libraries
{
    static function GetIDObat()
    {
$data  = DB::select('SELECT max(kode_obat) as maxID FROM obat ');

$idMax = $data[0]->maxID;

if (empty($idMax)) {
  $newID = 'OBT001';
}else{
$noUrut =substr($idMax,3,3);
$noUrut++;
$char = "OBT";

$newID = $char . sprintf("%03s", $noUrut);

}
        return $newID;
    }
}
