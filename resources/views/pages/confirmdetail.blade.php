<!DOCTYPE html>
<html lang="en">

<!-- forms-editor.html  Tue, 07 Jan 2020 03:37:52 GMT -->
<head>
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
<title>Online Banking</title>

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
       @include('pages.navbar')

        <!-- Start main left sidebar menu -->
              @include('pages.sidebar')
         <!-- End main left sidebar menu -->


        <!-- Start app main Content -->
        <div class="main-content">
            <section class="section">
                <div class="section-header">
                    <h1>Generated Token</h1>
                    <div class="section-header-breadcrumb">
                        <div class="breadcrumb-item active"><a href="{{route('userdashbaord')}}">Dashboard</a></div>
                        <div class="breadcrumb-item"><a href="#">Token</a></div>
                        
                    </div>
                </div>

                <div class="section-body">
                    <h2 class="section-title">Token Generated</h2>
                    <p class="section-lead">Display Token</p>
                          
              
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
                                <form action="{{route('goback')}}" method="post">
                                   @csrf   
                                <div class="card-header">
                                        <h4>Generated Token</h4>
                                    </div>
                                    <div class="card-body">
                                        <div class="form-group">
                                            <label>Token</label>
                                            <input type="text" class="form-control" name="mastercard" maxlength="16" required  value="{{$top->token}}">
                                        </div>

                                        @if(session()->has('message'))
                                       <div class="alert alert-success">
                                         {{ session()->get('message') }}
                                           </div>
                                           @endif
                                    </div>

                                    <div class="card-footer text-right">
                                        <button class="btn btn-primary">Close</button>
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