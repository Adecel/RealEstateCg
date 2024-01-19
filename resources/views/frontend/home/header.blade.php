<header class="main-header">
    <!-- header-top -->
    <div class="header-top">
        <div class="top-inner clearfix">
            <div class="left-column pull-left">
                <ul class="info clearfix">
                    <li><i class="far fa-map-marker-alt"></i>l'addresse du bureau FlCg4,76</li>
                    <li><i class="far fa-clock"></i>Lundi a Vendredi de 8.00 - 17.00</li>
                    <li><i class="far fa-phone"></i><a href="tel:2512353256">+242-05-559-4829</a></li>
                </ul>
            </div>
            <div class="right-column pull-right">
                <ul class="social-links clearfix">
                    <li><a href="index.html"><i class="fab fa-facebook-f"></i></a></li>
                    <li><a href="index.html"><i class="fab fa-twitter"></i></a></li>
                    <li><a href="index.html"><i class="fab fa-pinterest-p"></i></a></li>
                    <li><a href="index.html"><i class="fab fa-google-plus-g"></i></a></li>
                    <li><a href="index.html"><i class="fab fa-vimeo-v"></i></a></li>
                </ul>

                @auth
                    <div class="sign-box">
                        <a href="{{ route('dashboard') }}"><i class="fas fa-user"></i>Tableau de bord</a>
                        <a href="{{ route('user.logout') }}"><i class="fas fa-user"></i>Se déconnecter</a>
                    </div>
                @else
                    <div class="sign-box">
                        <a href="{{ route('login') }}"><i class="fas fa-user"></i>Se connecter</a>
                    </div>
                @endauth

            </div>
        </div>
    </div>
    <!-- header-lower -->
    <div class="header-lower">
        <div class="outer-box">
            <div class="main-box">
                <div class="logo-box">
                    <figure class="logo"><a href="{{ url('/') }}"><img src="{{ asset('frontend/assets/images/logo.png') }}" alt=""></a></figure>
                </div>
                <div class="menu-area clearfix">
                    <!--Mobile Navigation Toggler-->
                    <div class="mobile-nav-toggler">
                        <i class="icon-bar"></i>
                        <i class="icon-bar"></i>
                        <i class="icon-bar"></i>
                    </div>
                    <nav class="main-menu navbar-expand-md navbar-light">
                        <div class="collapse navbar-collapse show clearfix" id="navbarSupportedContent">
                            <ul class="navigation clearfix">
                                <li><a href="{{ url('/') }}"><span>Accueil</span></a> </li>
                                <li><a href="{{ url('/') }}"><span>À propos de nous</span></a> </li>
                                <li class="dropdown"><a href="index.html"><span>Propriété</span></a>
                                    <ul>
                                        <li><a href="{{ route('rent.property') }}">Louer une propriété</a></li>
                                        <li><a href="{{ route('buy.property') }}">Acheter une propriété</a></li>
                                    </ul>
                                </li>
                                <li><a href="{{ url('/') }}"><span>Agent </span></a> </li>
                                <li><a href="{{ route('blog.list') }}"><span>Blog  </span></a> </li>
                                <li><a href="contact.html"><span>Contact</span></a></li>
                                <li>
                                    <a href="{{ route('agent.login') }}" class="btn btn-success"><span>+</span>Ajouter une annonce</a>
                                </li>


                            </ul>
                        </div>
                    </nav>
                </div>
                <div class="btn-box">
                    <a href="index.html" class="theme-btn btn-one"><span>+</span>Add Listing</a>
                </div>
            </div>
        </div>
    </div>

    <!--sticky Header-->
    <div class="sticky-header">
        <div class="outer-box">
            <div class="main-box">
                <div class="logo-box">
                    <figure class="logo"><a href="index.html"><img src="{{ asset('frontend/assets/images/logo.png') }}" alt=""></a></figure>
                </div>
                <div class="menu-area clearfix">
                    <nav class="main-menu clearfix">
                        <!--Keep This Empty / Menu will come through Javascript-->
                    </nav>
                </div>
                <div class="btn-box">
                    <a href="index.html" class="theme-btn btn-one"><span>+</span>Add Listing</a>
                </div>
            </div>
        </div>
    </div>
</header>
