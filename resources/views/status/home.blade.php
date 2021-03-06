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

                <!-- Update status -->
                
                <div class="update-box">
                    {{ Form::open(['method' => 'POST','route' => ['status.store']]) }}
                        <input type="hidden" name="user" value="{{ Auth::user()->id }}">
                        <div class="col-lg-12  col-md-12 col-xs-12 ">
                            <div class="form-group">
                                <input type="text" name="status" placeholder="Update status..." class="form-control">
                            </div>
                            <div class="form-group">
                                <input type="submit" value="Update" class="pull-right btn-update">
                            </div>
                        </div>
                    {{ Form::close() }}
                </div>

                <!-- End Status -->
                @foreach($data as $status)
                <?php
                    // print_r($status);
                    // echo Auth::user()->id;
                    // echo $status->status_user;
                    if (!empty($status->foto)) {
                        $img = "$status->foto";
                    } else {
                        $img = "nophoto.png";
                    }
                    if ($status->status_user == Auth::user()->id) {
                        ?>
                        <div class="status-me">
                                <div class="col-lg-12 col-md-12 col-xs-12">
                                    <table style="margin-top: 10px" align="right">
                                          <tr>
                                            <td align="right"><strong>{{$status->name}}</strong></td>
                                            <td rowspan="2">
                                                <span class="img-status-me">
                                                    <a href="{{ url('status/'.$status->id.'/edit') }}">
                                                        <img src="{{ asset('uploads/'.$img)  }}" class="img-circle" alt="Images" width="50" height="50">
                                                    </a>
                                                </span>
                                            </td>
                                          </tr>
                                          <tr>
                                            <td align="right">{{$status->status_content}}</td>
                                          </tr>
                                    </table>
                                </div>
                            </div>
                    <?php
                    } else {
                        ?><div class="status-friend">
                                <div class="col-lg-12 col-md-12 col-xs-12">
                                    <table style="margin-top: 10px">
                                          <tr>
                                            <td rowspan="2">
                                                <span class="img-status">
                                                    <img src="{{ asset('uploads/'.$img)  }}" class="img-circle" alt="Friend" width="50" height="50">
                                                </span>
                                            </td>
                                            <td><strong>{{ $status->name }}</strong></td>
                                          </tr>
                                          <tr>
                                            <td>{{ $status->status_content }}</td>
                                          </tr>
                                    </table>
                                </div>
                            </div>
                    <?php
                    }
                
                ?>
                
                <!-- End Status 1 -->
                @endforeach
                

            </div>
        </div>


    </div>
    <!-- /.container -->

    <!-- jQuery -->
    {{ HTML::script('js/jquery.js') }}

    <!-- Bootstrap Core JavaScript -->
    {{ HTML::script('js/bootstrap.min.js') }}
</body>

</html>
