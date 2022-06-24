<pre>
<?php
$annonceController=new \Controllers\Annonce_Controller();
$annonce=$annonceController->getAnnonce();
//var_dump($annonce);

?>
</pre>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!-- CSS only -->
    <link href="<?=BASE_URL_WITH_VIEWS?>/public/css/bootstrap.css" rel="stylesheet" >
    <link rel="stylesheet" href="<?=BASE_URL_WITH_VIEWS?>/public/css/style.css">
    <title>Info Annonce</title>
</head>
<body>
<!--nav-->
<nav class="navbar navbar-expand-lg bg-light">
    <div class="container-fluid">
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <a class="navbar-brand" id="logo" href="<?=BASE_URL_WITH_VIEWS?>/public/homepage.php">
            <img src="<?=BASE_URL_WITH_VIEWS?>/public/images/logo.png" alt="logo">
        </a>
        <div class="collapse navbar-collapse flex-row-reverse justify-content-between" id="navbarTogglerDemo03">
            <ul class="navbar-nav  mb-2 mb-lg-0">

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

<div class="container py-100">
    <div class="row">
        <div class="col-md-3 h-auto mt-4" style="border:var(--third-color) solid 1px ;background-color:var(--third-color">
            <div class="w-100 u d-flex flex-column align-items-center mt-5" >
                <img src="<?=BASE_URL_WITH_VIEWS?>/public/images/man1.png">
                <h3><?=$annonce['firsname'].' '.$annonce['lastname'] ?></h3>
                <p size="11">DONATION/COLLECTION</p>
            </div>
            <div class="container my-4">
                <ul class="navbar-nav">

                    <li class="nav-item mb-lg-2">
                        DONATION:<?= $annonce['donations'] ?>
                    </li>
                </ul>

            </div>

                    <a id="btn-submit" class="btn  active d-flex justify-content-center align-items-center mt-lg-5" aria-current="page" href="mailto:<?= $annonce['email']?>">CONTACT ME </a>


        </div>
        <!-- show items -->
        <div class="col-md-9 mt-4">
            <div class="card-group">
                <div class="container">
                    <div class="row p-1" style="border:var(--third-color) solid 1px ;background-color:var(--third-color">


                            <!--card-->
                            <div class=" col-md-8 offset-md-1 mt-4  col-sm-12" href="">
                                <div class="category mb-30" style="max-height: max-content">
                                    <div>
                                        <div style="background-image: url(<?= 'https://picsum.photos/350/150' ?>);background-size: cover;width: 100%;height: 15rem" alt="cover"> </div>
                                        <div class="card-content p-1" style="display: flex; height: 3rem; flex-direction: column;justify-content: space-around">
                                            <ul class="place mt-3" style="width: 100%;display: flex;flex-direction: row; justify-content: space-between;list-style: none">
                                                <li class="d-flex flex-row">
                                                    <img src="<?=BASE_URL_WITH_VIEWS?>/public/images/position.png"  style="height: 20px;width: 20px">
                                                    <p class=" text-center"><i class="fas fa-map-marker-alt pe-2"></i><?php echo $annonce['address'];?></p>

                                                </li>
                                                <li class="d-flex flex-row">
                                                    <img src="<?=BASE_URL_WITH_VIEWS?>/public/images/time.png"  style="height: 20px;width: 20px">
                                                    <p class="text-center mx-2"><i class="fas fa-map-marker-alt pe-2"></i><?= explode(" ",$annonce['createAt'])[0] ?></p>

                                                </li>
                                            </ul>
                                        </div>
                                        <p class="fs-5 my-3 text-wrap " ><?php echo $annonce['title'];?></p>
                                        <p  class="fs-5 mb-1 text-wrap " style="color: #2c3034"  >DESCRIPTION</p>
                                        <p class="fs-6 m-0 text-wrap" ><?php echo $annonce['description'];?></p>

                                    </div>
                                    <div class="d-flex justify-content-center align-items-center my-lg-5">
                                        <button id="btn-submit" style="background-color: var(--active-color)" class="btn  active "  > RESERVE</button>
                                    </div>


                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>
</div>




<!-- fin sign in-->
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="<?=BASE_URL_WITH_VIEWS?>public/js/main.js"></script>

</body>
</html>
