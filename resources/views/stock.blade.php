@extends('app')
@section('content')
<div class="container">

      <div class="row">

            <!-- Blog Post Content Column -->
            <div class="col-lg-12">

                <!-- Blog Post -->

                <!-- Title -->
                <!--p class="lead" align="center">Form Registrasi &amp; Obat</p-->

                <!-- Author -->





              <div class="well1">
                <h4 align="center">Stock Obat</h4>
				<a href="{{url('add-obat')}}" class="btn btn-default btn-sm btn-success" style="float:right;" title="Tambah Baru Obat"><span class="glyphicon glyphicon-plus"></span> Add New</a><br>
                  <!--div class="input-group">
                    <input type="text" class="form-control">
                    <span class="input-group-btn">
                      <button class="btn btn-default" type="button"> <span class="glyphicon glyphicon-search"></span> </button>
                    </span>
                    </div--><br>
                  <!-- /.input-group -->

                  <table id="example1" class="table table-bordered table-striped" style="font-size:0.85em">
                  <thead>
                  <tr>
				  <th width="10">No</th>
                  <th>Kode Obat</th>
                  <th>No Batch</th>
                  <th>Nama</th>
                  <th>Golongan</th>
                  <th>Jenis</th>
                  <th>Bentuk</th>
                  <th>Kemasan</th>
                  <th>H.Kemasan</th>
                  <th>H.Resep</th>
                  <th>H.Non Resep</th>
                  <th>Stock</th>
				  <th>Expired</th>
                  <th width="100">Action</th>
                  </tr>
                  </thead>
                  <tbody>
@foreach(\App\Models\Obat::get() as $no => $obat)
                  <tr>
                  <td>{{$no+1}}</td>
                  <td>{{$obat->kode_obat}}</td>
                  <td>{{$obat->no_batch}}</td>
                  <td>{{$obat->nama_obat}}</td>
                  <td>{{$obat->Golonganobat->golongan}}</td>
                  <td>{{$obat->Jenisobat->nama_jenis}}</td>
                  <td>{{$obat->Bentukobat->nama_bentuk}}</td>
                  <td>{{$obat->kemasan}}</td>
                  <td>{{$obat->harga_kemasan}}</td>
                  <td>{{$obat->harga_resep}}</td>
                  <td>{{$obat->harga_nonresep}}</td>
                  <td>{{$obat->jumlah}}</td>
                  <td>{{$obat->expired}}</td>

                  <td align="center">


				<a title="Edit Obat" name="update"  class="btn btn-default btn-sm btn-primary"><span class="glyphicon glyphicon-pencil"></span></a>

				<a title="Delete Obat" name="delete"  onclick ="if (!confirm('Apakah Anda yakin akan menghapus data ini?')) return false;"class="btn btn-default btn-sm btn-danger"><span class="glyphicon glyphicon-remove"></span></a>
				  </td>
                  </tr>
                  @endforeach
                  </tbody>
                </table>
              </div>



				<br><br>
				<div style="color:red;"><u>Obat Yang Akan Mendekati Tanggal Kardaluarsa Dalam Sebulan :</u></div><br>
			<div class="well col-lg-7" style="padding:3px;overflow:auto;width:auto;height:250px;border:0px solid grey">
			<table id="example11" class="table  table-striped " >
                  <thead>
                  <tr>
				  <th width="10">No</th>
                  <th>Kode Obat</th>
                  <th>Nama Obat</th>
                  <th>Tanggal Kardaluarsa</th>
				  <th>Sisa Hari</th>
                  </tr>
                  </thead>
                  <tbody>
                    @foreach(DB::select('SELECT kode_obat,nama_obat,expired,DATEDIFF(expired,CURRENT_DATE)selisih FROM obat WHERE expired < CURRENT_DATE + INTERVAL 30 DAY ORDER BY expired') as $no => $obat)

					<tr>
					<td>{{$no+1}}</td>
					<td>{{$obat->kode_obat}}</td>
					<td>{{$obat->nama_obat}}</td>
					<td>{{$obat->expired}}</td>
					<td>{{$obat->selisih}}</td>
					</tr>
          @endforeach


				  </tbody>
				  </table>

			</div>
            <!-- Comment --><!-- Comment --></div>

        <!-- Blog Sidebar Widgets Column --></div>
        <!-- /.row --><!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p></p>
                </div>
            </div>
            <!-- /.row -->
        </footer>

    </div>
    @endsection
    @section('js')

    @endsection
