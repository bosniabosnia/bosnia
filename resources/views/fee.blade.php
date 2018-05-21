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
                <h4 align="center">Fee Dokter</h4>
				<!--a href="home.php?ref=add_obat" class="btn btn-default btn-sm btn-success" style="float:right;" title="Tambah Baru Obat"><span class="glyphicon glyphicon-plus"></span> Add New</a><br-->
                  <!--div class="input-group">
                    <input type="text" class="form-control">
                    <span class="input-group-btn">
                      <button class="btn btn-default" type="button"> <span class="glyphicon glyphicon-search"></span> </button>
                    </span>
                    </div--><br>
                  <!-- /.input-group -->

                  <table id="example1" class="table table-bordered table-striped" >
                  <thead>
                  <tr>
				  <th width="10">No</th>
                  <th>Tanggal</th>
                  <th>Kode Resep</th>
                  <th>Nama Dokter</th>
                  <th>Alamat Praktek</th>
                  <th>No Telp</th>
				  <th>Total Resep (Rp)</th>
                  <th>Fee Dokter (Rp)</th>
                  <th width="50">Action</th>
                  </tr>
                  </thead>
                  <tbody>

@foreach(\App\Models\Dokterfee::get() as $no => $d)

                  <td>{{$no+1}}</td>
                  <td>{{$dokterfee->tanggal}}</td>
                  <td>{{$dokterfee->kode_pembelian}}</td>
                  <td>{{$dokterfee->nama_dokter}}</td>
                  <td>{{$dokterfee->alamat_praktek}}</td>
                  <td>{{$dokterfee->telp}}</td>


                  <td align="right"><?php echo number_format($row['total'],0,'.','.') ?></td>
                  <td align="right"><?php echo number_format($row['fee'],0,'.','.') ?></td>
                  <td align="center">
				<a title="Set Fee" name="stock" href="home.php?ref=set_fee&kode_pembelian=<?php echo $row['kode_pembelian']; ?>" class="btn btn-default btn-sm btn-success"><span class="glyphicon glyphicon-pushpin"></span></a>

				<!--a title="Edit Obat" name="update" href="home.php?ref=edit_obat&kode_obat=<?php echo $row['kode_obat']; ?>" class="btn btn-default btn-sm btn-primary"><span class="glyphicon glyphicon-pencil"></span></a>

				<a title="Delete Obat" name="delete" href="home.php?ref=del_obat&kode_obat=<?php echo $row['kode_obat']; ?>" onclick ="if (!confirm('Apakah Anda yakin akan menghapus data ini?')) return false;"class="btn btn-default btn-sm btn-danger"><span class="glyphicon glyphicon-remove"></span></a-->
				  </td>
                  </tr>
<?php $no++; } ?>
                  </tbody>
                </table>
              </div>



                <!-- Posted Comments -->

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
