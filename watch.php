<?php 

require 'database.php';

$genreFilm = ["","Drama","Animation","Horror","Comedy","Romance","Action", "Fantasy"];

if($_GET):
    $filmSearch = query("SELECT * FROM film where id = '$_GET[id]' ");
    $filmSearch = $filmSearch ? $filmSearch[0] : "";

    $anotherFilm = query("SELECT * FROM film where genre = $filmSearch[genre] and id != $_GET[id]");

else:
    header('Location: ');
endif;

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Responsive Bootstrap4 Shop Template, Created by Imran Hossain from https://imransdesign.com/">

    <title>Nonton: Nonton Sepuasmu!</title>

    <!-- CSS Bundle Website Base-->
    <link rel="shortcut icon" type="image/png" href="assets/img/favicon.png">
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
    <!--WEBSITE LOADER ENDS-->
    
    <!-- HEADER -->
    <div class="top-header-area bg-dark" id="sticker">
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

                        <!-- NAVIGATION -->
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
                        <!-- NAVIGATION BAR END -->
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
    <!-- SEARCH PAGE -->

    <!-- MOVIE -->
    <div class="latest-news pt-150 pb-150">
        <div class="container">

            <div class="row">
            </div>

            <div class="row">
                <div class="col-sm-10">
                    <div class="single-latest-news text-center bg-dark shadow-none" style="width: 100%;height: 500px;" >
                    </div>
                    <h3><?= $filmSearch['title'] ?></h3>
                    <br><br>
                    Genre: <?= $genreFilm[$filmSearch['genre']] ?><hr>
                    Release Date: <?= $filmSearch['release_date'] ?><hr>
                    Average Votes: <?= $filmSearch['vote_average'] ?><hr>
                    Voted by: <?= $filmSearch['voted_by'] ?><hr>
                    Description: <?= $filmSearch['description'] ?>
                </div>
                <div class="col-sm-2 row">
                    <div class="col-sm-12 mb-4">
                        <h5>Other movies to watch!</h5>
                    </div>
                    <?php foreach ($anotherFilm as $key => $value): ?>
                        <div class="col-sm-12">
                            <div class="single-latest-news text-center">
                                <a href="movie_info.php?id=<?= $value['id'] ?>">
                                    <img src="<?= $value['image'] ?>" alt="">
                                </a>
                                <div class="news-text-box p-1 text-dark">
                                    <p><a href="single-news.html" class="text-dark"><?= $value['title'] ?></a></p>
                                </div>
                            </div>
                        </div>
                    <?php endforeach ?>
                </div>
            </div>
        </div>
    </div>
    <!-- MOVIE END -->
    
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