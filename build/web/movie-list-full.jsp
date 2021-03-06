<!doctype html>
<html>
    <head>
        <!-- Basic Page Needs -->
        <meta charset="utf-8">
        <title>AMovie - Movie list</title>
        <meta name="description" content="A Template by Gozha.net">
        <meta name="keywords" content="HTML, CSS, JavaScript">
        <meta name="author" content="Gozha.net">

        <!-- Mobile Specific Metas-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="telephone=no" name="format-detection">

        <!-- Fonts -->
        <!-- Font awesome - icon font -->
        <link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
        <!-- Roboto -->
        <link href='http://fonts.googleapis.com/css?family=Roboto:400,700' rel='stylesheet' type='text/css'>

        <!-- Stylesheets -->
        <!-- jQuery UI -->
        <link href="http://code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css" rel="stylesheet">

        <!-- Mobile menu -->
        <link href="css/gozha-nav.css" rel="stylesheet" />
        <!-- Select -->
        <link href="css/external/jquery.selectbox.css" rel="stylesheet" />

        <!-- Custom -->
        <link href="css/style.css?v=1" rel="stylesheet" />

        <!-- Modernizr --> 
        <script src="js/external/modernizr.custom.js"></script>

        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries --> 
        <!--[if lt IE 9]> 
            <script src="http://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7/html5shiv.js"></script> 
                    <script src="http://cdnjs.cloudflare.com/ajax/libs/respond.js/1.3.0/respond.js"></script>		
        <![endif]-->
    </head>

    <body ng-app="movieListFull"> 
        <div class="wrapper">
            <!-- Header section -->
            <%@include file="header.jsp" %>

            <!-- Search bar -->
            <div class="search-wrapper" style="margin-top: 55px;">
                <div class="container container--add">
                    <form id='search-form' method='get' class="search" style="top: 10px;">
                        <input type="text" class="search__field" placeholder="Search">
                        <select name="sorting_item" id="search-sort" class="search__sort" tabindex="0">
                            <option value="1" selected='selected'>By title</option>
                            <option value="2">By year</option>
                            <option value="3">By producer</option>
                            <option value="4">By title</option>
                            <option value="5">By year</option>
                        </select>
                        <button type='submit' class="btn btn-md btn--danger search__button">search a movie</button>
                    </form>
                </div>
            </div>

            <!-- Main content -->
            <section class="container" ng-controller="movieListFilterController">
                <div class="col-sm-12">
                    <h2 class="page-heading">Movies</h2>

                    <div class="select-area">
                        <div class="datepicker">
                            <span class="datepicker__marker"><i class="fa fa-calendar"></i>Date</span>
                            <input ng-change="filterRequest()" ng-model="filter.date" type="text" id="datepicker" class="datepicker__input">
                        </div>
                        <div class="select select--cinema" method=''>
                            <select ng-change="filterRequest()" ng-model="filter.cinema"  ng-options='c.cinemaName for c in cinemas' name="select_item" class="select__sort" tabindex="0">
