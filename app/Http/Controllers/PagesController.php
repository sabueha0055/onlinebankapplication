<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Session;
use App\Models\User;
use App\Models\Transaction;
use App\Models\Temporary;
use AfricasTalking\SDK\AfricasTalking;

use App\Models\Wallet;

use illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

use DB;



class PagesController extends Controller
{
    //
    
      public function welcome()
    {
        return view ('welcome');
    }
    

    public function processlogin(Request $request)
    {
  
         $email = $request->email;
          $password = $request->password;
             if(!Auth::attempt(['email'=>$email,'password'=>$password])) {
           return back()->with('status','Invalid login details');
         }

        $pan = Transaction::where(['user_id'=> auth()->user()->id, 'status'=> 2])->count();
       
        if($pan >= 2)
        {
            return redirect()->route('welcome')->withErrors([ 'You cannot login again today']);
        }
         
          $phone = auth()->user()->phone;

         if(!preg_match("/234/", $phone))
        {
          $phone = "234".$phone;
        }



      $username = $_ENV["AFRICAISTALKING_USERNAME"]; // use 'sandbox' for development in the test environment
      $apiKey   = $_ENV["AFRICAISTALKING_APIKEY"]; // use your sandbox app API key for development in the test environment
      $AT       = new AfricasTalking($username, $apiKey);

      // Get one of the services
       $sms      = $AT->sms();
       $phones  = $phone;
       $name = auth()->user()->lastname;


   
   try{
      // Use the service
  $result   = $sms->send([
  'to'      =>   $phones,
  'message' => ' You have successfully login.. Please if you are not the user, contact customer care...'.$name
   ]); 
   } 

    catch(\Exception $e){
        //  $error = $e->getMessage();
        }
   
           
    
          
         return redirect('userdashboard');
    }


    
    public function profile()
    {  
      
      $user = User::where('id', auth()->user()->id)->first();
      return view('pages.profile',[
         'user'=> $user,
      ]); 
    }
  
    public function acceptoken()
    {  
      
      $user = User::where('id', auth()->user()->id)->first();
      return view('pages.acceptoken',[
        'user'=>$user,
      ]); 
    }


    public function inputoken(Request $request)
    {  
      
      $tows = Temporary::where('token', $request->tokk)->first();

      if($tows == NULL)
      {
        echo "Token not found";
      }
      else
      {
        if($tows->stat == 1)
        {
          echo "Error :  This token has already been used";
          return;
        }
        if( time() - $tows->timestamp  >= 900 )
        {
          echo "This token has expired, please request for another token";
          $tows->delete();
          return;
           
        }



        $numbe = User::where('id',$tows->sender_id)->first();
        $nu = $numbe->phone;
       
        $amnt = $tows->amount;

        if(!preg_match("/234/", $nu))
        {
          $phone = "234".$nu;
        }



      $username = $_ENV["AFRICAISTALKING_USERNAME"]; // use 'sandbox' for development in the test environment
      $apiKey   = $_ENV["AFRICAISTALKING_APIKEY"]; // use your sandbox app API key for development in the test environment
      $AT       = new AfricasTalking($username, $apiKey);

      // Get one of the services
       $sms      = $AT->sms();
       $phones  = $phone;
       $name = $numbe->lastname;


   
   try{
      // Use the service
  $result   = $sms->send([
  'to'      =>   $phones,
  'message' => ' The token has been succesfully used'." ". $amnt." has been deducted from your account....".$name
   ]); 
   } 

    catch(\Exception $e){
        //  $error = $e->getMessage();
        }



        $trans = Wallet::where('user_id', session('user_id'))->get();
         $balance = 0;
        foreach ($trans as $key)
        {
           if($key->type == "credit")
           {
              $balance = $balance + $key->amount;
           }
           if($key->type == "debit")
           {
       
              $balance = $balance - $key->amount;
           }
        }
        if($balance < session('amount'))
        {
          echo "Error Insufficient Balance";
           return;
        }


          $temobj = json_decode($tows->general,true);
                                                                                                                                                                     
        
          $wallet = new Wallet();
          $wallet->user_id = $tows->sender_id;
          $wallet->amount = $tows->amount;
          $wallet->receiverid = $tows->receiver_id;
          $datetime = new \DateTime();
          $wallet->date = $datetime->format("Y-m-d");
          $wallet->type = 'debit';
          $wallet->ref = session('token');
          $wallet->save();

          $wallet = new Wallet();
          $wallet->amount = $tows->amount;
          $wallet->user_id = auth()->user()->id;
          $wallet->receiverid = session('code');
          $datetime = new \DateTime();
          $wallet->date = $datetime->format("Y-m-d");
          $wallet->type = 'credit';
          $wallet->ref = session('token');
          $wallet->save();


          $tows->stat = 1;
          $tows->save();

          echo "okk";

      



          $trans = Wallet::where('user_id', session('user_id'))->get();


          $balance = 0;
          foreach ($trans as $key)
          {
             if($key->type == "credit")
             {
                $balance = $balance + $key->amount;
             }
             if($key->type == "debit")
             {
         
                $balance = $balance - $key->amount;
             }
            
          }
          
      
      }

    }
      

    



