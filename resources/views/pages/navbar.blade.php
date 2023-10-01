<!DOCTYPE html>
<html lang="en">

<!--   Tue, 07 Jan 2020 03:33:27 GMT -->
<head>
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
<title>Online Banking</title>

<!-- General CSS Files -->
<link rel="stylesheet" href="{{asset('assetss/modules/bootstrap/css/bootstrap.min.css')}}">
<link rel="stylesheet" href="{{asset('assetss/modules/fontawesome/css/all.min.css')}}">

<!-- CSS Libraries -->
<link rel="stylesheet" href="{{asset('assetss/modules/jqvmap/dist/jqvmap.min.css')}}">
<link rel="stylesheet" href="{{asset('assetss/modules/summernote/summernote-bs4.css')}}">
<link rel="stylesheet" href="{{asset('assetss/modules/owlcarousel2/dist/assets/owl.carousel.min.css')}}">
<link rel="stylesheet" href="{{asset('assetss/modules/owlcarousel2/dist/assets/owl.theme.default.min.css')}}">

<!-- Template CSS -->
<link rel="stylesheet" href="{{asset('assetss/css/style.min.css')}}">
<link rel="stylesheet" href="{{asset('assetss/css/components.min.css')}}">

</head>
<body class="layout-4">

<div id="app">
    <div class="main-wrapper main-wrapper-1">
        <div class="navbar-bg"></div>
        
        <!-- Start app top navbar -->
       

        <!-- Start main left sidebar menu -->
          <nav class="navbar navbar-expand-lg main-navbar">
           
            <ul class="navbar-nav navbar-right">
              <li class="dropdown">
                    <a href="#" data-toggle="dropdown" class="nav-link dropdown-toggle nav-link-lg nav-link-user">
                   <div class="d-sm-none d-lg-inline-block">Hi, {{$user->firstname}} {{$user->lastname}}</div></a>
                    <div class="dropdown-menu dropdown-menu-right">
                        <div class="dropdown-title">Logged in 5 min ago</div>
                        <a href="{{route('profile')}}" class="dropdown-item has-icon"><i class="far fa-user"></i> Profile</a>
                        <a href="features-activities.html" class="dropdown-item has-icon"><i class="fas fa-bolt"></i> Activities</a>
                        <a href="features-settings.html" class="dropdown-item has-icon"><i class="fas fa-cog"></i> Settings</a>
                        <div class="dropdown-divider"></div>
                        <a href="" class="dropdown-item has-icon text-danger"><i class="fas fa-sign-out-alt"></i> Logout</a>
                    </div>
                </li>
            </ul>
        </nav>

          <!-- End of  main left sidebar menu -->

        <!-- Start app main Content -->
  
         <!-- end of app main Content -->


    </div>
</div>

<!-- General JS Scripts -->
<script src="{{asset('assetss/bundles/lib.vendor.bundle.js')}}"></script>
<script src="{{('jss/CodiePie.js')}}"></script>

<!-- JS Libraies -->
<script src="{{asset('assetss/modules/jquery.sparkline.min.js')}}"></script>
<script src="{{asset('assetss/modules/chart.min.js')}}"></script>
<script src="{{asset('assetss/modules/owlcarousel2/dist/owl.carousel.min.js')}}"></script>
<script src="{{asset('assetss/modules/summernote/summernote-bs4.js')}}"></script>
<script src="{{asset('assetss/modules/chocolat/dist/js/jquery.chocolat.min.js')}}"></script>

<!-- Page Specific JS File -->
<script src="{{('jss/page/index.')}}'"></script>

<!-- Template JS File -->
<script src="{{asset('jss/scripts.js')}}"></script>
<script src="{{asset('jss/custom.js')}}"></script>
</body>

<!--   Tue, 07 Jan 2020 03:35:12 GMT -->
</html>