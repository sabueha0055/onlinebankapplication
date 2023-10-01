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
             
         @include('pages.navbar')
        <!-- Start main left sidebar menu -->
        @include('pages.sidebar')

          <!-- End of  main left sidebar menu -->

        <!-- Start app main Content -->
            <div class="main-content">
            <section class="section">
                <div class="row">
                    <div class="col-lg-4 col-md-4 col-sm-12">
                    <div class="card card-statistic-2">
                        <div class="card-stats">
                        <div class="card-stats-title">
                            <div class="dropdown d-inline">
                          
                            </div>
                        </div>
                        <div class="card-stats-items">
                           
                            
                            
                        </div>
                        </div>
                        <div class="card-icon shadow-primary bg-primary">
                        <i class="fas fa-archive"></i>
                        </div>
                        <div class="card-wrap">
                        <div class="card-header">
                            <h4>{{$user->firstname}}   {{$user->lastname}}</h4>
                        </div>
                        <div class="card-body">
                            {{$user->accountnumber}}
                        </div>
                        </div>
                    </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-12">
                    <div class="card card-statistic-2">
                        <div class="card-chart">
                        <canvas id="balance-chart" height="80"></canvas>
                        </div>
                        <div class="card-icon shadow-primary bg-primary">
                        <i class="fas fa-dollar-sign"></i>
                        </div>
                        <div class="card-wrap">
                        <div class="card-header">
                            <h4>Balance</h4>
                        </div>
                        <div class="card-body">
                        <?php echo $balance ?>
                        </div>
                        </div>
                    </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-12">
                    <div class="card card-statistic-2">
                        <div class="card-chart">
                        <canvas id="sales-chart" height="80"></canvas>
                        </div>
                        <div class="card-icon shadow-primary bg-primary">
                        <i class="fas fa-shopping-bag"></i>
                        </div>
                        <div class="card-wrap">
                        <div class="card-header">
                            <h4>Bank</h4>
                        </div>
                        <div class="card-body">
                            {{$user->bankname}}
                        </div>
                        </div>
                    </div>
                    </div>
                </div>
               
                 <div class="section-header">
                    <h1>Transfers</h1>
                    <div class="section-header-breadcrumb">
                        <div class="breadcrumb-item active"><a href="{{route('userdashbaord')}}">Dashboard</a></div>
                    </div>
                </div>
               
                <div class="row row-deck">
                    <div class="col-md-12">
                        <div class="card">
                            
                            
                            <div class="card-body p-0">
                                <div class="table-responsive table-invoice">
                                    <table class="table table-striped">
                                    <tr>
                                        
                                        <th>Name</th>
                                        <th>Type</th>
                                        <th>Date</th>
                                        <th>Amount</th>
                                        <th>Account Number</th>
                                         <th>Bank</th>
                                    </tr>
                                     <?php foreach($sentes as $one) 
                                     {?>
                                    <tr>
                                         
                                        
                                        <td class="font-weight-600"><?php echo $one["receiverid"]["firstname"]?><br><?php echo $one["receiverid"]["lastname"]?></td>
                                        <td> <div class="badge badge-warning"><?php echo $one["mes"]["type"] ?> </div></td>
                                        <td><?php echo $one["mes"]["date"] ?></td>
                                        <td> <a href="#" class="btn btn-primary"><?php echo $one["mes"]["amount"] ?></a></td>
                                        <td class="font-weight-600"><?php echo $one["receiverid"]["accountnumber"]?></td>
                                        <td class="font-weight-600"><?php echo $one["receiverid"]["bankname"]?></td>
                                    </tr>
                                   
                                   
                                     <?php }?>


                                     <?php foreach($receivedess as $one) 
                                           {?>
                                    <tr>
                                         
                                        <td class="font-weight-600"><?php echo $one["usess"]["firstname"]?><br> <?php echo $one["usess"]["lastname"]?></td>
                                       
                                       <td> <div class="badge badge-warning"><?php echo "credit"?></div></td>
                                         <td><?php echo $one["mes"]["date"] ?></td>
                                        <td> <a href="#" class="btn btn-primary"><?php echo $one["mes"]["amount"] ?></a></td>
                                        <td class="font-weight-600"><?php echo $one["usess"]["accountnumber"]?></td>
                                        <td class="font-weight-600"><?php echo $one["usess"]["bankname"]?></td>
                                    </tr>
                                   
                                   
                                     <?php }?>


                                     <!--second table -->
                                    </table>
                                </div>
                            </div>
                              <!-- duplicate of table Content -->
                               
                               <div class="card-body p-0">
                                <div class="table-responsive table-invoice">
                                    <table class="table table-striped">
                                   

                                 
                                     
                                    </table>
                                </div>
                            </div>

         <!-- duplicate of table Content -->


                        </div>
                    </div>
                    
                </div>
            </section>
        </div>


         <!-- end of app main Content -->


        <!-- Start app Footer part -->
        <footer class="main-footer">
            
            <div class="footer-right">
            
            </div>
        </footer>

        <!-- end footer app Footer part -->
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