  public function Transfer()
    {
   //    session(['ref' => $transfer->ref]);
    
       $use = User::distinct()->get(['bankname']);
      $user = User::where('id', auth()->user()->id)->first();
      return view('pages.transfer',[
        'user'=> $user,
        'use'=> $use,
      ]);
    }
      
    public function confirmdetails()
    {
      $user = User::where('id', auth()->user()->id)->first();
      $top = Temporary::where ('token',session('token'))->first();
      return view('pages.confirmdetail',[
        'user'=> $user,
        'top'=>  $top,
      ]);
    }
    
    
    

     public function processeditprofile(Request $request)
    {
          $this->validate($request,[
        'firstname'=> 'required',
        'lastname'=> 'required',
        'email'=> 'required',
        'address'=> 'required',
        'phone'=> 'required',
        
        ]); 
         $update = user::where('id',$request->id)->first();
         $update->firstname = ucfirst($request->firstname);
         $update->lastname= ucfirst($request->lastname);
         $update->email = $request->email;
         $update->address = ucfirst($request->address);
         $update->phone = $request->phone;
         $update->password = Hash::make($request->password);
         $update->id = $request->id;
         $update->save();
         return redirect()->route('userdashbaord');
    }

        
    public function reconfirmdetail()
    {
      $user = User::where('id', auth()->user()->id)->first();
      return view('pages.reconfirmdetail',[
         'user'=> $user,
      ]);
    }

    public function nothing()

