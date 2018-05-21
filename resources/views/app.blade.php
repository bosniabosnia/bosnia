<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Sistem Aplikasi Apotik</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/dataTables.bootstrap.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/blog-post.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>


    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">

        	<!-- Menu Tampilan Mobile-->
        	<div class="navbar-header">
            	<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#contoh">
                	<span class="sr-only">Toogle Navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">Apotek Hidayah Farma</a>
            </div>

            <!-- Menu Tampilan Dekstop -->
            <div class="collapse navbar-collapse" id="contoh">
            	<ul class="nav navbar-nav">
                	<li><a href="{{url('stock-obat')}}">Obat & Stock</a></li>
                    <li><a href="home.php?ref=dokter">Data Dokter Peresep</a></li>
                    <li class="dropdown">
                    	<a href="" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Jual<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                        	<li><a href="home.php?ref=jual">Jual Biasa</a></li>
                            <li><a href="home.php?ref=registrasi">Jual Dari Resep</a></li>

                        </ul>
                    </li>
					<li class="dropdown">
                    	<a href="" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Laporan<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                        	<li><a href="home.php?ref=stock_masuk">Laporan Stock Masuk</a></li>
                            <li><a href="home.php?ref=stock_keluar">Laporan Stock Keluar</a></li>
                            <li><a href="home.php?ref=rekap_fee">Laporan Rekap Fee Dokter</a></li>

                        </ul>
                    </li>
                </ul>
            </div>

        </div>
    </nav>
     @yield('content')
     @yield('js')

</body>

</html>
