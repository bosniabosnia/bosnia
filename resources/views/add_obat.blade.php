@extends('app')
@section('content')

<div class="container">
<div class="row">
    <div class="col-lg-12">
        <div class="page-header1">
            <h3>Tambah Obat </h3>
        </div>
    </div>
</div>
<br><br>
<div class="row">
	<div class="col-md-6">
	<form id="form_input" method="POST" action="{{url('add-obat-action')}}">
{{ csrf_field() }}
	<div class="form-group">
  		<label class="control-label" for="kode">Kode Obat</label>
  		<input type="text" class="form-control" name="kode" id="kode" value="{{\App\Http\Controllers\Libraries::GetIDObat()}}" readonly>

	</div>

	<div class="form-group">
  		<label class="control-label" for="no_batch">No Batch</label>
  		<input type="text" class="form-control" name="no_batch" id="no_batch" tabindex="1" required>
	</div>

	<div class="form-group">
  		<label class="control-label" for="nama_obat">Nama Obat</label>
  		<input type="text" class="form-control" name="nama_obat" id="nama_obat" tabindex="2" required>
	</div>

	<div class="form-group">
  		<label class="control-label" for="golongan">Golongan</label>
  		<select type="text" class="form-control" name="golongan" id="golongan" tabindex="3" required>
		<option value="">Silahkan Pilih Golongan</option>
    @foreach(\App\Models\Golonganobat::get() as $no => $golongan)

      <option value="{{$golongan->kode_golongan}}">{{$golongan->golongan}}</option>
    @endforeach
		</select>
	</div>

	<div class="form-group">
  		<label class="control-label" for="jenis">Jenis</label>
  		<select type="text" class="form-control" name="jenis" id="jenis" tabindex="4" required>
		<option value="">Silahkan Pilih Jenis</option>
    @foreach(\App\Models\Jenisobat::get() as $no => $jenis)

      <option value="{{$jenis->kode_jenis}}">{{$jenis->nama_jenis}}</option>
    @endforeach

		</select>
	</div>

	<div class="form-group">
  		<label class="control-label" for="bentuk">Bentuk</label>
  		<select type="text" class="form-control" name="bentuk" id="bentuk" tabindex="5" required>
		<option value="">Silahkan Pilih Bentuk</option>
    @foreach(\App\Models\Bentukobat::get() as $no => $bentuk)

      <option value="{{$bentuk->kode_bentuk}}">{{$bentuk->nama_bentuk}}</option>
    @endforeach

		</select>
	</div>

	<div class="form-group">
  		<label class="control-label" for="kemasan">Kemasan</label>
  		<input type="text" class="form-control" name="kemasan" id="kemasan" tabindex="6" required>
	</div>

	<div class="form-group">
  		<label class="control-label" for="harga_kemasan">Harga Kemasan Terbesar (Rp)</label>
  		<input type="number" class="form-control" name="harga_kemasan" id="harga_kemasan" tabindex="6" required>
	</div>

	<div class="form-group">
  		<label class="control-label" for="harga_resep">Harga Jual Resep Satuan Terkecil (Rp)</label>
  		<input type="number" class="form-control" name="harga_resep" id="harga_resep" tabindex="6" required>
	</div>

	<div class="form-group">
  		<label class="control-label" for="harga_nonresep">Harga Jual Non Resep Satuan Terkecil (Rp)</label>
  		<input type="number" class="form-control" name="harga_nonresep" id="harga_nonresep" tabindex="6" required>
	</div>

	<div class="form-group">
  		<label class="control-label" for="jumlah">Jumlah</label>
  		<input type="number" class="form-control" name="jumlah" id="jumlah" tabindex="6" required>
	</div>

	<div class="form-group">
  		<label class="control-label" for="expired">Expired Date (Bulan-Tanggal-Tahun)</label>
  		<input type="date" class="form-control" name="expired" id="expired" tabindex="6" required>
	</div>


<br>
	<div class="form-group">
	<input type="submit" value="Tambah" name="tambah" class="btn btn-primary" tabindex="8">
	<a href="{{url('stock-obat')}}" class="btn btn-danger" tabindex="9">Batal</a>
	</div>

	</form>
	</div>
</div>

</div>

@endsection
@section('js')

@endsection
