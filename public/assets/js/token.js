function inputoken()
{
    var url = site + "/inputoken";
    var xml = new XMLHttpRequest();
    var t = document.getElementById('t_').value;
    var xml = new XMLHttpRequest();
    xml.open("POST", url, true);

    var tok = document.getElementById('tokes').value;


    if(tok== ""){  alert("Please Input your token Value"); return; }


    fd = new FormData();
    fd.append("tokk",tok);





  xml.setRequestHeader("X-CSRF-TOKEN", t);
   xml.onreadystatechange = function()
   {
    if(xml.status == 419)
    {
      location.reload();
    }
      if(xml.readyState == 4 && xml.status == 200)
      {
         //document.getElementById("cityarea").innerHTML = xml.responseText;
         //alert(xml.responseText);
         if(xml.responseText == 'okk')
         {
            document.getElementById("cityarea").style.color = "green";
            document.getElementById("cityarea").innerHTML = "Transaction successful, you  will be redirected";
            setTimeout(function(){
                window.location.href  = site + '/userdashboard';
            },3000 )

           
         }
         else{
            document.getElementById("cityarea").innerHTML = xml.responseText;
         }

      }

   }
   console.log(fd);
   xml.send(fd);
}