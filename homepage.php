 <?php
 print_r($_POST);

 // connect to database
    $con=new mysqli('localhost','root','','projet_fil_rouge');

 //loading cities list
    $result=$con->query("SELECT * FROM `city`");
    $cities=$result->fetch_all(MYSQLI_ASSOC);
 //loading categories

 $resultCategories=$con->query("SELECT * FROM `category`");
 $categories=$resultCategories->fetch_all(MYSQLI_ASSOC);
    //uploading image
if(isset($_POST['submit'])) {
    echo "file ipload i 
    nitaed:";
    $target_dir = "uploads/";
    $sizeLimit=500000000;
    $target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]);
    $uploadOk = 1;
    $imageFileType = strtolower(pathinfo($target_file, PATHINFO_EXTENSION));

// Check if image file is a actual image or fake image
        $check = getimagesize($_FILES["fileToUpload"]["tmp_name"]);
        if ($check !== false) {
            echo "File is an image - " . $check["mime"] . ".";
            $uploadOk = 1;
        } else {
            echo "File is not an image.";
            $uploadOk = 0;
        }


// Check if file already exists
    if (file_exists($target_file)) {
        echo "Sorry, file already exists.";
        $uploadOk = 0;
    }

// Check file size
    if ($_FILES["fileToUpload"]["size"] > $sizeLimit) {
        echo "Sorry, your file is too large.";
        $uploadOk = 0;
    }

// Allow certain file formats
    if ($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
        && $imageFileType != "gif") {
        echo "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
        $uploadOk = 0;
    }

