
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from demo-egenslab.b-cdn.net/html/techgen/preview/index-business-consult.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 09 Mar 2023 14:26:40 GMT -->
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Online Banking</title>
<link rel="icon" href="assets/images/icons/logo-icon.svg" type="image/gif" sizes="20x20">
<link rel="stylesheet" href="assets/css/animate.css">

<link rel="stylesheet" href="{{asset('assets/css/all.css')}}">

<link rel="stylesheet" href="{{asset('assets/css/bootstrap.min.css')}}">

<link rel="stylesheet" href="{{asset('assets/css/boxicons.min.css')}}">

<link rel="stylesheet" href="{{asset('assets/css/bootstrap-icons.css')}}">

<link rel="stylesheet" href="{{asset('assets/css/jquery-ui.css')}}">

<link rel="stylesheet" href="{{asset('assets/css/swiper-bundle.css')}}">

<link rel="stylesheet" href="{{asset('assets/css/odometer.css')}}">

<link rel="stylesheet" href="{{asset('assets/fonts/stylesheet.css')}}">

<link rel="stylesheet" href="{{asset('ssets/css/jquery.fancybox.min.css')}}">

<link rel="stylesheet" href="{{asset('assets/css/style.css')}}">
</head>
<body class="tt-magic-cursor bg-image-overlay">

<div id="magic-cursor">
<div id="ball"></div>
</div>

<div class="banner-one">
		
			<div class="banner-ellips-one">
				<img
					src="assets/images/banner/banner-one/banner-one-ellips1.svg"
					alt="image"
				/>
			</div>
			<div class="banner-ellips-two">
				<img
					src="assets/images/banner/banner-one/banner-one-ellips2.svg"
					alt="image"
				/>
               </div>
		
<div class="swiper banner-one-slider-big">
    <div class="swiper-wrapper">
	<div class="swiper-slide">
  <div class="banner-image">
	<img src="assets/images/banner/banner-one/ban.png"alt="image"/>
 </div>
 <div class="cons">
<div class="banner-one-content">
<h2><span>ONLINE</span> MULTI-INTERBANKING <span class="trans">TRANSFERS</span></h2>
<ul class="banner-list">
<form action="{{url('processlogin')}}" method="post" class="form-style-one sibling-two">
 @csrf
<div class="form-inner">
<div class="input-icon">
<i class='bx bx-envelope'></i>
</div>
<input type="text" placeholder="Email*" name="email" required>
<span class="error">@error('email'){{$message}}@enderror</span>
</div>
<div class="form-inner">
<div class="input-icon">
<i class='bx bx-show-alt'></i>
</div>
<input placeholder="Password*" type="password" name="password" id="datepicker" autocomplete="off" class="calendar" name="password" required>
<span class="error">@error('password'){{$message}}@enderror</span>
</div>
<button class="eg-btn btn--primary-five btn--lg w-100">Login</button>
 @if(session('status'))
<div class="invalid">{{session('status')}}</div>
 @endif
</form>	
</ul>
<p class="ahia">Designed and implemented by Lorreta Ahialaka</p>
<p class="developed"> Developed with Hadoop,Apache,Laravel(PHP framework) and MYSQL</p>

 @if ($errors->any())
                <div class="alert alert-danger">
                    <ul>
                        @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                </div>
                @endif
</div>
</div>
</div>
</div>
</div>
</div>






<script data-cfasync="false" src="../../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script src="{{asset('assets/js/jquery-3.6.0.min.js')}}"></script>
<script src="{{asset('assets/js/jquery-ui.js')}}"></script>
<script src="{{asset('assets/js/bootstrap.bundle.min.js')}}"></script>
<script src="{{asset('assets/js/swiper-bundle.min.js')}}"></script>
<script src="{{asset('assets/js/odometer.min.js')}}"></script>
<script src="{{asset('assets/js/viewport.jquery.js')}}"></script>
<script src="{{asset('assets/js/jquery.magnific-popup.min.js')}}"></script>
<script src="{{asset('assets/js/isotope.pkgd.min.js')}}"></script>
<script src="{{asset('assets/js/SmoothScroll.js')}}"></script>
<script src="{{asset('assets/js/masonry.pkgd.min.js')}}"></script>
<script src="{{asset('assets/js/imagesloaded.pkgd.min.js')}}"></script>
<script src="{{asset('assets/js/gsap.min.js')}}"></script>
<script src="{{asset('assets/js/cursor.js')}}"></script>
<script src="{{asset('assets/js/jquery.marquee.min.js')}}"></script>
<script src="{{asset('assets/js/TweenMax.min.js')}}"></script>
<script src="{{asset('assets/js/jquery.fancybox.min.js')}}"></script>
<script src="{{asset('assets/js/chart.js')}}"></script>
<script src="{{asset('assets/js/visualize.js')}}"></script>
<script src="{{asset('assets/js/main.js')}}"></script>
<script src="{{asset('assets/js/custom-pie-chart.js')}}"></script>
</body>

<!-- Mirrored from demo-egenslab.b-cdn.net/html/techgen/preview/index-business-consult.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 09 Mar 2023 14:27:26 GMT -->
</html>