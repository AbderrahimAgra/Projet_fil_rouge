
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!-- CSS only -->
    <link href="public/css/bootstrap.css" rel="stylesheet" >
    <link rel="stylesheet" href="public/css/style.css">
    <title>homePage</title>
</head>
<body>
<!--nav-->
<nav class="navbar navbar-expand-lg bg-light">
    <div class="container-fluid">
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <a class="navbar-brand" id="logo" href="./homepage.php">
            <img src="public/images/logo.png" alt="logo">
        </a>
        <div class="collapse navbar-collapse flex-row-reverse justify-content-between" id="navbarTogglerDemo03">
            <ul class="navbar-nav  mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="btn  nav-link active" aria-current="page" href="signup.php">SIGN UP </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">admin</a>
                </li>
                <li>
                    <a class="" href="" hidden><img src="" alt="">dfgfgv</a>
                </li>
            </ul>
            <form class="d-flex m-0" role="search">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button type="submit" class="btn btn-warning">search</button>
            </form>
        </div>
    </div>
</nav>

<!-- fin nave-->
<div class="container">
    <div id="add ">
        <form action="col-md-8 offset-2" method="post" enctype="multipart/form-data>
            <div class="row ">
        <div class="d-flex justify-content-center">
            <img  src="public/images/AJI__logo.png" alt="logo">
        </div>
    </div>
        <div class="d-flex justify-content-center m-5 bg-light">
            <h3> LOG IN  </h3>
        </div>
        <div class="row">
            <div class="col-6 offset-3 mb-3">
                <label for="exampleInputEmail1" class="form-label">Email address</label>
                <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
            </div>
        </div>

        <div class="col-6 offset-3 mb-3">
            <label for="inputPassword5" class="form-label">Password</label>
            <input type="password" id="inputPassword5" class="form-control" aria-describedby="passwordHelpBlock">
            <div id="passwordHelpBlock" class="form-text">
                Your password must be 8-20 characters long, contain letters and numbers, and must not contain spaces, special characters, or emoji.
            </div>
        </div>

        <div class="col-6 offset-3 mb-3 form-check">
            <input type="checkbox" class="form-check-input" id="exampleCheck1">
            <label class="form-check-label" for="exampleCheck1">Check me out</label>
        </div>
        <div class="col-6 offset-3 d-grid gap-2 mb-3">
            <button type="submit" class=" btn " id="btn-submit">Submit</button>
        </div>
    </form>
</div>
</div>
<!-- fin sign in-->
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="public/js/main.js"></script>

</body>
</html>