    {
      
    }
    /*
      public function processtransfer(Request $request)
    {
        
        $this->validate($request,[
        'senderdetail'=> 'required',
        'accountnumber'=> 'required',
        'destbank'=> 'required',
        'destname'=> 'required',
        'amount'=> 'required',
        
        
        
        ]);

        $phone = auth()->user()->phone;


        $transfer->object = array(
           'senderdetail' => $request->senderdetail,
           'destaccount' => $request->accountnumber,
           'destbank' => $request->destbank,
           'destname' => $request->destname,
           'code' => $request->code,
           'user_id' => $request->auth()->user()->id,
           'amount' => $request->amount,
         
      );
        
         $transfer =  new Transaction();
         $transfer->senderdetail = $request->senderdetail;
         $transfer ->destaccount = $request->accountnumber;
         $transfer->destbank = $request->destbank;
         $transfer->destname = $request->destname;
         $transfer->code = $request->code;
         $transfer->user_id = auth()->user()->id;
         $transfer->amount = $request->amount;
         if($transfer->amount >= 20001)
         {
           return redirect()->route('transfer')->withErrors([ 'You cannot make transaction of more than 20000 at once']);
         }
         $transfer->ref =  substr(str_shuffle("1234567890"),-6).substr(str_shuffle("ABCDFEGHIJKLMNPQRSTUVWZYX"),-2);
        $transfer->save();
        
        {

        if(!preg_match("/234/", $phone))
        {
          $phone = "234".$phone;
        }



      $username = $_ENV["AFRICAISTALKING_USERNAME"]; // use 'sandbox' for development in the test environment
      $apiKey   = $_ENV["AFRICAISTALKING_APIKEY"]; // use your sandbox app API key for development in the test environment
      $AT       = new AfricasTalking($username, $apiKey);

      // Get one of the services
       $sms      = $AT->sms();
       $phones  = $phone;
       $name = auth()->user()->lastname;
       $amont = $request->amount;

  try{
    // Use the service
$result   = $sms->send([
    'to'      =>   $phones,
    'message' => 'You have initiated a transfer of ' .$amont. ',from your NIBBS system.'.".". $name
]);
  }

  catch(\Exception $e){
        //  $error = $e->getMessage();
        }


}



       $ref = $transfer->ref;
       session(['ref'=>$ref]);
        
       $sender= $transfer->senderdetail;
       session(['senderdetail'=>$sender]);
        $account = $transfer->destaccount;
       session(['destaccount'=>$account]);
        $bank= $transfer->destbank;
       session(['destbank'=>$bank]);
        $dest = $transfer->destname;
       session(['destname'=>$dest]);
       $userid = $transfer->user_id;
       session(['user_id'=>$userid]);

        $code = $transfer->code;
       session(['code'=>$code]);


      $amount =  $request->amount;
       session(['amount'=>$amount]);
       $amo = session('amount');

       
         return redirect()->route('confirmdetails');

      
      
    }
*/

public function processtransfer(Request $request)
{
  $transfer =  new Temporary();
  $transfer->sender_id = auth()->user()->id;
  $transfer->receiver_id = $request->code;
  $toke = substr(str_shuffle("1234567890"),-6).substr(str_shuffle("ABCDFEGHIJKLMNPQRSTUVWZYX"),-2);
  $transfer->token = $toke;
  $transfer->amount = $request->amount;
  $obje = array(
    'senderdetail' => $request->senderdetail,
    'destaccount' => $request->accountnumber,
    'destbank' => $request->destbank,
    'destname' => $request->destname,
    'code' => $request->code,
    'user_id' =>auth()->user()->id,
    'amount' => $request->amount,
  
);
$transfer->general = json_encode( $obje);
$transfer->timestamp = time();
if($transfer->amount >= 20001)
{
  return redirect()->route('transfer')->withErrors([ 'You cannot make transaction of more than 20000 at once']);
}
$transfer->save();

$code =  $request->code;
session(['code'=>$code]);
$amo = session('code');

$token = $toke;
session(['token'=>$token]);
$token = session('token');

$mount = $request->amount;
session(['amount'=>$mount]);
$ant = session('amount');

$receiverdetails = User::where('id',session('code'))->first();

$phon= $receiverdetails->phone;


if(!preg_match("/234/", $phon))
{
  $ph = "234".$phon;
}



$username = $_ENV["AFRICAISTALKING_USERNAME"]; // use 'sandbox' for development in the test environment
$apiKey   = $_ENV["AFRICAISTALKING_APIKEY"]; // use your sandbox app API key for development in the test environment
$AT       = new AfricasTalking($username, $apiKey);

// Get one of the services
$sms      = $AT->sms();
$phones  = $ph;
$name = $receiverdetails->lastname;


try{
// Use the service
$result   = $sms->send([
'to'      =>   $phones,
'message' => 'This is your token number' .$token .".".'Type it in your account to confirm your transaction'.$name
]); 
} 


catch(\Exception $e){
//  $error = $e->getMessage();
}


$sendtrans = User::where('id',auth()->user()->id)->first();
$phness= $sendtrans->phone;

if(!preg_match("/234/", $phness))
{
  $super = "234".$phness;
}

$username = $_ENV["AFRICAISTALKING_USERNAME"]; // use 'sandbox' for development in the test environment
$apiKey   = $_ENV["AFRICAISTALKING_APIKEY"]; // use your sandbox app API key for development in the test environment
$AT       = new AfricasTalking($username, $apiKey);

$sms      = $AT->sms();
$per  = $super;
$name = $sendtrans->lastname;


try{
  // Use the service
  $result   = $sms->send([
  'to'      =>   $per,
  'message' => 'You have initiated a transfer of ' .$ant." ". 'from your account, please if you are not the one contact customer care immediately...'.$name
  ]); 
  } 



catch(\Exception $e){
  //  $error = $e->getMessage();
  }



return redirect()->route('confirmdetails')->with('message',"The token has been successfully sent");



}






/*

      public function processconfirmdetails(Request $request)
    {
        
        $this->validate($request,[
        'mastercard'=> 'required',
        'expiry'=> 'required',
        'cvv'=> 'required',
        'pin'=> 'required',
  
        
        
        
        ]);

         $phone = auth()->user()->phone;

        $datetime = new \DateTime();
        $date = $datetime->format("Y-m-d");
        $limit = Wallet::where(['user_id'=>auth()->user()->id, 'type'=>'debit', 'date'=>$date])->sum('amount');
        if($limit >= 20000)
        {
           return redirect()->route('welcome')->withErrors([ 'You have exceeded your transfer limit for today']);
        }
       
        $pan = Transaction::where(['user_id'=> auth()->user()->id, 'status'=> 2])->count();
      
        if($pan >= 2)
        {
            return redirect()->route('welcome')->withErrors([ 'Incorrect card details.You cannot make transaction again today']);
        }

         $amo = session('amount');

         $fir =  User::where(['mastercard'=>$request->mastercard, 'cvv'=>$request->cvv,'expiry'=>$request->expiry, 'pin'=>$request->pin ])->first();
        if($fir == NULL)
        {
          
         $trans = Transaction::where('ref',session('ref'))->first();
         $datetime = new \DateTime();
         $trans->mastercard = $request->mastercard;
         $trans->date = $datetime->format("Y-m-d");
         $trans->cvv = $request->cvv;
         $trans->expiry = $request->expiry;
         $trans->pin = $request->pin;
         $trans->user_id = auth()->user()->id;
         $trans->status = 2;
       if($trans->save())
              
        {

        if(!preg_match("/234/", $phone))
        {
          $phone = "234".$phone;
        }



      $username = $_ENV["AFRICAISTALKING_USERNAME"]; // use 'sandbox' for development in the test environment
      $apiKey   = $_ENV["AFRICAISTALKING_APIKEY"]; // use your sandbox app API key for development in the test environment
      $AT       = new AfricasTalking($username, $apiKey);

      // Get one of the services
       $sms      = $AT->sms();
       $phones  = $phone;
       $name = auth()->user()->lastname;

  try{
// Use the service
$result   = $sms->send([
    'to'      =>   $phones,
    'message' => 'Incorrect card details. After 2 failed attempt, you will be blocked from making any transaction till after 24hrs..'. $name
]);
}

 catch(\Exception $e){
        //  $error = $e->getMessage();
        }

}

          
       
          return redirect('reconfirmdetail')->withErrors([ 'Incorrect card details. After 2 failed attempt, you will be blocked from making any transaction till after 24hrs']);
        }

         
        else
        {
           $wallet = new Wallet();
           $wallet->user_id = auth()->user()->id;
           $wallet->amount = session('amount');
           $wallet->receiverid = session('code');
           $datetime = new \DateTime();
           $wallet->date = $datetime->format("Y-m-d");
           $wallet->type = 'debit';
           $wallet->ref = session('ref');
           $wallet->save();

           $wallet = new Wallet();
           $wallet->amount = session('amount');
           $wallet->user_id = session('code');
           $wallet->receiverid = session('code');
           $datetime = new \DateTime();
           $wallet->date = $datetime->format("Y-m-d");
           $wallet->type = 'credit';
           $wallet->ref = session('ref');
           $wallet->save();

         $trans = Transaction::where('ref',session('ref'))->first();
         $datetime = new \DateTime();
         $trans->mastercard = $request->mastercard;
         $trans->date = $datetime->format("Y-m-d");
         $trans->cvv = $request->cvv;
         $trans->user_id = auth()->user()->id;
         $trans->expiry = $request->expiry;
         $trans->pin = $request->pin;
         $trans->status = '1';
         $trans->save();

       $date =  $request->date;
       session(['date'=>$date]);
        $trans = Wallet::where('user_id', session('user_id'))->get();
      
        $balance = 0;
          foreach ($trans as $key)
          {
             if($key->type == "credit")
             {
                $balance = $balance + $key->amount;
             }
             if($key->type == "debit")
             {
                $balance = $balance - $key->amount;
             }

          }
          
         return redirect()->route('userdashbaord')->with(['balance'=>$balance]);
        }


      
        
    }
    */


