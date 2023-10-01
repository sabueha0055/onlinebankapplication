<!DOCTYPE html>
<html lang="en">

<!-- features-profile.html  Tue, 07 Jan 2020 03:35:31 GMT -->
<head>
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
<title>Profile</title>

<!-- General CSS Files -->
<link rel="stylesheet" href="{{asset('assetss/modules/bootstrap/css/bootstrap.min.css')}}">
<link rel="stylesheet" href="{{asset('assetss/modules/fontawesome/css/all.min.css')}}">

<!-- CSS Libraries -->
<link rel="stylesheet" href="{{asset('assetss/modules/bootstrap-social/bootstrap-social.css')}}">
<link rel="stylesheet" href="{{asset('assetss/modules/summernote/summernote-bs4.css')}}">

<!-- Template CSS -->
<link rel="stylesheet" href="{{asset('assetss/css/style.min.css')}}">
<link rel="stylesheet" href="{{asset('assetss/css/components.min.css')}}">
</head>

<body class="layout-4">
<!-- Page Loader -->
<div class="page-loader-wrapper">
    <span class="loader"><span class="loader-inner"></span></span>
</div>

<div id="app">
    <div class="main-wrapper main-wrapper-1">
        <div class="navbar-bg"></div>

        <!-- Start app top navbar -->
          @include('pages.navbar')

        <!-- Start main left sidebar menu -->
                  @include('pages.sidebar')
         <!-- End main left sidebar menu -->
        
        
         <!-- Start app main Content -->
        <div class="main-content">
            <section class="section">
                <div class="section-header">
                    <h1>Profile</h1>
                    <div class="section-header-breadcrumb">
                        <div class="breadcrumb-item active"><a href="{{route('userdashbaord')}}">Dashboard</a></div>
                        <div class="breadcrumb-item">Profile</div>
                    </div>
                </div>
                <div class="section-body">
                    <h2 class="section-title">Hi {{$user->lastname}},</h2>
                    <p class="section-lead">Change information about yourself on this page.</p>

                    <div class="row mt-sm-4">
                        <div class="col-12 col-md-12 col-lg-5">
                            <div class="card profile-widget">
                               
                                <div class="card-footer text-center">
                                    <div class="font-weight-bold mb-2">Follow {{$user->lastname}} On</div>
                                    <a href="#" class="btn btn-social-icon btn-facebook mr-1"><i class="fab fa-facebook-f"></i></a>
                                    <a href="#" class="btn btn-social-icon btn-twitter mr-1"><i class="fab fa-twitter"></i></a>
                                    <a href="#" class="btn btn-social-icon btn-github mr-1"><i class="fab fa-github"></i></a>
                                    <a href="#" class="btn btn-social-icon btn-instagram"><i class="fab fa-instagram"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-md-12 col-lg-7">
                            <div class="card">
                                <form method="post" class="needs-validation" novalidate="" 
                                action="{{ route('processeditprofile') }}" enctype="multipart/form-data">
                                 @csrf
                                    <div class="card-header">
                                        <h4>Edit Profile</h4>
                                    </div>
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="form-group col-md-6 col-12">
                                                <label>First Name</label>
                                                <input type="text" name="firstname" class="form-control" value="{{$user->firstname}}" >
                                                <div class="invalid-feedback">Please fill in the first name</div>
                                            </div>
                                            <div class="form-group col-md-6 col-12">
                                                <label>Last Name</label>
                                                <input type="text" name="lastname"class="form-control" value="{{$user->lastname}}" >
                                                <div class="invalid-feedback">Please fill in the last name</div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="form-group col-md-7 col-12">
                                                <label>Email</label>
                                                <input type="email"  name="email" class="form-control" value="{{$user->email}}" >
                                                <div class="invalid-feedback">Please fill in the email</div>
                                            </div>
                                            <div class="form-group col-md-5 col-12">
                                                <label>Phone</label>
                                                <input type="text" name="phone" class="form-control" value="{{$user->phone}}">
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="form-group col-md-7 col-12">
                                                <label>Address</label>
                                                <input type="text" name="address" class="form-control" value="{{$user->address}}" >
                                                <div class="invalid-feedback">Please fill in the  address</div>
                                            </div>


                                             <div class="form-group col-md-5 col-12">
                                                <label>Password</label>
                                                <input type="password" name="password" class="form-control" value="">
                                            </div>
                                                
                                                <input type="hidden" name="id" class="form-control" value="{{$user->id}}" >
                                                

                                            
                                        </div>
                                        
                                        
                                    </div>
                                    <div class="card-footer text-right">
                                        <button class="btn btn-primary">Save Changes</button>
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

<!-- Page Specific JS File -->

<!-- Template JS File -->
<script src="{{asset('jss/scripts.js')}}"></script>
<script src="{{asset('jss/custom.js')}}"></script>
</body>

<!-- features-profile.html  Tue, 07 Jan 2020 03:35:33 GMT -->
</html>