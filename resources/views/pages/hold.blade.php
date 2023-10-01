<!DOCTYPE html>
<html lang="en">

<!-- forms-editor.html  Tue, 07 Jan 2020 03:37:52 GMT -->
<head>
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
<title>Forms &rsaquo; Editor &mdash; CodiePie</title>

<!-- General CSS Files -->
<link rel="stylesheet" href="{{asset('assetss/modules/bootstrap/css/bootstrap.min.css')}}">
<link rel="stylesheet" href="{{asset('assetss/modules/fontawesome/css/all.min.css')}}">

<!-- CSS Libraries -->
<link rel="stylesheet" href="{{asset('assetss/modules/summernote/summernote-bs4.css')}}">
<link rel="stylesheet" href="{{asset('assetss/modules/codemirror/lib/codemirror.css')}}">
<link rel="stylesheet" href="{{asset('assetss/modules/codemirror/theme/duotone-dark.css')}}">
<link rel="stylesheet" href="{{asset('assetss/modules/jquery-selectric/selectric.css')}}">

<!-- Template CSS -->
<link rel="stylesheet" href="{{asset('assetss/css/style.min.css')}}">
<link rel="stylesheet" href="{{asset('assetss/css/components.min.css')}}">
</head>
<body class="layout-4">

<div id="app">
    <div class="main-wrapper main-wrapper-1">
        <div class="navbar-bg"></div>

        <!-- Start app top navbar -->
        <nav class="navbar navbar-expand-lg main-navbar">
            <form class="form-inline mr-auto">
                <ul class="navbar-nav mr-3">
                    <li><a href="#" data-toggle="sidebar" class="nav-link nav-link-lg"><i class="fas fa-bars"></i></a></li>
                    <li><a href="#" data-toggle="search" class="nav-link nav-link-lg d-sm-none"><i class="fas fa-search"></i></a></li>
                </ul>
                <div class="search-element">
                    <input class="form-control" type="search" placeholder="Search" aria-label="Search" data-width="250">
                    <button class="btn" type="submit"><i class="fas fa-search"></i></button>
                    <div class="search-backdrop"></div>
                    <div class="search-result">
                        <div class="search-header">Histories</div>
                        <div class="search-item">
                            <a href="#">How to Used HTML in Laravel</a>
                            <a href="#" class="search-close"><i class="fas fa-times"></i></a>
                        </div>
                        <div class="search-item">
                            <a href="https://themeforest.net/user/admincraft/portfolio" target="_black">Admincraft Portfolio</a>
                            <a href="#" class="search-close"><i class="fas fa-times"></i></a>
                        </div>
                        <div class="search-item">
                            <a href="#">#CodiePie</a>
                            <a href="#" class="search-close"><i class="fas fa-times"></i></a>
                        </div>
                        <div class="search-header">Result</div>
                        <div class="search-item">
                            <a href="#">
                                <img class="mr-3 rounded" width="30" src="assets/img/products/product-3-50.png" alt="product">
                                oPhone 11 Pro
                            </a>
                        </div>
                        <div class="search-item">
                            <a href="#">
                                <img class="mr-3 rounded" width="30" src="assets/img/products/product-2-50.png" alt="product">
                                Drone Zx New Gen-3
                            </a>
                        </div>
                        <div class="search-item">
                            <a href="#">
                                <img class="mr-3 rounded" width="30" src="assets/img/products/product-1-50.png" alt="product">
                                Headphone JBL
                            </a>
                        </div>
                        <div class="search-header">Projects</div>
                        <div class="search-item">
                            <a href="https://themeforest.net/item/epice-laravel-admin-template-for-hr-project-management/24466729" target="_black">
                                <div class="search-icon bg-danger text-white mr-3"><i class="fas fa-code"></i></div>
                                Epice Laravel - Admin Template
                            </a>
                        </div>
                        <div class="search-item">
                            <a href="https://themeforest.net/item/soccer-project-management-admin-template-ui-kit/24646866" target="_black">
                                <div class="search-icon bg-primary text-white mr-3"><i class="fas fa-laptop"></i></div>
                                Soccer - Admin Template
                            </a>
                        </div>
                    </div>
                </div>
            </form>
            <ul class="navbar-nav navbar-right">
                <li class="dropdown dropdown-list-toggle"><a href="#" data-toggle="dropdown" class="nav-link nav-link-lg message-toggle beep"><i class="far fa-envelope"></i></a>
                    <div class="dropdown-menu dropdown-list dropdown-menu-right">
                    <div class="dropdown-header">Messages
                        <div class="float-right">
                            <a href="#">Mark All As Read</a>
                        </div>
                    </div>
                    <div class="dropdown-list-content dropdown-list-message">
                        <a href="#" class="dropdown-item dropdown-item-unread">
                            <div class="dropdown-item-avatar">
                                <img alt="image" src="assets/img/avatar/avatar-1.png" class="rounded-circle">
                                <div class="is-online"></div>
                            </div>
                            <div class="dropdown-item-desc">
                                <b>Kusnaedi</b>
                                <p>Hello, Bro!</p>
                                <div class="time">10 Hours Ago</div>
                            </div>
                        </a>
                        <a href="#" class="dropdown-item dropdown-item-unread">
                            <div class="dropdown-item-avatar">
                                <img alt="image" src="assets/img/avatar/avatar-2.png" class="rounded-circle">
                            </div>
                            <div class="dropdown-item-desc">
                                <b>Dedik Sugiharto</b>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit</p>
                                <div class="time">12 Hours Ago</div>
                            </div>
                        </a>
                        <a href="#" class="dropdown-item dropdown-item-unread">
                            <div class="dropdown-item-avatar">
                                <img alt="image" src="assets/img/avatar/avatar-3.png" class="rounded-circle">
                                <div class="is-online"></div>
                            </div>
                            <div class="dropdown-item-desc">
                                <b>Agung Ardiansyah</b>
                                <p>Sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                                <div class="time">12 Hours Ago</div>
                            </div>
                        </a>
                        <a href="#" class="dropdown-item">
                            <div class="dropdown-item-avatar">
                                <img alt="image" src="assets/img/avatar/avatar-4.png" class="rounded-circle">
                            </div>
                            <div class="dropdown-item-desc">
                                <b>Ardian Rahardiansyah</b>
                                <p>Duis aute irure dolor in reprehenderit in voluptate velit ess</p>
                                <div class="time">16 Hours Ago</div>
                            </div>
                        </a>
                        <a href="#" class="dropdown-item">
                            <div class="dropdown-item-avatar">
                                <img alt="image" src="assets/img/avatar/avatar-5.png" class="rounded-circle">
                            </div>
                            <div class="dropdown-item-desc">
                                <b>Alfa Zulkarnain</b>
                                <p>Exercitation ullamco laboris nisi ut aliquip ex ea commodo</p>
                                <div class="time">Yesterday</div>
                            </div>
                        </a>
                    </div>
                    <div class="dropdown-footer text-center">
                        <a href="#">View All <i class="fas fa-chevron-right"></i></a>
                    </div>
                    </div>
                </li>
               
                <li class="dropdown">
                    <a href="#" data-toggle="dropdown" class="nav-link dropdown-toggle nav-link-lg nav-link-user">
                    <img alt="image" src="assets/img/avatar/avatar-1.png" class="rounded-circle mr-1">
                    <div class="d-sm-none d-lg-inline-block">Hi, Michelle Green</div></a>
                    <div class="dropdown-menu dropdown-menu-right">
                        <div class="dropdown-title">Logged in 5 min ago</div>
                        <a href="features-profile.html" class="dropdown-item has-icon"><i class="far fa-user"></i> Profile</a>
                        <a href="features-activities.html" class="dropdown-item has-icon"><i class="fas fa-bolt"></i> Activities</a>
                        <a href="features-settings.html" class="dropdown-item has-icon"><i class="fas fa-cog"></i> Settings</a>
                        <div class="dropdown-divider"></div>
                        <a href="#" class="dropdown-item has-icon text-danger"><i class="fas fa-sign-out-alt"></i> Logout</a>
                    </div>
                </li>
            </ul>
        </nav>

        <!-- Start main left sidebar menu -->
              @include('pages.sidebar')
         <!-- End main left sidebar menu -->


        <!-- Start app main Content -->
        <div class="main-content">
            <section class="section">
                <div class="section-header">
                    <h1>Enter Card Details</h1>
                    <div class="section-header-breadcrumb">
                        <div class="breadcrumb-item active"><a href="#">Dashboard</a></div>
                        <div class="breadcrumb-item"><a href="#">Forms</a></div>
                        <div class="breadcrumb-item">Form Validation</div>
                    </div>
                </div>

                <div class="section-body">
                    <h2 class="section-title">Card Details</h2>
                    <p class="section-lead">Enter Card Details</p>
                          
              
                    <div class="row">
                        <div class="col-12 col-md-6 col-lg-6">

                          @if ($errors->any())
                <div class="alert alert-danger">
                    <ul>
                        @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                </div>
                @endif
                            <div class="card">
                                <form action="{{route('processconfirmdetails')}}" method="post">
                                   @csrf   
                                <div class="card-header">
                                        <h4>Enter Card Details</h4>
                                    </div>
                                    <div class="card-body">
                                        <div class="form-group">
                                            <label>Mastercard Number</label>
                                            <input type="text" class="form-control" name="mastercard" required="">
                                        </div>
                                        <div class="form-group">
                                            <label> Card Expiry Date</label>
                                            <input type="text" class="form-control" name="expiry" required="">
                                        </div>
                                        <div class="form-group">
                                            <label>Cvv</label>
                                            <input type="password"  name="cvv" class="form-control">
                                        </div>

                                         <div class="form-group">
                                            <label>Pin</label>
                                            <input type="password" name="pin" class="form-control">
                                        </div>
                                       
                                    </div>

                                    
                          @if ($errors->any())
                         <div class="alert alert-danger">
                         <ul>
                        @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                        @endforeach
                          </ul>
                        </div>
                       @endif
                                    <div class="card-footer text-right">
                                        <button class="btn btn-primary">Submit</button>
                                    </div>
                                </form>
                            </div>
                        </div>
             
                    </div>
                </div>
            </section>
        </div>

        <!-- Start app Footer part -->
        <footer class="main-footer">
            <div class="footer-left">
                 <div class="bullet"></div>  <a href="templateshub.net"></a>
            </div>
            <div class="footer-right">
            
            </div>
        </footer>
    </div>
</div>

<!-- General JS Scripts -->
<script src="{{asset('assetss/bundles/lib.vendor.bundle.js')}}"></script>
<script src="{{asset('jss/CodiePie.js')}}"></script>

<!-- JS Libraies -->
<script src="{{asset('assetss/modules/summernote/summernote-bs4.js')}}"></script>
<script src="{{asset('assetss/modules/codemirror/lib/codemirror.js')}}"></script>
<script src="{{asset('assetss/modules/codemirror/mode/javascript/javascript.js')}}"></script>
<script src="{{asset('assetss/modules/jquery-selectric/jquery.selectric.min.js')}}"></script>

<!-- Page Specific JS File -->

<!-- Template JS File -->
<script src="{{asset('jss/scripts.js')}}"></script>
<script src="{{asset('jss/custom.js')}}"></script>
</body>


<!-- forms-validation.html  Tue, 07 Jan 2020 03:38:00 GMT -->
</html>