    public function goback()
    {
      return redirect('userdashboard');
    }

    public function processreconfirmdetail(Request $request)
    {
      $datetime = new \DateTime();
      $date = $datetime->format("Y-m-d");
      $pan = Transaction::where(['user_id'=> auth()->user()->id, 'status'=> 2, 'date'=>$date ] )->count();
     
      if($pan == 2)
       {
           return redirect()->route('welcome')->withErrors([ 'Incorrect card details.You cannot make transaction again today']);
        }

        $fir =  User::where(['mastercard'=>$request->mastercard, 'cvv'=>$request->cvv,'expiry'=>$request->expiry, 'pin'=>$request->pin ])->first();
        if($fir == NULL)
        {
          
         $transs = new Transaction;
         $transs->senderdetail =  session('senderdetail');
         $transs ->destaccount =session('destaccount');
         $transs->destbank = session('destbank');
         $transs->destname = session('destname');
         $transs->user_id =  session('user_id');
         $transs->amount =  session('amount');
         $transs->ref =  session('ref');
         $transs->code =  session('code');
         $datetime = new \DateTime();
         $transs->mastercard = $request->mastercard;
         $transs->date = $datetime->format("Y-m-d");
         $transs->cvv = $request->cvv;
         $transs->expiry = $request->expiry;
         $transs->pin = $request->pin;
         $transs->user_id = auth()->user()->id;
         $transs->status = 2;
         $transs->save();
          return back()->withErrors([ 'Incorrect card details.']);
        }
         else
        {
           $wallet = new Wallet();
           $wallet->user_id = auth()->user()->id;
           $wallet->amount = session('amount');
           $wallet->receiverid = session('code');
           $datetime = new \DateTime();
           $wallet->date = $datetime->format("Y-m-d");
           $wallet->type = 'debit';
           $wallet->ref = session('ref');
           $wallet->save();

           $wallet = new Wallet();
           $wallet->amount = session('amount');
           $wallet->user_id = session('code');
           $wallet->receiverid = session('code');
           $datetime = new \DateTime();
           $wallet->date = $datetime->format("Y-m-d");
           $wallet->type = 'credit';
           $wallet->ref = session('ref');
           $wallet->save();

         $trans = Transaction::where('ref',session('ref'))->first();
         $datetime = new \DateTime();
         $trans->mastercard = $request->mastercard;
         $trans->date = $datetime->format("Y-m-d");
         $trans->cvv = $request->cvv;
         $trans->user_id = auth()->user()->id;
         $trans->expiry = $request->expiry;
         $trans->pin = $request->pin;
         $trans->status = '1';
         $trans->save();

       $date =  $request->date;
       session(['date'=>$date]);
        $trans = Wallet::where('user_id', session('user_id'))->get();
      
        $balance = 0;
          foreach ($trans as $key)
          {
             if($key->type == "credit")
             {
                $balance = $balance + $key->amount;
             }
             if($key->type == "debit")
             {
                $balance = $balance - $key->amount;
             }

          }
          
         return redirect()->route('userdashbaord')->with(['balance'=>$balance]);
        }
    }