<!--                                <option ng-repeat='c in cinemas' ng-value="c.cinemaID">{{c.cinemaName}}</option>-->
                            </select>
                        </div>

                        <form class="select select--film-category" method='get'>
                            <select ng-change="filterRequest()" ng-model="filter.category" ng-options='c.categoryName for c in categories' name="select_item" class="select__sort" tabindex="0">
                                
                            </select>
                        </form>

                    </div>

                    <div class="tags-area">
                        <div class="tags tags--unmarked">
                            <span class="tags__label">Sorted by:</span>
                            <ul>
                                <li class="item-wrap"><a href="#" class="tags__item item-active" data-filter='all'>all</a></li>
                                <li class="item-wrap"><a href="#" class="tags__item" data-filter='release'>release date</a></li>
                                <li class="item-wrap"><a href="#" class="tags__item" data-filter='popularity'>popularity</a></li>
                                <li class="item-wrap"><a href="#" class="tags__item" data-filter='comments'>comments</a></li>
                                <li class="item-wrap"><a href="#" class="tags__item" data-filter='ending'>ending soon</a></li>
                            </ul>
                        </div>
                    </div>

                    <!-- Movie preview item -->
                    <div class="movie movie--preview movie--full release">
                        <div class="col-sm-3 col-md-2 col-lg-2">
                            <div class="movie__images">
                                <img alt='' src="http://placehold.it/380x600">
                            </div>
                            <div class="movie__feature">
                                <a href="#" class="movie__feature-item movie__feature--comment">123</a>
                                <a href="#" class="movie__feature-item movie__feature--video">7</a>
                                <a href="#" class="movie__feature-item movie__feature--photo">352</a>
                            </div>
                        </div>

                        <div class="col-sm-9 col-md-10 col-lg-10 movie__about">
                            <a href='movie-page-full.html' class="movie__title link--huge">Last Vegas (2013)</a>

                            <p class="movie__time">105 min</p>

                            <p class="movie__option"><strong>Country: </strong><a href="#">USA</a></p>
                            <p class="movie__option"><strong>Category: </strong><a href="#">Comady</a></p>
                            <p class="movie__option"><strong>Release date: </strong>November 1, 2013</p>
                            <p class="movie__option"><strong>Director: </strong><a href="#">Jon Turteltaub</a></p>
                            <p class="movie__option"><strong>Actors: </strong><a href="#">Robert De Niro</a>, <a href="#">Michael Douglas</a>, <a href="#">Morgan Freeman</a>, <a href="#">Kevin Kline</a>, <a href="#">Mary Steenburgen</a>, <a href="#">Jerry Ferrara</a>, <a href="#">Romany Malco</a> <a href="#">...</a></p>
                            <p class="movie__option"><strong>Age restriction: </strong><a href="#">13</a></p>

                            <div class="movie__btns">
                                <a href="#" class="btn btn-md btn--warning">book a ticket <span class="hidden-sm">for this movie</span></a>
                                <a href="#" class="watchlist">Add to watchlist</a>
                            </div>

                            <div class="preview-footer">
                                <div class="movie__rate"><div class="score"></div><span class="movie__rate-number">170 votes</span> <span class="movie__rating">5.0</span></div>


                                <a href="#" class="movie__show-btn">Showtime</a>
                            </div>
                        </div>

                        <div class="clearfix"></div>

                        <!-- Time table (choose film start time)-->
                        <div class="time-select">
                            <div class="time-select__group group--first">
                                <div class="col-sm-4">
                                    <p class="time-select__place">Cineworld</p>
                                </div>
                                <ul class="col-sm-8 items-wrap">
                                    <li class="time-select__item" data-time='09:40'>09:40</li>
                                    <li class="time-select__item" data-time='13:45'>13:45</li>
                                    <li class="time-select__item active" data-time='15:45'>15:45</li>
                                    <li class="time-select__item" data-time='19:50'>19:50</li>
                                    <li class="time-select__item" data-time='21:50'>21:50</li>
                                </ul>
                            </div>

                            <div class="time-select__group">
                                <div class="col-sm-4">
                                    <p class="time-select__place">Empire</p>
                                </div>
                                <ul class="col-sm-8 items-wrap">
                                    <li class="time-select__item" data-time='10:45'>10:45</li>
                                    <li class="time-select__item" data-time='16:00'>16:00</li>
                                    <li class="time-select__item" data-time='19:00'>19:00</li>
                                    <li class="time-select__item" data-time='21:15'>21:15</li>
                                    <li class="time-select__item" data-time='23:00'>23:00</li>
                                </ul>
                            </div>

                            <div class="time-select__group">
                                <div class="col-sm-4">
                                    <p class="time-select__place">Curzon</p>
                                </div>
                                <ul class="col-sm-8 items-wrap">
                                    <li class="time-select__item" data-time='09:00'>09:00</li>
                                    <li class="time-select__item" data-time='11:00'>11:00</li>
                                    <li class="time-select__item" data-time='13:00'>13:00</li>
                                    <li class="time-select__item" data-time='15:00'>15:00</li>
                                    <li class="time-select__item" data-time='17:00'>17:00</li>
                                    <li class="time-select__item" data-time='19:0'>19:00</li>
                                    <li class="time-select__item" data-time='21:0'>21:00</li>
                                    <li class="time-select__item" data-time='23:0'>23:00</li>
                                    <li class="time-select__item" data-time='01:0'>01:00</li>
                                </ul>
                            </div>

                            <div class="time-select__group">
                                <div class="col-sm-4">
                                    <p class="time-select__place">Odeon</p>
                                </div>
                                <ul class="col-sm-8 items-wrap">
                                    <li class="time-select__item" data-time='10:45'>10:45</li>
                                    <li class="time-select__item" data-time='16:00'>16:00</li>
                                    <li class="time-select__item" data-time='19:00'>19:00</li>
                                    <li class="time-select__item" data-time='21:15'>21:15</li>
                                    <li class="time-select__item" data-time='23:00'>23:00</li>
                                </ul>
                            </div>

                            <div class="time-select__group group--last">
                                <div class="col-sm-4">
                                    <p class="time-select__place">Picturehouse</p>
                                </div>
                                <ul class="col-sm-8 items-wrap">
                                    <li class="time-select__item" data-time='17:45'>17:45</li>
                                    <li class="time-select__item" data-time='21:30'>21:30</li>
                                    <li class="time-select__item" data-time='02:20'>02:20</li>
                                </ul>
                            </div>
                        </div>
                        <!-- end time table-->

                    </div>
                    <!-- end movie preview item -->

                    <!-- Movie preview item -->
                    <div class="movie movie--preview movie--full comments">
                        <div class="col-sm-3 col-md-2 col-lg-2">
                            <div class="movie__images">
                                <img alt='' src="http://placehold.it/380x600">
                            </div>
                            <div class="movie__feature">
                                <a href="#" class="movie__feature-item movie__feature--comment">23</a>
                                <a href="#" class="movie__feature-item movie__feature--video">2</a>
                                <a href="#" class="movie__feature-item movie__feature--photo">85</a>
                            </div>
                        </div>

                        <div class="col-sm-9 col-md-10 col-lg-10 movie__about">
                            <a href='movie-page-full.html' class="movie__title link--huge">The Book Thief (2013) </a>

                            <p class="movie__time">125 min</p>

                            <p class="movie__option"><strong>Country: </strong><a href="#">USA</a></p>
                            <p class="movie__option"><strong>Category: </strong><a href="#">Drama</a>, <a href="#">War</a></p>
                            <p class="movie__option"><strong>Release date: </strong>November 8, 2013</p>
                            <p class="movie__option"><strong>Director: </strong><a href="#">Brian Percival</a></p>
                            <p class="movie__option"><strong>Actors: </strong><a href="#">Sophie N�lisse</a>, <a href="#">Geoffrey Rush</a>, <a href="#">Emily Watson</a>, <a href="#">Ben Schnetzer</a>, <a href="#">Nico Liersch</a>, <a href="#"> Joachim Paul Assb�ck</a>, <a href="#">Kirsten Block</a>, <a href="#">Nico Liersch</a> <a href="#">...</a></p>
                            <p class="movie__option"><strong>Age restriction: </strong><a href="#">13</a></p>

                            <div class="movie__btns">
                                <a href="#" class="btn btn-md btn--warning">book a ticket <span class="hidden-sm">for this movie</span></a>
                                <a href="#" class="watchlist">Add to watchlist</a>
                            </div>

                            <div class="preview-footer">
                                <div class="movie__rate"><div class="score"></div><span class="movie__rate-number">30 votes</span> <span class="movie__rating">5.0</span></div>


                                <a href="#" class="movie__show-btn">Showtime</a>
                            </div>
                        </div>

                        <div class="clearfix"></div>

                        <!-- Time table (choose film start time)-->
                        <div class="time-select">
                            <div class="time-select__group group--first">
                                <div class="col-sm-4">
                                    <p class="time-select__place">Cineworld</p>
                                </div>
                                <ul class="col-sm-8 items-wrap">
                                    <li class="time-select__item" data-time='09:40'>09:40</li>
                                    <li class="time-select__item" data-time='13:45'>13:45</li>
                                    <li class="time-select__item active" data-time='15:45'>15:45</li>
                                    <li class="time-select__item" data-time='19:50'>19:50</li>
                                    <li class="time-select__item" data-time='21:50'>21:50</li>
                                </ul>
                            </div>

                            <div class="time-select__group">
                                <div class="col-sm-4">
                                    <p class="time-select__place">Empire</p>
                                </div>
                                <ul class="col-sm-8 items-wrap">
                                    <li class="time-select__item" data-time='10:45'>10:45</li>
                                    <li class="time-select__item" data-time='16:00'>16:00</li>
                                    <li class="time-select__item" data-time='19:00'>19:00</li>
                                    <li class="time-select__item" data-time='21:15'>21:15</li>
                                    <li class="time-select__item" data-time='23:00'>23:00</li>
                                </ul>
                            </div>

                            <div class="time-select__group">
                                <div class="col-sm-4">
                                    <p class="time-select__place">Curzon</p>
                                </div>
                                <ul class="col-sm-8 items-wrap">
                                    <li class="time-select__item" data-time='09:00'>09:00</li>
                                    <li class="time-select__item" data-time='11:00'>11:00</li>
                                    <li class="time-select__item" data-time='13:00'>13:00</li>
                                    <li class="time-select__item" data-time='15:00'>15:00</li>
                                    <li class="time-select__item" data-time='17:00'>17:00</li>
                                    <li class="time-select__item" data-time='19:0'>19:00</li>
                                    <li class="time-select__item" data-time='21:0'>21:00</li>
                                    <li class="time-select__item" data-time='23:0'>23:00</li>
                                    <li class="time-select__item" data-time='01:0'>01:00</li>
                                </ul>
                            </div>

                            <div class="time-select__group">
                                <div class="col-sm-4">
                                    <p class="time-select__place">Odeon</p>
                                </div>
                                <ul class="col-sm-8 items-wrap">
                                    <li class="time-select__item" data-time='10:45'>10:45</li>
                                    <li class="time-select__item" data-time='16:00'>16:00</li>
                                    <li class="time-select__item" data-time='19:00'>19:00</li>
                                    <li class="time-select__item" data-time='21:15'>21:15</li>
                                    <li class="time-select__item" data-time='23:00'>23:00</li>
                                </ul>
                            </div>

                            <div class="time-select__group group--last">
                                <div class="col-sm-4">
                                    <p class="time-select__place">Picturehouse</p>
                                </div>
                                <ul class="col-sm-8 items-wrap">
                                    <li class="time-select__item" data-time='17:45'>17:45</li>
                                    <li class="time-select__item" data-time='21:30'>21:30</li>
                                    <li class="time-select__item" data-time='02:20'>02:20</li>
                                </ul>
                            </div>
                        </div>
                        <!-- end time table-->
                    </div>
                    <!-- end movie preview item -->

                    <!-- Movie preview item -->
                    <div class="movie movie--preview movie--full release">
                        <div class="col-sm-3 col-md-2 col-lg-2">
                            <div class="movie__images">
                                <img alt='' src="http://placehold.it/380x600">
                            </div>
                            <div class="movie__feature">
                                <a href="#" class="movie__feature-item movie__feature--comment">93</a>
                                <a href="#" class="movie__feature-item movie__feature--video">9</a>
                                <a href="#" class="movie__feature-item movie__feature--photo">183</a>
                            </div>
                        </div>

                        <div class="col-sm-9 col-md-10 col-lg-10 movie__about">
                            <a href='movie-page-full.html' class="movie__title link--huge">Thor: The Dark World 3D (2013)</a>

                            <p class="movie__time">112 min</p>

                            <p class="movie__option"><strong>Country: </strong><a href="#">USA</a></p>
                            <p class="movie__option"><strong>Category: </strong><a href="#">Action</a>, <a href="#">Adventure</a>, <a href="#">Fantazy</a></p>
                            <p class="movie__option"><strong>Release date: </strong>November 8, 2013</p>
                            <p class="movie__option"><strong>Director: </strong><a href="#">Alan Taylor</a></p>
                            <p class="movie__option"><strong>Actors: </strong><a href="#">Chris Hemsworth</a>, <a href="#">Natalie Portman</a>, <a href="#">Tom Hiddleston</a>, <a href="#">Stellan Skarsg�rd</a>, <a href="#">Idris Elba</a>, <a href="#">Christopher Eccleston</a>, <a href="#">Adewale Akinnuoye-Agbaje</a> <a href="#">...</a></p>
                            <p class="movie__option"><strong>Age restriction: </strong><a href="#">13</a></p>

                            <div class="movie__btns">
                                <a href="#" class="btn btn-md btn--warning">book a ticket <span class="hidden-sm">for this movie</span></a>
                                <a href="#" class="watchlist">Add to watchlist</a>
                            </div>

                            <div class="preview-footer">
                                <div class="movie__rate"><div class="score"></div><span class="movie__rate-number">96 votes</span> <span class="movie__rating">4.9</span></div>


                                <a href="#" class="movie__show-btn">Showtime</a>
                            </div>
                        </div>

                        <div class="clearfix"></div>

                        <!-- Time table (choose film start time)-->
                        <div class="time-select">
                            <div class="time-select__group group--first">
                                <div class="col-sm-4">
                                    <p class="time-select__place">Cineworld</p>
                                </div>
                                <ul class="col-sm-8 items-wrap">
                                    <li class="time-select__item" data-time='09:40'>09:40</li>
                                    <li class="time-select__item" data-time='13:45'>13:45</li>
                                    <li class="time-select__item active" data-time='15:45'>15:45</li>
                                    <li class="time-select__item" data-time='19:50'>19:50</li>
                                    <li class="time-select__item" data-time='21:50'>21:50</li>
                                </ul>
                            </div>

                            <div class="time-select__group">
                                <div class="col-sm-4">
                                    <p class="time-select__place">Empire</p>
                                </div>
                                <ul class="col-sm-8 items-wrap">
                                    <li class="time-select__item" data-time='10:45'>10:45</li>
                                    <li class="time-select__item" data-time='16:00'>16:00</li>
                                    <li class="time-select__item" data-time='19:00'>19:00</li>
                                    <li class="time-select__item" data-time='21:15'>21:15</li>
                                    <li class="time-select__item" data-time='23:00'>23:00</li>
                                </ul>
                            </div>

                            <div class="time-select__group">
                                <div class="col-sm-4">
                                    <p class="time-select__place">Curzon</p>
                                </div>
                                <ul class="col-sm-8 items-wrap">
                                    <li class="time-select__item" data-time='09:00'>09:00</li>
                                    <li class="time-select__item" data-time='11:00'>11:00</li>
                                    <li class="time-select__item" data-time='13:00'>13:00</li>
                                    <li class="time-select__item" data-time='15:00'>15:00</li>
                                    <li class="time-select__item" data-time='17:00'>17:00</li>
                                    <li class="time-select__item" data-time='19:0'>19:00</li>
                                    <li class="time-select__item" data-time='21:0'>21:00</li>
                                    <li class="time-select__item" data-time='23:0'>23:00</li>
                                    <li class="time-select__item" data-time='01:0'>01:00</li>
                                </ul>
                            </div>

                            <div class="time-select__group">
                                <div class="col-sm-4">
                                    <p class="time-select__place">Odeon</p>
                                </div>
                                <ul class="col-sm-8 items-wrap">
                                    <li class="time-select__item" data-time='10:45'>10:45</li>
                                    <li class="time-select__item" data-time='16:00'>16:00</li>
                                    <li class="time-select__item" data-time='19:00'>19:00</li>
                                    <li class="time-select__item" data-time='21:15'>21:15</li>
                                    <li class="time-select__item" data-time='23:00'>23:00</li>
                                </ul>
                            </div>

                            <div class="time-select__group group--last">
                                <div class="col-sm-4">
                                    <p class="time-select__place">Picturehouse</p>
                                </div>
                                <ul class="col-sm-8 items-wrap">
                                    <li class="time-select__item" data-time='17:45'>17:45</li>
                                    <li class="time-select__item" data-time='21:30'>21:30</li>
                                    <li class="time-select__item" data-time='02:20'>02:20</li>
                                </ul>
                            </div>
                        </div>
                        <!-- end time table-->

                    </div>
                    <!-- end movie preview item -->

                    <!-- Movie preview item -->
                    <div class="movie movie--preview movie--full popularity">
                        <div class="col-sm-3 col-md-2 col-lg-2">
                            <div class="movie__images">
                                <img alt='' src="http://placehold.it/380x600">
                            </div>
                            <div class="movie__feature">
                                <a href="#" class="movie__feature-item movie__feature--comment">123</a>
                                <a href="#" class="movie__feature-item movie__feature--video">7</a>
                                <a href="#" class="movie__feature-item movie__feature--photo">352</a>
                            </div>
                        </div>

                        <div class="col-sm-9 col-md-10 col-lg-10 movie__about">
                            <a href='movie-page-full.html' class="movie__title link--huge">The Counselor (2013)</a>

                            <p class="movie__time">117 min</p>

                            <p class="movie__option"><strong>Country: </strong><a href="#">USA</a></p>
                            <p class="movie__option"><strong>Category: </strong><a href="#">Crime</a>, <a href="#">Drama</a>, <a href="#">Thriller</a></p>
                            <p class="movie__option"><strong>Release date: </strong>October 25, 2013</p>
                            <p class="movie__option"><strong>Director: </strong><a href="#">Ridley Scott</a></p>
                            <p class="movie__option"><strong>Actors: </strong><a href="#">Michael Fassbender</a>, <a href="#">Pen�lope Cruz</a>, <a href="#">Cameron Diaz</a>, <a href="#">Javier Bardem</a>, <a href="#">Cesar Aguirre</a>, <a href="#">Daniel Holgu�n</a>, <a href="#">Christopher Obi</a>, <a href="#">Bruno Ganz</a>, <a href="#">Brad Pitt</a> <a href="#">...</a></p>
                            <p class="movie__option"><strong>Age restriction: </strong><a href="#">13</a></p>

                            <div class="movie__btns">
                                <a href="#" class="btn btn-md btn--warning">book a ticket <span class="hidden-sm">for this movie</span></a>
                                <a href="#" class="watchlist">Add to watchlist</a>
                            </div>

                            <div class="preview-footer">
                                <div class="movie__rate"><div class="score"></div><span class="movie__rate-number">201 votes</span> <span class="movie__rating">4.9</span></div>


                                <a href="#" class="movie__show-btn">Showtime</a>
                            </div>
                        </div>

                        <div class="clearfix"></div>

                        <!-- Time table (choose film start time)-->
                        <div class="time-select">
                            <div class="time-select__group group--first">
                                <div class="col-sm-4">
                                    <p class="time-select__place">Cineworld</p>
                                </div>
                                <ul class="col-sm-8 items-wrap">
                                    <li class="time-select__item" data-time='09:40'>09:40</li>
                                    <li class="time-select__item" data-time='13:45'>13:45</li>
                                    <li class="time-select__item active" data-time='15:45'>15:45</li>
                                    <li class="time-select__item" data-time='19:50'>19:50</li>
                                    <li class="time-select__item" data-time='21:50'>21:50</li>
                                </ul>
                            </div>

                            <div class="time-select__group">
                                <div class="col-sm-4">
                                    <p class="time-select__place">Empire</p>
                                </div>
                                <ul class="col-sm-8 items-wrap">
                                    <li class="time-select__item" data-time='10:45'>10:45</li>
                                    <li class="time-select__item" data-time='16:00'>16:00</li>
                                    <li class="time-select__item" data-time='19:00'>19:00</li>
                                    <li class="time-select__item" data-time='21:15'>21:15</li>
                                    <li class="time-select__item" data-time='23:00'>23:00</li>
                                </ul>
                            </div>

                            <div class="time-select__group">
                                <div class="col-sm-4">
                                    <p class="time-select__place">Curzon</p>
                                </div>
                                <ul class="col-sm-8 items-wrap">
                                    <li class="time-select__item" data-time='09:00'>09:00</li>
                                    <li class="time-select__item" data-time='11:00'>11:00</li>
                                    <li class="time-select__item" data-time='13:00'>13:00</li>
                                    <li class="time-select__item" data-time='15:00'>15:00</li>
                                    <li class="time-select__item" data-time='17:00'>17:00</li>
                                    <li class="time-select__item" data-time='19:0'>19:00</li>
                                    <li class="time-select__item" data-time='21:0'>21:00</li>
                                    <li class="time-select__item" data-time='23:0'>23:00</li>
                                    <li class="time-select__item" data-time='01:0'>01:00</li>
                                </ul>
                            </div>

                            <div class="time-select__group">
                                <div class="col-sm-4">
                                    <p class="time-select__place">Odeon</p>
                                </div>
                                <ul class="col-sm-8 items-wrap">
                                    <li class="time-select__item" data-time='10:45'>10:45</li>
                                    <li class="time-select__item" data-time='16:00'>16:00</li>
                                    <li class="time-select__item" data-time='19:00'>19:00</li>
                                    <li class="time-select__item" data-time='21:15'>21:15</li>
                                    <li class="time-select__item" data-time='23:00'>23:00</li>
                                </ul>
                            </div>

                            <div class="time-select__group group--last">
                                <div class="col-sm-4">
                                    <p class="time-select__place">Picturehouse</p>
                                </div>
                                <ul class="col-sm-8 items-wrap">
                                    <li class="time-select__item" data-time='17:45'>17:45</li>
                                    <li class="time-select__item" data-time='21:30'>21:30</li>
                                    <li class="time-select__item" data-time='02:20'>02:20</li>
                                </ul>
                            </div>
                        </div>
                        <!-- end time table-->

                    </div>
                    <!-- end movie preview item -->

                    <!-- Movie preview item -->
                    <div class="movie movie--preview movie--full ending">
                        <div class="col-sm-3 col-md-2 col-lg-2">
                            <div class="movie__images">
                                <img alt='' src="http://placehold.it/380x600">
                            </div>
                            <div class="movie__feature">
                                <a href="#" class="movie__feature-item movie__feature--comment">23</a>
                                <a href="#" class="movie__feature-item movie__feature--video">2</a>
                                <a href="#" class="movie__feature-item movie__feature--photo">85</a>
                            </div>
                        </div>

                        <div class="col-sm-9 col-md-10 col-lg-10 movie__about">
                            <a href='movie-page-full.html' class="movie__title link--huge">Bad Grandpa (2013) </a>

                            <p class="movie__time">92 min</p>

                            <p class="movie__option"><strong>Country: </strong> <a href="#">USA</a></p>
                            <p class="movie__option"><strong>Category: </strong><a href="#">Comedy</a></p>
                            <p class="movie__option"><strong>Release date: </strong>October 25, 2013</p>
                            <p class="movie__option"><strong>Director: </strong><a href="#">Jeff Tremaine</a></p>
                            <p class="movie__option"><strong>Actors: </strong><a href="#">Johnny Knoxville</a>, <a href="#">Jackson Nicoll</a>, <a href="#">Greg Harris</a>, <a href="#">Georgina Cates</a>, <a href="#">Kamber Hejlik</a>, <a href="#">Jill Kill</a>, <a href="#">Madison Davis</a> <a href="#">...</a></p> 
                            <p class="movie__option"><strong>Age restriction: </strong><a href="#">none</a></p>

                            <div class="movie__btns">
                                <a href="#" class="btn btn-md btn--warning">book a ticket <span class="hidden-sm">for this movie</span></a>
                                <a href="#" class="watchlist">Add to watchlist</a>
                            </div>

                            <div class="preview-footer">
                                <div class="movie__rate"><div class="score"></div><span class="movie__rate-number">30 votes</span> <span class="movie__rating">4.9</span></div>


                                <a href="#" class="movie__show-btn">Showtime</a>
                            </div>
                        </div>

                        <div class="clearfix"></div>

                        <!-- Time table (choose film start time)-->
                        <div class="time-select">
                            <div class="time-select__group group--first">
                                <div class="col-sm-4">
                                    <p class="time-select__place">Cineworld</p>
                                </div>
                                <ul class="col-sm-8 items-wrap">
                                    <li class="time-select__item" data-time='09:40'>09:40</li>
                                    <li class="time-select__item" data-time='13:45'>13:45</li>
                                    <li class="time-select__item active" data-time='15:45'>15:45</li>
                                    <li class="time-select__item" data-time='19:50'>19:50</li>
                                    <li class="time-select__item" data-time='21:50'>21:50</li>
                                </ul>
                            </div>

                            <div class="time-select__group">
                                <div class="col-sm-4">
                                    <p class="time-select__place">Empire</p>
                                </div>
                                <ul class="col-sm-8 items-wrap">
                                    <li class="time-select__item" data-time='10:45'>10:45</li>
                                    <li class="time-select__item" data-time='16:00'>16:00</li>
                                    <li class="time-select__item" data-time='19:00'>19:00</li>
                                    <li class="time-select__item" data-time='21:15'>21:15</li>
                                    <li class="time-select__item" data-time='23:00'>23:00</li>
                                </ul>
                            </div>

                            <div class="time-select__group">
                                <div class="col-sm-4">
                                    <p class="time-select__place">Curzon</p>
                                </div>
                                <ul class="col-sm-8 items-wrap">
                                    <li class="time-select__item" data-time='09:00'>09:00</li>
                                    <li class="time-select__item" data-time='11:00'>11:00</li>
                                    <li class="time-select__item" data-time='13:00'>13:00</li>
                                    <li class="time-select__item" data-time='15:00'>15:00</li>
                                    <li class="time-select__item" data-time='17:00'>17:00</li>
                                    <li class="time-select__item" data-time='19:0'>19:00</li>
                                    <li class="time-select__item" data-time='21:0'>21:00</li>
                                    <li class="time-select__item" data-time='23:0'>23:00</li>
                                    <li class="time-select__item" data-time='01:0'>01:00</li>
                                </ul>
                            </div>

                            <div class="time-select__group">
                                <div class="col-sm-4">
                                    <p class="time-select__place">Odeon</p>
                                </div>
                                <ul class="col-sm-8 items-wrap">
                                    <li class="time-select__item" data-time='10:45'>10:45</li>
                                    <li class="time-select__item" data-time='16:00'>16:00</li>
                                    <li class="time-select__item" data-time='19:00'>19:00</li>
                                    <li class="time-select__item" data-time='21:15'>21:15</li>
                                    <li class="time-select__item" data-time='23:00'>23:00</li>
                                </ul>
                            </div>

                            <div class="time-select__group group--last">
                                <div class="col-sm-4">
                                    <p class="time-select__place">Picturehouse</p>
                                </div>
                                <ul class="col-sm-8 items-wrap">
                                    <li class="time-select__item" data-time='17:45'>17:45</li>
                                    <li class="time-select__item" data-time='21:30'>21:30</li>
                                    <li class="time-select__item" data-time='02:20'>02:20</li>
                                </ul>
                            </div>
                        </div>
                        <!-- end time table-->
                    </div>
                    <!-- end movie preview item -->

                    <!-- Movie preview item -->
                    <div class="movie movie--preview movie--full popularity">
                        <div class="col-sm-3 col-md-2 col-lg-2">
                            <div class="movie__images">
                                <img alt='' src="http://placehold.it/380x600">
                            </div>
                            <div class="movie__feature">
                                <a href="#" class="movie__feature-item movie__feature--comment">93</a>
                                <a href="#" class="movie__feature-item movie__feature--video">9</a>
                                <a href="#" class="movie__feature-item movie__feature--photo">183</a>
                            </div>
                        </div>

                        <div class="col-sm-9 col-md-10 col-lg-10 movie__about">
                            <a href='movie-page-full.html' class="movie__title link--huge">Cloudy with a Chance of Meatballs 2 3D (2013)</a>

                            <p class="movie__time">95 min</p>

                            <p class="movie__option"><strong>Country: </strong><a href="#">USA</a></p>
                            <p class="movie__option"><strong>Category: </strong><a href="#">Animation</a>, <a href="#">Comedt</a>, <a href="#">Family</a></p>
                            <p class="movie__option"><strong>Release date: </strong>September 27, 2013</p>
                            <p class="movie__option"><strong>Director: </strong><a href="#">Alan Taylor</a></p>
                            <p class="movie__option"><strong>Actors: </strong><a href="#">Bill Hader</a>, <a href="#">Anna Faris</a>, <a href="#">Will Forte</a>, <a href="#">Andy Samberg</a>, <a href="#">Benjamin Bratt</a>, <a href="#">Neil Patrick Harris</a> <a href="#">...</a></p>

                            <p class="movie__option"><strong>Age restriction: </strong><a href="#">none</a></p>

                            <div class="movie__btns">
                                <a href="#" class="btn btn-md btn--warning">book a ticket <span class="hidden-sm">for this movie</span></a>
                                <a href="#" class="watchlist">Add to watchlist</a>
                            </div>

                            <div class="preview-footer">
                                <div class="movie__rate"><div class="score"></div><span class="movie__rate-number">96 votes</span> <span class="movie__rating">4.8</span></div>


                                <a href="#" class="movie__show-btn">Showtime</a>
                            </div>
                        </div>

                        <div class="clearfix"></div>

                        <!-- Time table (choose film start time)-->
                        <div class="time-select">
                            <div class="time-select__group group--first">
                                <div class="col-sm-4">
                                    <p class="time-select__place">Cineworld</p>
                                </div>
                                <ul class="col-sm-8 items-wrap">
                                    <li class="time-select__item" data-time='09:40'>09:40</li>
                                    <li class="time-select__item" data-time='13:45'>13:45</li>
                                    <li class="time-select__item active" data-time='15:45'>15:45</li>
                                    <li class="time-select__item" data-time='19:50'>19:50</li>
                                    <li class="time-select__item" data-time='21:50'>21:50</li>
                                </ul>
                            </div>

                            <div class="time-select__group">
                                <div class="col-sm-4">
                                    <p class="time-select__place">Empire</p>
                                </div>
                                <ul class="col-sm-8 items-wrap">
                                    <li class="time-select__item" data-time='10:45'>10:45</li>
                                    <li class="time-select__item" data-time='16:00'>16:00</li>
                                    <li class="time-select__item" data-time='19:00'>19:00</li>
                                    <li class="time-select__item" data-time='21:15'>21:15</li>
                                    <li class="time-select__item" data-time='23:00'>23:00</li>
                                </ul>
                            </div>

                            <div class="time-select__group">
                                <div class="col-sm-4">
                                    <p class="time-select__place">Curzon</p>
                                </div>
                                <ul class="col-sm-8 items-wrap">
                                    <li class="time-select__item" data-time='09:00'>09:00</li>
                                    <li class="time-select__item" data-time='11:00'>11:00</li>
                                    <li class="time-select__item" data-time='13:00'>13:00</li>
                                    <li class="time-select__item" data-time='15:00'>15:00</li>
                                    <li class="time-select__item" data-time='17:00'>17:00</li>
                                    <li class="time-select__item" data-time='19:0'>19:00</li>
                                    <li class="time-select__item" data-time='21:0'>21:00</li>
                                    <li class="time-select__item" data-time='23:0'>23:00</li>
                                    <li class="time-select__item" data-time='01:0'>01:00</li>
                                </ul>
                            </div>

                            <div class="time-select__group">
                                <div class="col-sm-4">
                                    <p class="time-select__place">Odeon</p>
                                </div>
                                <ul class="col-sm-8 items-wrap">
                                    <li class="time-select__item" data-time='10:45'>10:45</li>
                                    <li class="time-select__item" data-time='16:00'>16:00</li>
                                    <li class="time-select__item" data-time='19:00'>19:00</li>
                                    <li class="time-select__item" data-time='21:15'>21:15</li>
                                    <li class="time-select__item" data-time='23:00'>23:00</li>
                                </ul>
                            </div>

                            <div class="time-select__group group--last">
                                <div class="col-sm-4">
                                    <p class="time-select__place">Picturehouse</p>
                                </div>
                                <ul class="col-sm-8 items-wrap">
                                    <li class="time-select__item" data-time='17:45'>17:45</li>
                                    <li class="time-select__item" data-time='21:30'>21:30</li>
                                    <li class="time-select__item" data-time='02:20'>02:20</li>
                                </ul>
                            </div>
                        </div>
                        <!-- end time table-->

                    </div>
                    <!-- end movie preview item -->

                    <!-- Movie preview item -->
                    <div class="movie movie--preview movie--full comments">
                        <div class="col-sm-3 col-md-2 col-lg-2">
                            <div class="movie__images">
                                <img alt='' src="http://placehold.it/380x600">
                            </div>
                            <div class="movie__feature">
                                <a href="#" class="movie__feature-item movie__feature--comment">93</a>
                                <a href="#" class="movie__feature-item movie__feature--video">9</a>
                                <a href="#" class="movie__feature-item movie__feature--photo">183</a>
                            </div>
                        </div>

                        <div class="col-sm-9 col-md-10 col-lg-10 movie__about">
                            <a href='movie-page-full.html' class="movie__title link--huge">Prisoners (2013)</a>

                            <p class="movie__time">153 min</p>

                            <p class="movie__option"><strong>Country: </strong><a href="#">USA</a></p>
                            <p class="movie__option"><strong>Category: </strong><a href="#">Crime</a>, <a href="#">Drama</a>, <a href="#">Thriller</a></p>
                            <p class="movie__option"><strong>Release date: </strong>September 20, 2013</p>
                            <p class="movie__option"><strong>Director: </strong><a href="#">Alan Taylor</a></p>
                            <p class="movie__option"><strong>Actors: </strong><a href="#">Hugh Jackman</a>, <a href="#">Jake Gyllenhaal</a>, <a href="#">Viola Davis</a>, <a href="#">Maria Bello</a>, <a href="#">Terrence Howard</a>, <a href="#">Melissa Leo</a>, <a href="#">Paul Dano</a>, <a href="#">Maria Bello</a>, <a href="#">Viola Davis</a> <a href="#">...</a></p>
                            <p class="movie__option"><strong>Age restriction: </strong><a href="#">13</a></p>

                            <div class="movie__btns">
                                <a href="#" class="btn btn-md btn--warning">book a ticket <span class="hidden-sm">for this movie</span></a>
                                <a href="#" class="watchlist">Add to watchlist</a>
                            </div>

                            <div class="preview-footer">
                                <div class="movie__rate"><div class="score"></div><span class="movie__rate-number">96 votes</span> <span class="movie__rating">4.7</span></div>


                                <a href="#" class="movie__show-btn">Showtime</a>
                            </div>
                        </div>

                        <div class="clearfix"></div>

                        <!-- Time table (choose film start time)-->
                        <div class="time-select">
                            <div class="time-select__group group--first">
                                <div class="col-sm-4">
                                    <p class="time-select__place">Cineworld</p>
                                </div>
                                <ul class="col-sm-8 items-wrap">
                                    <li class="time-select__item" data-time='09:40'>09:40</li>
                                    <li class="time-select__item" data-time='13:45'>13:45</li>
                                    <li class="time-select__item active" data-time='15:45'>15:45</li>
                                    <li class="time-select__item" data-time='19:50'>19:50</li>
                                    <li class="time-select__item" data-time='21:50'>21:50</li>
                                </ul>
                            </div>

                            <div class="time-select__group">
                                <div class="col-sm-4">
                                    <p class="time-select__place">Empire</p>
                                </div>
                                <ul class="col-sm-8 items-wrap">
                                    <li class="time-select__item" data-time='10:45'>10:45</li>
                                    <li class="time-select__item" data-time='16:00'>16:00</li>
                                    <li class="time-select__item" data-time='19:00'>19:00</li>
                                    <li class="time-select__item" data-time='21:15'>21:15</li>
                                    <li class="time-select__item" data-time='23:00'>23:00</li>
                                </ul>
                            </div>

                            <div class="time-select__group">
                                <div class="col-sm-4">
                                    <p class="time-select__place">Curzon</p>
                                </div>
                                <ul class="col-sm-8 items-wrap">
                                    <li class="time-select__item" data-time='09:00'>09:00</li>
                                    <li class="time-select__item" data-time='11:00'>11:00</li>
                                    <li class="time-select__item" data-time='13:00'>13:00</li>
                                    <li class="time-select__item" data-time='15:00'>15:00</li>
                                    <li class="time-select__item" data-time='17:00'>17:00</li>
                                    <li class="time-select__item" data-time='19:0'>19:00</li>
                                    <li class="time-select__item" data-time='21:0'>21:00</li>
                                    <li class="time-select__item" data-time='23:0'>23:00</li>
                                    <li class="time-select__item" data-time='01:0'>01:00</li>
                                </ul>
                            </div>

                            <div class="time-select__group">
                                <div class="col-sm-4">
                                    <p class="time-select__place">Odeon</p>
                                </div>
                                <ul class="col-sm-8 items-wrap">
                                    <li class="time-select__item" data-time='10:45'>10:45</li>
                                    <li class="time-select__item" data-time='16:00'>16:00</li>
                                    <li class="time-select__item" data-time='19:00'>19:00</li>
                                    <li class="time-select__item" data-time='21:15'>21:15</li>
                                    <li class="time-select__item" data-time='23:00'>23:00</li>
                                </ul>
                            </div>

                            <div class="time-select__group group--last">
                                <div class="col-sm-4">
                                    <p class="time-select__place">Picturehouse</p>
                                </div>
                                <ul class="col-sm-8 items-wrap">
                                    <li class="time-select__item" data-time='17:45'>17:45</li>
                                    <li class="time-select__item" data-time='21:30'>21:30</li>
                                    <li class="time-select__item" data-time='02:20'>02:20</li>
                                </ul>
                            </div>
                        </div>
                        <!-- end time table-->


                    </div>
                    <!-- end movie preview item -->

                    <!-- Movie preview item -->
                    <div class="movie movie--preview movie--full ending">
                        <div class="col-sm-3 col-md-2 col-lg-2">
                            <div class="movie__images">
                                <img alt='' src="http://placehold.it/380x600">
                            </div>
                            <div class="movie__feature">
                                <a href="#" class="movie__feature-item movie__feature--comment">93</a>
                                <a href="#" class="movie__feature-item movie__feature--video">9</a>
                                <a href="#" class="movie__feature-item movie__feature--photo">183</a>
                            </div>
                        </div>

                        <div class="col-sm-9 col-md-10 col-lg-10 movie__about">
                            <a href='movie-page-full.html' class="movie__title link--huge">The Fifth Estate (2013)</a>

                            <p class="movie__time">128 min</p>

                            <p class="movie__option"><strong>Country: </strong><a href="#">USA</a></p>
                            <p class="movie__option"><strong>Category: </strong><a href="#">Action</a>, <a href="#">Adventure</a>, <a href="#">Fantazy</a></p>
                            <p class="movie__option"><strong>Release date: </strong>November 8, 2013</p>
                            <p class="movie__option"><strong>Director: </strong><a href="#">Alan Taylor</a></p>
                            <p class="movie__option"><strong>Actors: </strong><a href="#">Chris Hemsworth</a>, <a href="#">Natalie Portman</a>, <a href="#">Tom Hiddleston</a>, <a href="#">Stellan Skarsg�rd</a>, <a href="#">Idris Elba</a>, <a href="#">Christopher Eccleston</a>, <a href="#">Adewale Akinnuoye-Agbaje</a> <a href="#">...</a></p>
                            <p class="movie__option"><strong>Age restriction: </strong><a href="#">13</a></p>

                            <div class="movie__btns">
                                <a href="#" class="btn btn-md btn--warning">book a ticket <span class="hidden-sm">for this movie</span></a>
                                <a href="#" class="watchlist">Add to watchlist</a>
                            </div>

                            <div class="preview-footer">
                                <div class="movie__rate"><div class="score"></div><span class="movie__rate-number">96 votes</span> <span class="movie__rating">4.7</span></div>


                                <a href="#" class="movie__show-btn">Showtime</a>
                            </div>
                        </div>

                        <div class="clearfix"></div>

                        <!-- Time table (choose film start time)-->
                        <div class="time-select">
                            <div class="time-select__group group--first">
                                <div class="col-sm-4">
                                    <p class="time-select__place">Cineworld</p>
                                </div>
                                <ul class="col-sm-8 items-wrap">
                                    <li class="time-select__item" data-time='09:40'>09:40</li>
                                    <li class="time-select__item" data-time='13:45'>13:45</li>
                                    <li class="time-select__item active" data-time='15:45'>15:45</li>
                                    <li class="time-select__item" data-time='19:50'>19:50</li>
                                    <li class="time-select__item" data-time='21:50'>21:50</li>
                                </ul>
                            </div>

                            <div class="time-select__group">
                                <div class="col-sm-4">
                                    <p class="time-select__place">Empire</p>
                                </div>
                                <ul class="col-sm-8 items-wrap">
                                    <li class="time-select__item" data-time='10:45'>10:45</li>
                                    <li class="time-select__item" data-time='16:00'>16:00</li>
                                    <li class="time-select__item" data-time='19:00'>19:00</li>
                                    <li class="time-select__item" data-time='21:15'>21:15</li>
                                    <li class="time-select__item" data-time='23:00'>23:00</li>
                                </ul>
                            </div>

                            <div class="time-select__group">
                                <div class="col-sm-4">
                                    <p class="time-select__place">Curzon</p>
                                </div>
                                <ul class="col-sm-8 items-wrap">
                                    <li class="time-select__item" data-time='09:00'>09:00</li>
                                    <li class="time-select__item" data-time='11:00'>11:00</li>
                                    <li class="time-select__item" data-time='13:00'>13:00</li>
                                    <li class="time-select__item" data-time='15:00'>15:00</li>
                                    <li class="time-select__item" data-time='17:00'>17:00</li>
                                    <li class="time-select__item" data-time='19:0'>19:00</li>
                                    <li class="time-select__item" data-time='21:0'>21:00</li>
                                    <li class="time-select__item" data-time='23:0'>23:00</li>
                                    <li class="time-select__item" data-time='01:0'>01:00</li>
                                </ul>
                            </div>

                            <div class="time-select__group">
                                <div class="col-sm-4">
                                    <p class="time-select__place">Odeon</p>
                                </div>
                                <ul class="col-sm-8 items-wrap">
                                    <li class="time-select__item" data-time='10:45'>10:45</li>
                                    <li class="time-select__item" data-time='16:00'>16:00</li>
                                    <li class="time-select__item" data-time='19:00'>19:00</li>
                                    <li class="time-select__item" data-time='21:15'>21:15</li>
                                    <li class="time-select__item" data-time='23:00'>23:00</li>
                                </ul>
                            </div>

                            <div class="time-select__group group--last">
                                <div class="col-sm-4">
                                    <p class="time-select__place">Picturehouse</p>
                                </div>
                                <ul class="col-sm-8 items-wrap">
                                    <li class="time-select__item" data-time='17:45'>17:45</li>
                                    <li class="time-select__item" data-time='21:30'>21:30</li>
                                    <li class="time-select__item" data-time='02:20'>02:20</li>
                                </ul>
                            </div>
                        </div>
                        <!-- end time table-->

                    </div>
                    <!-- end movie preview item -->

                    <!-- Movie preview item -->
                    <div class="movie movie--preview movie--full popularity ending">
                        <div class="col-sm-3 col-md-2 col-lg-2">
                            <div class="movie__images">
                                <img alt='' src="http://placehold.it/380x600">
                            </div>
                            <div class="movie__feature">
                                <a href="#" class="movie__feature-item movie__feature--comment">93</a>
                                <a href="#" class="movie__feature-item movie__feature--video">9</a>
                                <a href="#" class="movie__feature-item movie__feature--photo">183</a>
                            </div>
                        </div>

                        <div class="col-sm-9 col-md-10 col-lg-10 movie__about">
                            <a href='movie-page-full.html' class="movie__title link--huge">Runner Runner (2013)</a>

                            <p class="movie__time">91 min</p>

                            <p class="movie__option"><strong>Country: </strong><a href="#">USA</a></p>
                            <p class="movie__option"><strong>Category: </strong><a href="#">Action</a>, <a href="#">Adventure</a>, <a href="#">Fantazy</a></p>
                            <p class="movie__option"><strong>Release date: </strong>November 8, 2013</p>
                            <p class="movie__option"><strong>Director: </strong><a href="#">Alan Taylor</a></p>
                            <p class="movie__option"><strong>Actors: </strong><a href="#">Chris Hemsworth</a>, <a href="#">Natalie Portman</a>, <a href="#">Tom Hiddleston</a>, <a href="#">Stellan Skarsg�rd</a>, <a href="#">Idris Elba</a>, <a href="#">Christopher Eccleston</a>, <a href="#">Adewale Akinnuoye-Agbaje</a> <a href="#">...</a></p>
                            <p class="movie__option"><strong>Age restriction: </strong><a href="#">13</a></p>

                            <div class="movie__btns">
                                <a href="#" class="btn btn-md btn--warning">book a ticket <span class="hidden-sm">for this movie</span></a>
                                <a href="#" class="watchlist">Add to watchlist</a>
                            </div>

                            <div class="preview-footer">
                                <div class="movie__rate"><div class="score"></div><span class="movie__rate-number">96 votes</span> <span class="movie__rating">4.6</span></div>


                                <a href="#" class="movie__show-btn">Showtime</a>
                            </div>
                        </div>

                        <div class="clearfix"></div>

                        <!-- Time table (choose film start time)-->
                        <div class="time-select">
                            <div class="time-select__group group--first">
                                <div class="col-sm-4">
                                    <p class="time-select__place">Cineworld</p>
                                </div>
                                <ul class="col-sm-8 items-wrap">
                                    <li class="time-select__item" data-time='09:40'>09:40</li>
                                    <li class="time-select__item" data-time='13:45'>13:45</li>
                                    <li class="time-select__item active" data-time='15:45'>15:45</li>
                                    <li class="time-select__item" data-time='19:50'>19:50</li>
                                    <li class="time-select__item" data-time='21:50'>21:50</li>
                                </ul>
                            </div>

                            <div class="time-select__group">
                                <div class="col-sm-4">
                                    <p class="time-select__place">Empire</p>
                                </div>
                                <ul class="col-sm-8 items-wrap">
                                    <li class="time-select__item" data-time='10:45'>10:45</li>
                                    <li class="time-select__item" data-time='16:00'>16:00</li>
                                    <li class="time-select__item" data-time='19:00'>19:00</li>
                                    <li class="time-select__item" data-time='21:15'>21:15</li>
                                    <li class="time-select__item" data-time='23:00'>23:00</li>
                                </ul>
                            </div>

                            <div class="time-select__group">
                                <div class="col-sm-4">
                                    <p class="time-select__place">Curzon</p>
                                </div>
                                <ul class="col-sm-8 items-wrap">
                                    <li class="time-select__item" data-time='09:00'>09:00</li>
                                    <li class="time-select__item" data-time='11:00'>11:00</li>
                                    <li class="time-select__item" data-time='13:00'>13:00</li>
                                    <li class="time-select__item" data-time='15:00'>15:00</li>
                                    <li class="time-select__item" data-time='17:00'>17:00</li>
                                    <li class="time-select__item" data-time='19:0'>19:00</li>
                                    <li class="time-select__item" data-time='21:0'>21:00</li>
                                    <li class="time-select__item" data-time='23:0'>23:00</li>
                                    <li class="time-select__item" data-time='01:0'>01:00</li>
                                </ul>
                            </div>

                            <div class="time-select__group">
                                <div class="col-sm-4">
                                    <p class="time-select__place">Odeon</p>
                                </div>
                                <ul class="col-sm-8 items-wrap">
                                    <li class="time-select__item" data-time='10:45'>10:45</li>
                                    <li class="time-select__item" data-time='16:00'>16:00</li>
                                    <li class="time-select__item" data-time='19:00'>19:00</li>
                                    <li class="time-select__item" data-time='21:15'>21:15</li>
                                    <li class="time-select__item" data-time='23:00'>23:00</li>
                                </ul>
                            </div>

                            <div class="time-select__group group--last">
                                <div class="col-sm-4">
                                    <p class="time-select__place">Picturehouse</p>
                                </div>
                                <ul class="col-sm-8 items-wrap">
                                    <li class="time-select__item" data-time='17:45'>17:45</li>
                                    <li class="time-select__item" data-time='21:30'>21:30</li>
                                    <li class="time-select__item" data-time='02:20'>02:20</li>
                                </ul>
                            </div>
                        </div>
                        <!-- end time table-->

                    </div>
                    <!-- end movie preview item -->

                    <!-- Movie preview item -->
                    <div class="movie movie--preview movie--full comments">
                        <div class="col-sm-3 col-md-2 col-lg-2">
                            <div class="movie__images">
                                <img alt='' src="http://placehold.it/380x600">
                            </div>
                            <div class="movie__feature">
                                <a href="#" class="movie__feature-item movie__feature--comment">93</a>
                                <a href="#" class="movie__feature-item movie__feature--video">9</a>
                                <a href="#" class="movie__feature-item movie__feature--photo">183</a>
                            </div>
                        </div>

                        <div class="col-sm-9 col-md-10 col-lg-10 movie__about">
                            <a href='movie-page-full.html' class="movie__title link--huge">Free Birds (2013)</a>

                            <p class="movie__time">91 min</p>

                            <p class="movie__option"><strong>Country: </strong><a href="#">USA</a></p>
                            <p class="movie__option"><strong>Category: </strong><a href="#">Action</a>, <a href="#">Adventure</a>, <a href="#">Fantazy</a></p>
                            <p class="movie__option"><strong>Release date: </strong>November 8, 2013</p>
                            <p class="movie__option"><strong>Director: </strong><a href="#">Alan Taylor</a></p>
                            <p class="movie__option"><strong>Actors: </strong><a href="#">Chris Hemsworth</a>, <a href="#">Natalie Portman</a>, <a href="#">Tom Hiddleston</a>, <a href="#">Stellan Skarsg�rd</a>, <a href="#">Idris Elba</a>, <a href="#">Christopher Eccleston</a>, <a href="#">Adewale Akinnuoye-Agbaje</a> <a href="#">...</a></p>
                            <p class="movie__option"><strong>Age restriction: </strong><a href="#">13</a></p>

                            <div class="movie__btns">
                                <a href="#" class="btn btn-md btn--warning">book a ticket <span class="hidden-sm">for this movie</span></a>
                                <a href="#" class="watchlist">Add to watchlist</a>
                            </div>

                            <div class="preview-footer">
                                <div class="movie__rate"><div class="score"></div><span class="movie__rate-number">96 votes</span> <span class="movie__rating">4.4</span></div>


                                <a href="#" class="movie__show-btn">Showtime</a>
                            </div>
                        </div>

                        <div class="clearfix"></div>

                        <!-- Time table (choose film start time)-->
                        <div class="time-select">
                            <div class="time-select__group group--first">
                                <div class="col-sm-4">
                                    <p class="time-select__place">Cineworld</p>
                                </div>
                                <ul class="col-sm-8 items-wrap">
                                    <li class="time-select__item" data-time='09:40'>09:40</li>
                                    <li class="time-select__item" data-time='13:45'>13:45</li>
                                    <li class="time-select__item active" data-time='15:45'>15:45</li>
                                    <li class="time-select__item" data-time='19:50'>19:50</li>
                                    <li class="time-select__item" data-time='21:50'>21:50</li>
                                </ul>
                            </div>

                            <div class="time-select__group">
                                <div class="col-sm-4">
                                    <p class="time-select__place">Empire</p>
                                </div>
                                <ul class="col-sm-8 items-wrap">
                                    <li class="time-select__item" data-time='10:45'>10:45</li>
                                    <li class="time-select__item" data-time='16:00'>16:00</li>
                                    <li class="time-select__item" data-time='19:00'>19:00</li>
                                    <li class="time-select__item" data-time='21:15'>21:15</li>
                                    <li class="time-select__item" data-time='23:00'>23:00</li>
                                </ul>
                            </div>

                            <div class="time-select__group">
                                <div class="col-sm-4">
                                    <p class="time-select__place">Curzon</p>
                                </div>
                                <ul class="col-sm-8 items-wrap">
                                    <li class="time-select__item" data-time='09:00'>09:00</li>
                                    <li class="time-select__item" data-time='11:00'>11:00</li>
                                    <li class="time-select__item" data-time='13:00'>13:00</li>
                                    <li class="time-select__item" data-time='15:00'>15:00</li>
                                    <li class="time-select__item" data-time='17:00'>17:00</li>
                                    <li class="time-select__item" data-time='19:0'>19:00</li>
                                    <li class="time-select__item" data-time='21:0'>21:00</li>
                                    <li class="time-select__item" data-time='23:0'>23:00</li>
                                    <li class="time-select__item" data-time='01:0'>01:00</li>
                                </ul>
                            </div>

                            <div class="time-select__group">
                                <div class="col-sm-4">
                                    <p class="time-select__place">Odeon</p>
                                </div>
                                <ul class="col-sm-8 items-wrap">
                                    <li class="time-select__item" data-time='10:45'>10:45</li>
                                    <li class="time-select__item" data-time='16:00'>16:00</li>
                                    <li class="time-select__item" data-time='19:00'>19:00</li>
                                    <li class="time-select__item" data-time='21:15'>21:15</li>
                                    <li class="time-select__item" data-time='23:00'>23:00</li>
                                </ul>
                            </div>

                            <div class="time-select__group group--last">
                                <div class="col-sm-4">
                                    <p class="time-select__place">Picturehouse</p>
                                </div>
                                <ul class="col-sm-8 items-wrap">
                                    <li class="time-select__item" data-time='17:45'>17:45</li>
                                    <li class="time-select__item" data-time='21:30'>21:30</li>
                                    <li class="time-select__item" data-time='02:20'>02:20</li>
                                </ul>
                            </div>
                        </div>
                        <!-- end time table-->

                    </div>
                    <!-- end movie preview item -->
                    <div class="coloum-wrapper">
                        <div class="pagination paginatioon--full">
                            <a href='#' class="pagination__prev">prev</a>
                            <a href='#' class="pagination__next">next</a>
                        </div>
                    </div>

                </div>

            </section>

            <div class="clearfix"></div>

            <footer class="footer-wrapper">
                <section class="container">
                    <div class="col-xs-4 col-md-2 footer-nav">
                        <ul class="nav-link">
                            <li><a href="#" class="nav-link__item">Cities</a></li>
                            <li><a href="movie-list-left.html" class="nav-link__item">Movies</a></li>
                            <li><a href="trailer.html" class="nav-link__item">Trailers</a></li>
                            <li><a href="rates-left.html" class="nav-link__item">Rates</a></li>
                        </ul>
                    </div>
                    <div class="col-xs-4 col-md-2 footer-nav">
                        <ul class="nav-link">
                            <li><a href="coming-soon.html" class="nav-link__item">Coming soon</a></li>
                            <li><a href="cinema-list.html" class="nav-link__item">Cinemas</a></li>
                            <li><a href="offers.html" class="nav-link__item">Best offers</a></li>
                            <li><a href="news-left.html" class="nav-link__item">News</a></li>
                        </ul>
                    </div>
                    <div class="col-xs-4 col-md-2 footer-nav">
                        <ul class="nav-link">
                            <li><a href="#" class="nav-link__item">Terms of use</a></li>
                            <li><a href="gallery-four.html" class="nav-link__item">Gallery</a></li>
                            <li><a href="contact.html" class="nav-link__item">Contacts</a></li>
                            <li><a href="page-elements.html" class="nav-link__item">Shortcodes</a></li>
                        </ul>
                    </div>
                    <div class="col-xs-12 col-md-6">
                        <div class="footer-info">
                            <p class="heading-special--small">A.Movie<br><span class="title-edition">in the social media</span></p>

                            <div class="social">
                                <a href='#' class="social__variant fa fa-facebook"></a>
                                <a href='#' class="social__variant fa fa-twitter"></a>
                                <a href='#' class="social__variant fa fa-vk"></a>
                                <a href='#' class="social__variant fa fa-instagram"></a>
                                <a href='#' class="social__variant fa fa-tumblr"></a>
                                <a href='#' class="social__variant fa fa-pinterest"></a>
                            </div>

                            <div class="clearfix"></div>
                            <p class="copy">&copy; A.Movie, 2013. All rights reserved. Done by Olia Gozha</p>
                        </div>
                    </div>
                </section>
            </footer>
        </div>

        <!-- open/close -->
        <div class="overlay overlay-hugeinc">

            <section class="container">

                <div class="col-sm-4 col-sm-offset-4">
                    <button type="button" class="overlay-close">Close</button>
                    <form id="login-form" class="login" method='get' novalidate=''>
                        <p class="login__title">sign in <br><span class="login-edition">welcome to A.Movie</span></p>

                        <div class="social social--colored">
                            <a href='#' class="social__variant fa fa-facebook"></a>
                            <a href='#' class="social__variant fa fa-twitter"></a>
                            <a href='#' class="social__variant fa fa-tumblr"></a>
                        </div>

                        <p class="login__tracker">or</p>

                        <%@include file="loginWrap.jsp"%>
                    </form>
                </div>

            </section>
        </div>

        <!-- JavaScript-->
        <!-- jQuery 1.9.1--> 
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="js/external/jquery-1.10.1.min.js"><\/script>')</script>
        <!-- Migrate --> 
        <script src="js/external/jquery-migrate-1.2.1.min.js"></script>
        <!-- jQuery UI -->
        <script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
        <!-- Bootstrap 3--> 
        <script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.2/js/bootstrap.min.js"></script>

        <!-- Mobile menu -->
        <script src="js/jquery.mobile.menu.js"></script>
        <!-- Select -->
        <script src="js/external/jquery.selectbox-0.2.min.js"></script> 

        <!-- Stars rate -->
        <script src="js/external/jquery.raty.js"></script>

        <!-- Form element -->
        <script src="js/external/form-element.js"></script>
        <!-- Form validation -->
        <script src="js/form.js"></script>

        <!-- Custom -->
        <script src="js/custom.js"></script>

        <script type="text/javascript">
            $(document).ready(function() {
                init_MovieList();
            });
        </script>

        <script>

            angular.module('movieListFull', [])
                    .controller('movieListFilterController', function($scope, $location, $http, $filter) {
                $scope.filter = {};

                $scope.cinemas = [
                    {cinemaID: 1, cinemaName: 'Cineworld'},
                    {cinemaID: 2, cinemaName: 'Empire'},
                    {cinemaID: 3, cinemaName: 'Everyman'},
                    {cinemaID: 4, cinemaName: 'Odeon'},
                    {cinemaID: 5, cinemaName: 'Picturehouse'}
                ];
                
                $scope.categories = [
                    {categoryID: 1, categoryName : 'Children\'s'},
                    {categoryID: 1, categoryName : 'Comedy'},
                    {categoryID: 1, categoryName : 'Drama'},
                    {categoryID: 1, categoryName : 'Fantasy'},
                    {categoryID: 1, categoryName : 'Horror'},
                    {categoryID: 1, categoryName : 'Thriller'}
                ]
               
                $scope.filter.date = $filter('date')(new Date(), "MM/dd/yyyy");
                $scope.filter.cinema = $scope.cinemas[0];
                $scope.filter.category = $scope.categories[0];
                
                console.log($scope.filter);

                $scope.filterRequest = function() {
                    alert();
                    console.log($scope.filter);
                };


//                        $scope.sdLoginRequest = function() {
//                            var req = {
//                                method: 'POST',
//                                url: '/Internet-based-cinema-ticketing-system/LoginControl?action=validate&email=' + $scope.loginRequest.email + "&password=" + $scope.loginRequest.password,
//                                headers: {
//                                    'Content-Type': undefined
//                                },
//                                data: {
//                                }
//                            };
//
//
//                            $http(req).
//                                    success(function(data, status, headers, config) {
//                                console(data);
//                                if (data == 'true') {
//                                    window.location.reload();
//        //                    window.setTimeout(function() {
//        //                        // Move to a new location or you can do something else
//        //                        window.location.href = "/Internet-based-cinema-ticketing-system/index.jsp";
//        //
//        //                    }, 4000);
//                                } else {
//                                    window.location.href = "/Internet-based-cinema-ticketing-system/loginError.html";
//                                }
//                                // this callback will be called asynchronously
//                                // when the response is available
//                            }).
//                                    error(function(data, status, headers, config) {
//                                // called asynchronously if an error occurs
//                                // or server returns response with an error status.
//                            });
//                        };
            });
        </script>
    </body>
</html>
