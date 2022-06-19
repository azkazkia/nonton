<?php 

require 'database.php';

$genreFilm = ["","Drama","Animation","Horror","Comedy","Romance","Action", "Fantasy"];

$film10 = query("SELECT * FROM film order by description desc limit 10");
$filmAll = query("SELECT * FROM film order by genre asc");

if($_GET){
    $film10 = query("SELECT * FROM film where genre = $_GET[genre] order by description desc limit 10");
    $filmAll = query("SELECT * FROM film where genre = $_GET[genre] order by genre asc");
}

if(!$filmAll){
    $filmAll = [];
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Responsive Bootstrap4 Shop Template, Created by Imran Hossain from https://imransdesign.com/">

    <title>Nonton: Nonton Sepuasmu!</title>
    
    <link rel="shortcut icon" type="image/png" href="assets/img/favicon.png">

    <!-- CSS Bundle Website Base -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/all.min.css">
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/owl.carousel.css">
    <link rel="stylesheet" href="assets/css/magnific-popup.css">
    <link rel="stylesheet" href="assets/css/animate.css">
    <link rel="stylesheet" href="assets/css/meanmenu.min.css">
    <link rel="stylesheet" href="assets/css/main.css">
    <link rel="stylesheet" href="assets/css/responsive.css">

</head>
<body>

    <!--WEBSITE LOADER-->
    <div class="loader">
        <div class="loader-inner">
            <div class="circle"></div>
        </div>
    </div>
    
    <!-- HEADER -->
    <div class="top-header-area" id="sticker">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-sm-12 text-center">
                    <div class="main-menu-wrap">

                        <!-- NONTON LOGO -->
                        <div class="site-logo">
                            <a href="index.php">
                                <img src="img/logo.png" width="200">
                            </a>
                        </div>

                        <!-- NAVIGATION BAR -->
                        <nav class="main-menu">
                        <ul>
                                <li><a href="index.php?genre=1">Drama</a></li>
                                <li><a href="index.php?genre=2">Animation</a></li>
                                <li><a href="index.php?genre=3">Horror</a></li>
                                <li><a href="index.php?genre=4">Comedy</a></li>
                                <li><a href="index.php?genre=5">Romance</a></li>
                                <li><a href="index.php?genre=6">Action</a></li>
                                <li><a href="#">More</a>
                                    <ul class="sub-menu">
                                        <li>
                                            <a>Top Picks</a>
                                        </li>
                                        <li>
                                            <a>Anime</a>
                                        </li>
                                        <li>
                                            <a>News</a>
                                        </li>
                                        <li>
                                            <a>Music</a>
                                        </li>
                                        <li>
                                            <a>Lifestyle</a>
                                        </li>
                                        <li>
                                            <a>Entertainment</a>
                                        </li>
                                        <li>
                                            <a>Education</a>
                                        </li>
                                        <li>
                                            <a>Fantasy Team</a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <div class="header-icons">
                                        <a class="mobile-hide search-bar-icon" href="#"><i class="fas fa-search"></i></a>
                                    </div>
                                </li>
                            </ul>
                        </nav>
                        <a class="mobile-show search-bar-icon" href="#"><i class="fas fa-search"></i></a>
                        <div class="mobile-menu"></div>
                        <!-- NAVIGATION BAR ENDS -->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- HEADER END -->
    
    <!-- SEARCH PAGE -->
    <div class="search-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <span class="close-btn"><i class="fas fa-window-close"></i></span>
                    <div class="search-bar">
                        <div class="search-bar-tablecell">
                            <h3>Search for a Movie:</h3>
                            <form action="search.php" method="get">
                                <input type="text" placeholder="Type in your Movie" name="title">
                                <button type="submit">Search <i class="fas fa-search"></i></button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>  

    <!-- CAROUSEL -->
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="5"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="6"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="7"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="8"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="9"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img class="d-block w-100" src="img/carousel-1.jpg" alt="First Movie">
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="img/carousel-2.jpg" alt="Second Movie">
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="img/carousel-3.jpg" alt="Third Movie">
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="img/carousel-4.jpg" alt="Fourth Movie">
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="img/carousel-5.jpg" alt="Fifth Movie">
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="img/carousel-6.jpg" alt="Sixth Movie">
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="img/carousel-7.jpg" alt="Seventh Movie">
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="img/carousel-8.jpg" alt="Eighth Movie">
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="img/carousel-9.jpg" alt="Ninth Movie">
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="img/carousel-10.jpg" alt="Tenth Movie">
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
    <!-- CAROUSEL END -->

    <!-- MOVIES -->
    <div class="latest-news pt-150 pb-150">
        <div class="container">

            <div class="row">
                <div class="col-lg-8 offset-lg-2 text-center">
                    <div class="section-title"> 
                        <h3><span class="orange-text">Movies</span> to be watched!</h3>
                    </div>
                </div>
            </div>

            <div class="row">
                <?php $genre = 0 ?>
                <div class="col-sm-12 bg-light py-2 my-4">
                    <h4 class="orange-text"><?= $filmAll ? $genreFilm[$filmAll[0]['genre']] : "Genre Kosong" ?></h4>
                </div>
                <?php foreach ($filmAll as $key => $value): ?>
                    <?php 
                    if ($genre == 0):
                        $genre = $value['genre'];
                    endif;
                    ?>

                    <?php if($genre != $value['genre']): ?>
                        <div class="col-sm-12 bg-light py-2 my-4">
                            <h4 class="orange-text"><?= $genreFilm[$value['genre']] ?></h4>
                        </div>
                        <?php $genre = 0 ?>
                    <?php endif; ?>

                    <div class="col-sm-2">
                        <div class="single-latest-news text-center">
                            <a href="movie_info.php?id=<?= $value['id'] ?>">
                                <img src="<?= $value['image'] ?>" alt="">
                            </a>
                            <div class="news-text-box p-1 orange-text">
                                <p><a href="single-news.html" class="orange-text"><?= $value['title'] ?></a></p>
                            </div>
                        </div>
                    </div>
                <?php endforeach ?>
            </div>
        </div>
    </div>
    <!-- MOVIES END -->

    <!-- FOOTER -->
    <div class="copyright">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-12">
                    <p><a class="orange-text">Copyright Nonton Streaming Service &copy; <?= date("Y") ?></p>
                    <p><a class="orange-text">Visit us on Instagram @nonton.id </p>
                </div>
            </div>
        </div>
    </div>
    <!-- FOOTER END -->

    <!-- SCRIPT BUNDLE -->
    <script src="assets/js/jquery-1.11.3.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/jquery.countdown.js"></script>
    <script src="assets/js/jquery.isotope-3.0.6.min.js"></script>
    <script src="assets/js/waypoints.js"></script>
    <script src="assets/js/owl.carousel.min.js"></script>
    <script src="assets/js/jquery.magnific-popup.min.js"></script>
    <script src="assets/js/jquery.meanmenu.min.js"></script>
    <script src="assets/js/sticker.js"></script>
    <script src="assets/js/main.js"></script>

</body>
</html>