// Check if $uploadOk is set to 0 by an error
    if ($uploadOk == 0) {
        echo "Sorry, your file was not uploaded.";
// if everything is ok, try to upload file
    } else {
        if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) {
            echo "The file " . htmlspecialchars(basename($_FILES["fileToUpload"]["name"])) . " has been uploaded.";
        } else {
            echo "Sorry, there was an error uploading your file.";
        }
    }
}
    ?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!-- CSS only -->
    <link href="./public/css/bootstrap.css" rel="stylesheet" >
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
            <a class="navbar-brand" id="logo" href="#">
                <img src="public/images/logo.png" alt="logo">
            </a>
            <div class="collapse navbar-collapse flex-row-reverse justify-content-between" id="navbarTogglerDemo03">
                <ul class="navbar-nav  mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="btn btn-outline nav-link active"  aria-current="page" href="./signin.php">Sign in </a>
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

    <div class="tap-options ">
        <button class="tablink" onclick="openCity('objects', this, '#ff4a59')">objects</button>
        <button class="tablink" onclick="openCity('add', this, 'rgb(255, 198, 57)')">add</button>
    </div>

    <div id="objects" class="tabcontent">
        <!--****************************** OBJECT ********************************-->

        <!---search--->
        <div class="container py-100">
            <div class="row">
                <div class="col-md-3">
                    <!-- block category -->
                    <form id="code_filter_1" method="post" >
                        <div class="card mb-4">
                            <article class="card-group-item">
                                <div class="card-header card-header-divider">Location</div>
                                <div class="card-body">
                                    <select class="form-select" aria-label="location" name="city">
                                        <option value="0" selected>Anywhere</option>

                                        <?php foreach ($cities as $city){?>

                                            <option value="<?= $city['ville']?>"><?= $city['ville']?></option>

                                        <?php }?>

                                    </select>
                                </div> <!-- card-body.// -->
                            </article> <!-- card-group-item.// -->
                        </div>
                        <div class="card mb-4">
                            <article class="card-group-item">
                                <div class="card-header card-header-divider">Category</div>
                                <div class="card-body">
                                    <select class="form-select" aria-label="category"  name="category">
                                        <option value="0" selected>All</option>
                                        <?php foreach ($categories as $category){?>

                                            <option value="<?= $category['id']?>"><?= $category['name']?></option>

                                        <?php }?>

                                    </select>
                                </div> <!-- card-body.// -->
                            </article> <!-- card-group-item.// -->
                        </div>
                        <div class="card mb-4">
                            <article class="card-group-item">
                                <div class="card-header card-header-divider">Choose type</div>
                                <div class="card-body">
                                    <label class="form-check">
                                        <input class="form-check-input" type="radio" name="availability" value="all" checked>
                                        <span class="form-check-label">
                                            All
                                        </span>
                                    </label>
                                    <label class="form-check">
                                        <input class="form-check-input" type="radio" name="availability" value="free">
                                        <span class="form-check-label">
                                            Free
                                        </span>
                                    </label>
                                    <label class="form-check">
                                        <input class="form-check-input" type="radio" name="availability" value="reserved">
                                        <span class="form-check-label">
                                            Reserved
                                        </span>
                                    </label>

                                </div> <!-- card-body.// -->
                            </article> <!-- card-group-item.// -->
                        </div> <!-- card.// -->
                        <button id="btn-submit" class="btn w-100">
                            Apply filter
                        </button>
                    </form>
                </div>
                <!-- /block category -->
                <div class="col-md-9">
                    <div class="col-md-4 col-sm-6 mb-3">
                        <div class="box20">
                            <img src="assets/img/item/04.jpg" alt="">
                            <div class="box-content">
                                <h3 class="title">HeRa Khan</h3>
                                <span class="post">web designer</span>
                            </div>
                            <ul class="icon">
                                <li><a href="#"><i class="fa fa-plus"></i></a></li>
                                <li><a href="#"><i class="fa fa-link"></i></a></li>
                            </ul>
                        </div>
                        <div class="upherakhan">
                            <a href="#" class="uptitle"><h5>I will design 3 minimalist logo concepts with unlimited revisions</h5></a>
                            <b class="float-left ml-4 upcat">logo design</b>
                            <b class="float-right mr-4 upstar"><i class="fa fa-star"> 4.9</i> (91)</b>
                            <div class="upprice">
                                <p class="float-left ml-4"><i class="fa fa-bars"></i> <i class="fa fa-heart"></i></p>
                                <p class="float-right mr-3"><small>Starting At</small> $55</p>
                            </div>
                        </div>
                    </div>

                </div>

            </div>
        </div>
    </div>



                    <!--****************************** FIN OBJECT ********************************-->
    </div>


    <div id="add" class="tabcontent container">
        <form action="" class="col-md-8 offset-md-2" method="post" enctype="multipart/form-data">
            <div>

                <div class="form-group row mb-3">
                    <div class="col-sm-10 offset-1">
                        <label for="category" class="form-label">Choose a category</label>
                        <select class="form-select" aria-label="Default select example">
                            <option value="0" selected>Category</option>
                            <?php
                            foreach ($categories as $category){
                                ?>
                                <option value="<?= $category['id']?>"><?= $category['name']?></option>
                            <?php }?>
                        </select>
                    </div>
                </div>

                <div class="form-group row mb-3">
                    <div class="col-sm-10 offset-sm-1">
                        <label for="title" class="form-label">Title</label>
                        <input type="text" class="form-control" id="title" placeholder="ex: table, chair, book, fridge...">
                    </div>
                </div>
                <div class="form-group row mb-3">
                    <div class="col-sm-10 offset-sm-1">
                        <label for="exampleFormControlInput1" class="form-label">description</label>
                        <textarea class="form-control" id="description"  rows="3"></textarea>
                    </div>
                </div>

                <div class="form-group row mb-5">
                    <div class="col-sm-10 offset-1">
                        <label for="category" class="form-label">Choose a city</label>
                        <select class="form-select" aria-label="Default select example">
                            <option value="0" selected>City</option>

                            <?php foreach ($cities as $city){?>

                            <option value="<?= $city['ville']?>"><?= $city['ville']?></option>

                            <?php }?>

                        </select>
                    </div>
                </div>
                <div class="form-group row mb-5">
                    <div class="col-sm-10 offset-sm-1">
                        <label for="exampleFormControlInput1" class="form-label">Add image</label>

                        <input type="file" name="fileToUpload" id="fileToUpload">
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-sm-10 offset-sm-1">
                        <button type="submit" name="submit" id="btn-submit" class="btn  btn-lg btn-block w-100">ADD</button>

                    </div>
                </div>

            </div>
        </form>
    </div>
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
    <script>
        document.querySelectorAll('.tablink')[<?= $_GET['open'] ?? 0 ?>].id="defaultOpen";
    </script>
    <script src="public/js/main.js"></script>

</body>
</html>

