<!DOCTYPE html>
<html lang="">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Register</title>

    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.3/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
</head>

<body>


    <div class="container">
        <div class="col-md-4 col-md-offset-4">
            <form action="" method="POST" role="form">
                @csrf
                <legend>Register</legend>

                <div class="form-group">
                    <label for="">Name</label>
                    <input type="text" class="form-control" name="name" id="" placeholder="Input Name">
                    @error('name')<small>{{$message}}</small> @enderror
                </div>
                <div class="form-group">
                    <label for="">Email</label>
                    <input type="text" class="form-control" name="email" id="" placeholder="Input Email">
                    @error('email')<small>{{$message}}</small> @enderror
                </div>
                <div class="form-group">
                    <label for="">Password</label>
                    <input type="text" class="form-control" name="password" id="" placeholder="Input password">
                    @error('password')<small>{{$message}}</small> @enderror
                </div>
                <div class="form-group">
                    <label for="">Confirm Password</label>
                    <input type="text" class="form-control" name="confirm_password" id="" placeholder="Confrim password">
                    @error('confirm_password')<small>{{$message}}</small> @enderror
                </div>
                


                <button type="submit" class="btn btn-primary">Submit</button>
                <a href="{{ route('admin.login') }}">Login</a>
            </form>
        </div>
    </div>
    <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Bootstrap JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>

</html>