    public function pulluser(Request $request)
    {
      $user =  User::where(['bankname'=>$request->bank, 'accountnumber'=>$request->accountnumber])->first();
  
      if($user != NULL)
      {
        $array = array("destname"=>$user->firstname. " ".$user->lastname, 'id'=>$user->id);
        echo json_encode($array);
      }
    }


   public function dashboard()
    { 
     $datetime = new \DateTime();
     $date = $datetime->format("Y-m-d");
     $sent = Wallet::where(['user_id'=>auth()->user()->id, 'date'=>$date , 'type'=> 'debit'])->get();
     $recieved = Wallet::where(['receiverid'=>auth()->user()->id, 'date'=>$date, 'type'=>'debit'])->get();
   
     $sender = array();
    foreach ($sent as $one)
    {
        $onerecieve = array();
        $sen = User::where('id',$one->receiverid)->first();
        $onerec = array("receiverid"=>$sen, "mes"=>$one);
        $sender[] = $onerec;
    }
    
 
 

     $receiver = [];
    foreach ($recieved as $one)
    {
        $onerecieve = array();
        $sen = User::where('id',$one->user_id)->first();
        $onerec = array("usess"=>$sen, "mes"=>$one);
        $receiver[] = $onerec;
    }

       $user = User::where('id', auth()->user()->id)->first();
       $trans = Wallet::where('user_id', auth()->user()->id)->get();

          $balance = 0;
          foreach ($trans as $key)
          {
             if($key->type == "credit")
             {
                $balance = $balance + $key->amount;
                
                
             }
             if($key->type == "debit")
             {
                $balance = $balance - $key->amount;
              
             }

          }
         
        return view ('dashboard.userdashboard',[
          'user'=> $user,
          'balance'=>$balance,
          'sentes'=>$sender,
          'receivedess' => $receiver,
          
        ]);
    }


