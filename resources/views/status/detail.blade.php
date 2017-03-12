<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Twitter Application</title>

    <!-- Bootstrap Core CSS -->
    {{ HTML::style('css/bootstrap.css') }}

    <!-- Custom CSS -->
    {{ HTML::style('css/1-col-portfolio.css') }}
    <!-- Style CSS -->
    {{ HTML::style('css/style.css') }}

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <!-- Navigation -->
    <nav class="navbar navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <a class="navbar-brand" href="{{ url('status') }}">Twitter Application</a>
            </div>
        </div>
        <!-- /.container -->
    </nav>

    <!-- Page Content -->
    <div class="container">

        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-8 col-md-offset-2 col-xs-10 col-xs-offset-1">
            <?php
                // print_r($status);
                // echo Auth::user()->id;
                // echo $status->status_user;
                if (!empty($users->foto)) {
                    $img = "$users->foto";
                } else {
                    $img = "nophoto.png";
                }
            ?>
                {{ Form::open(['method' => 'PATCH','route' => ['status.update', $users->id],'files'=>true]) }}
                <!-- Upload Foto -->
                <div class="col-lg-4 col-md-4 col-xs-4">
                    <table>
                        <tr>
                            <td><img id="showgambar" src="{{ asset('uploads/'.$img)  }}" class="img-circle" alt="Images" width="200" height="200"></td>
                        </tr>
                        <tr>
                            <td align="center">
                                <label for="file-upload" class="btn-file">
                                    Upload
                                </label>
                                <input id="file-upload" name="foto" type="file"/>
                            </td>
                        </tr>
                    </table>
                </div>

                <!-- End Upload Foto -->

                <!-- Detail Info -->
                <div class="col-lg-6 col-lg-offset-1 col-md-6 col-md-offset-1 col-xs-6 col-xs-offset-1">
                    <div class="detail-box">
                        <div class="col-lg-12  col-md-12 col-xs-12 ">
                            <div class="form-group">
                                <input type="text" name="name" value="{{ $users->name }}" class="form-control">
                            </div>
                            <div class="form-group">
                                <input type="text" name="email" value="{{ $users->email }}" class="form-control">
                            </div>
                            <div class="form-group">
                                <input type="password" name="password" value="{{ $users->password }}" class="form-control">
                            </div>
                            <div class="form-group">
                                <input type="submit" value="Save" class="pull-right btn-update" style="margin-top: 190px">
                            </div>
                        </div>
                    </div>
                </div>

                {{ Form::close() }}
                <!-- End Detail -->

            </div>
        </div>


    </div>
    <!-- /.container -->

    <!-- jQuery -->
    {{ HTML::script('js/jquery.js') }}

    <!-- Bootstrap Core JavaScript -->
    {{ HTML::script('js/bootstrap.min.js') }}
    <script type="text/javascript">

      function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#showgambar').attr('src', e.target.result);
                }

                reader.readAsDataURL(input.files[0]);
            }
        }

        $("#file-upload").change(function () {
            readURL(this);
        });

    </script>
</body>

</html>
