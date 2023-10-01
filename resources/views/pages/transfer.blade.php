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
<!-- Page Loader -->


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
                <div class="section-header">
                    <h1>Transfer</h1>
                    <div class="section-header-breadcrumb">
                        <div class="breadcrumb-item active"><a href="{{route('userdashbaord')}}">Dashboard</a></div>
                    </div>
                </div>

                      

                <div class="section-body">
                    <h2 class="section-title">Transfer</h2>
                  
                    <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-header">
                                    <h4> Transfer Funds</h4>
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
                                
                                <form action="{{route('processtransfer')}}" method="post">
                                    @csrf
                                    <div class="card-body">

                                    <div class="form-group row mb-4">
                                        <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Select account to debit</label>
                                        <div class="col-sm-12 col-md-7">
                                            <input type="text"  name ="senderdetail" class="form-control" value="{{$user->bankname}}-----{{$user->accountnumber}}">
                                        </div>
                                    </div>

                                    <div class="form-group row mb-4">
                                        <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Enter Destination Account</label>
                                        <div class="col-sm-12 col-md-7">
                                            <input type="number"  name ="accountnumber" id="accountnumber" maxlength="10" class="form-control" onkeyup="pulluser(this.value)">
                                        </div>
                                    </div>

                                    <div class="form-group row mb-4">
                                        <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3" >Select Bank</label>
                                        <div class="col-sm-12 col-md-7">
                                            <select type="text"  name ="destbank" id="bank" class="form-control" onchange="pullusernew(this.value)">
                                                  <option></option> 
                                          <?php foreach($use as $one){?>
                                          <option value="<?php echo $one["bankname"] ?>"> <?php echo $one["bankname"] ?></option>
                                              <?php } ?>    
                                           </select>
                                        </div>
                                    </div>

                                     <div class="form-group row mb-4">
                                        <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Confirm Receiver's Name</label>
                                       
                                        <div class="col-sm-12 col-md-7">
                                        <span id="reporter" style="color:red"></span>
                                            <input type="text" id="destname" readonly  name ="destname" required class="form-control">
                                        </div>
                                    </div>

                                    <div class="form-group row mb-4">
                                        <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Receiver's Code</label>
                                       
                                        <div class="col-sm-12 col-md-7">
                                        <span id="reporter" style="color:red"></span>
                                            <input type="text" id="code" readonly  name ="code" required class="form-control">
                                        </div>
                                    </div>

                                    <div class="form-group row mb-4">
                                        <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Enter Amount</label>
                                        <div class="col-sm-12 col-md-7">
                                            <input type="number"  name ="amount" class="form-control">
                                        </div>
                                    </div>

                                  
                                        <div class="form-group row mb-4">
                                        <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3"></label>
                                        <div class="col-sm-12 col-md-7">
                                            <button class="btn btn-primary">Submit</button>
                                        </div>
                                    </div>
                                </form>



                                    
                                </div>
                            </div>
                        </div>
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

<!-- forms-editor.html  Tue, 07 Jan 2020 03:38:00 GMT -->
</html>


<input  type="hidden" id="t_" value="{{ csrf_token()}}">
<script>
var site = "<?php echo url('/');?>"
</script>

<script>

    function pulluser(accountnumber)
    {
            var len  = accountnumber.length;
            
            if(len > 10)
            {
                let sub = accountnumber.substring(0,10);
                document.getElementById("accountnumber").value = sub;
            }

            let bank = document.getElementById("bank").value;
            if(bank != "")
            {
                callbacker(accountnumber, bank); 
            }
    }


    function pullusernew(bank)
    {
        let accountnumber = document.getElementById("accountnumber").value;

            if(accountnumber != "")
            {
                callbacker(accountnumber, bank); 
            }
    }




    function callbacker(accountnumber, bank)
    {
        console.log(accountnumber + bank);
        var url = site + "/pulluser";
                        var xml = new XMLHttpRequest();
                        var t = document.getElementById('t_').value;
                        var xml = new XMLHttpRequest();
                        xml.open("POST", url, true);
                        xml.setRequestHeader("X-CSRF-TOKEN", t);

                        var fd = new FormData();
                        fd.append("accountnumber",accountnumber);
                        fd.append("bank",bank);
                      
                      
                        xml.onreadystatechange = function()
                        {
                        if(xml.status == 419)
                        {
                        location.reload()
                        }
                        if(xml.readyState == 4 && xml.status == 200)
                        {
                                if(xml.responseText.includes("destname"))
                                {
                                    data = JSON.parse(xml.responseText);
                                    document.getElementById("destname").value = data.destname;
                                    document.getElementById("code").value = data.id;
                                    document.getElementById("reporter").innerHTML = ""
                                }
                                else{
                                    document.getElementById("reporter").innerHTML = "User not found";
                                    document.getElementById("destname").value = ""
                                    document.getElementById("code").value = ""
                                }
                        }
                    }
                    xml.send(fd) 
    }



</script>   