    public function creditall()
    {
      $creditall = User::get();
     
      
      foreach($creditall as $one)
      {
           $wallet = new Wallet();
           $wallet->amount = 10000000;
           $wallet->user_id = $one->id;
           $wallet->receiverid = $one->id;
           $wallet->type = 'credit';
           $wallet->ref = substr(str_shuffle("1234567890"),-6).substr(str_shuffle("ABCDFEGHIJKLMNPQRSTUVWZYX"),-2);
           $wallet->save();
      }

      
    }
        
      public function logout(){
      auth()->logout();
      return redirect()->route('welcome');
    }




    
   public function dailysent()
    { 
     $datetime = new \DateTime();
     $date = $datetime->format("Y-m-d");
     $sent = Wallet::where(['user_id'=>auth()->user()->id, 'date'=>$date , 'type'=> 'debit'])->get();
     $recieved = Wallet::where(['receiverid'=>auth()->user()->id, 'date'=>$date, 'type'=>'debit'])->get();
   
     $sender = array();
    foreach ($sent as $one)
    {
        $onerecieve = array();
        $sen = User::where('id',$one->receiverid)->first();
        $onerec = array("receiverid"=>$sen, "mes"=>$one);
        $sender[] = $onerec;
    }
    
 
 

     $receiver = [];
    foreach ($recieved as $one)
    {
        $onerecieve = array();
        $sen = User::where('id',$one->user_id)->first();
        $onerec = array("usess"=>$sen, "mes"=>$one);
        $receiver[] = $onerec;
    }

       $user = User::where('id', auth()->user()->id)->first();
       $trans = Wallet::where('user_id', auth()->user()->id)->get();

          $balance = 0;
          foreach ($trans as $key)
          {
             if($key->type == "credit")
             {
                $balance = $balance + $key->amount;
                
                
             }
             if($key->type == "debit")
             {
                $balance = $balance - $key->amount;
              
             }

          }
         
        return view ('pages.sent',[
          'user'=> $user,
          'balance'=>$balance,
          'sentes'=>$sender,
          'receivedess' => $receiver,
          
        ]);
    }
     


