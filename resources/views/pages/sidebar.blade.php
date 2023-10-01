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
        <div class="main-sidebar sidebar-style-3">
            <aside id="sidebar-wrapper">
                <div class="sidebar-brand">
                    <a href="index-2.html">ONLINE BANKING</a>
                </div>
                <div class="sidebar-brand sidebar-brand-sm">
                    <a href="index-2.html"></a>
                </div>
                <ul class="sidebar-menu">
                    <li class="menu-header"> Admin Dashboard</li>

                     <li><a class="nav-link" href="{{route('profile')}}"><i class="far fa-square"></i> <span>My Profile</span></a></li>
                   
                    <li class="menu-header">Transaction</li>
                    <li class="dropdown">
                        <a href="#" class="nav-link has-dropdown" data-toggle="dropdown"><i class="fas fa-columns"></i> <span>Transaction</span></a>
                        <ul class="dropdown-menu">
                            <li><a class="nav-link" href="{{route('dailysent')}}"> Daily Sent Transfer</a></li>
                            
                             <li><a class="nav-link" href="{{route('dailyreceive')}}">Daily Received Transfer</a></li>

                             <li><a class="nav-link" href="{{route('alltransfer')}}">View History</a></li>
                        </ul>
                    </li>
                    <li><a class="nav-link" href="{{route('transfer')}}"><i class="far fa-square"></i> <span>Transfer</span></a></li>
                    <li><a class="nav-link" href="{{route('acceptoken')}}"><i class="far fa-square"></i> <span>Accept Token</span></a></li>
                    
         
                   
                    
                   
                 
                  
                    <li><a class="nav-link" href="{{route('logout')}}"><i class="fas fa-pencil-ruler"></i> <span>Logout</span></a></li>
                </ul>
                <div class="mt-4 mb-4 p-3 hide-sidebar-mini">
                    <a href="{{route('download')}}" class="btn btn-primary btn-lg btn-block btn-icon-split"><i class="fas fa-rocket"></i> Documentation</a>
                </div>
            </aside>
        </div>

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