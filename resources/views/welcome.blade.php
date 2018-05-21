@extends('app')
@section('content')

<div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
              <div class="login-panel panel panel-default">
                <div class="panel-heading" style="background-color: #808080">
                    <h2 style="color:#FFFFFF" class="panel-title" align="center">Sistem Informasi</h2>
                    <h2 style="color:#FFFFFF" class="panel-title" align="center">Hidayah Farma</h2>
                    </div>
                    <h3 class="panel-body" align="center">Login</h3>
                    <div class="panel-body">
                        <form role="form" action="proseslogin.php" method="post">
                            <fieldset>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Username" name="username" type="user" autofocus>
                                </div>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Password" name="password" type="password">
                                </div>
                                <!-- Change this to a button or input when using this as a form -->

                            </fieldset>
                        </form>
						<a href="localhost/true/" > <button type="submit" class="btn btn-lg btn-success btn-block">Login</button> </a>

                    </div>
                </div>
                <?php
				ini_set("display_errors", 0);
				@$psn = $_GET["pesan"];
				?>
                <h3> <?php echo $psn; ?></h3>
            </div>
        </div>
    </div>

@endsection
@section('js')

<!-- jQuery -->
    <script src="../vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="../vendor/metisMenu/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="../dist/js/sb-admin-2.js"></script>

@endsection