    public function dailyreceive()
    { 
     $datetime = new \DateTime();
     $date = $datetime->format("Y-m-d");
     $sent = Wallet::where(['user_id'=>auth()->user()->id, 'date'=>$date , 'type'=> 'debit'])->get();
     $recieved = Wallet::where(['receiverid'=>auth()->user()->id, 'date'=>$date, 'type'=>'debit'])->get();
   
     $sender = array();
    foreach ($sent as $one)
    {
        $onerecieve = array();
        $sen = User::where('id',$one->receiverid)->first();
        $onerec = array("receiverid"=>$sen, "mes"=>$one);
        $sender[] = $onerec;
    }
    
 
 

     $receiver = [];
    foreach ($recieved as $one)
    {
        $onerecieve = array();
        $sen = User::where('id',$one->user_id)->first();
        $onerec = array("usess"=>$sen, "mes"=>$one);
        $receiver[] = $onerec;
    }

       $user = User::where('id', auth()->user()->id)->first();
       $trans = Wallet::where('user_id', auth()->user()->id)->get();

          $balance = 0;
          foreach ($trans as $key)
          {
             if($key->type == "credit")
             {
                $balance = $balance + $key->amount;
                
                
             }
             if($key->type == "debit")
             {
                $balance = $balance - $key->amount;
              
             }

          }
         
        return view ('pages.receive',[
          'user'=> $user,
          'balance'=>$balance,
          'sentes'=>$sender,
          'receivedess' => $receiver,
          
        ]);
    }
     


     public function alltransfer()
    { 
     $datetime = new \DateTime();
     $date = $datetime->format("Y-m-d");
     $sents = Wallet::where(['user_id'=>auth()->user()->id,  'type'=> 'debit'])->Orderby('id','DESC')->take(20)->get();
     $recieveds = Wallet::where(['receiverid'=>auth()->user()->id,  'type'=>'debit'])->Orderby('id','DESC')->take(20)->get();
   
     $sender = array();
    foreach ($sents as $one)
    {
        $onerecieve = array();
        $sen = User::where('id',$one->receiverid)->first();
        $onerec = array("receiverid"=>$sen, "mes"=>$one);
        $sender[] = $onerec;
    }
    
 
 

     $receiver = [];
    foreach ($recieveds as $one)
    {
        $onerecieve = array();
        $sen = User::where('id',$one->user_id)->first();
        $onerec = array("usess"=>$sen, "mes"=>$one);
        $receiver[] = $onerec;
    }

       $user = User::where('id', auth()->user()->id)->first();
       $trans = Wallet::where('user_id', auth()->user()->id)->get();

          $balance = 0;
          foreach ($trans as $key)
          {
             if($key->type == "credit")
             {
                $balance = $balance + $key->amount;
                
                
             }
             if($key->type == "debit")
             {
                $balance = $balance - $key->amount;
              
             }

          }
         
        return view ('pages.alltransfer',[
          'user'=> $user,
          'balance'=>$balance,
          'sentes'=>$sender,
          'receivedess' => $receiver,
          
        ]);
    }
public function test()
{
  $test = Transaction::where('user_id',auth()->user()->id)
                       ->orWhere('user_id', 'code')
                       ->latest()
                       ->get();

     if($test->user_id == auth()->user()->id)
   {
    $tests = $test;
    $alert = "debit";
   }

   else
   {
    $tests = $test;
    $alert = "credit";
   }
}
      public function download()
    {
    	$myFile = storage_path("app/project.docx");


    	return response()->download($myFile);
    }

    
 
}


