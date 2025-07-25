<!--<script>
 
 function autoRefresh()
{
	window.location = window.location.href;
}
 
 setInterval('autoRefresh()', 5000); // this will reload page after every 5 secounds; Method I
</script>
-->


    <script src="jquery.min.js"></script>
  <!-- <script>
 function autoRefresh_div()
 {
      $("#result").load("time.php");// a function which will load data from other file after x seconds
  }
 
  setInterval('autoRefresh_div()', 2000); // refresh div after 5 secs
            </script>-->
<style>
.container
{
font-size:12px;
font-family:Arial, Helvetica, sans-serif;	
}

</style>




  
  <style>
body {
    margin: 0 auto;
    max-width: 700px;
    padding: 0 20px;
}

.container {
   
    background-color: #f1f1f1;
    border-radius: 5px;
    padding: 5px;
    margin: 5px 0;
}

.darker2 {
   
    background-color: #FDCCDD;
	width:80%;
	float:left;
}



.darker {
    
    background-color: #E1F8FF;
	width:80%;
	float:right;
}

.container::after {
    content: "";
    clear: both;
    display: table;
}

.container img {
    float: left;
    max-width: 60px;
    width: 100%;
    margin-right: 20px;
    border-radius: 50%;
}

.container img.right {
    float: right;
    margin-left: 20px;
    margin-right:0;
}

.time-right {
    float: left;
    color: #aaa;
}

.time-left {
    float: right;
    color: #999;
}

</style>
  
  
<br /><br />


<table align="center" width="90%"><tr><td width="400px">


<h3>Chat Bot</h3>
<div style="height:350px;overflow:auto">



<?php

mysql_connect("localhost", "root", "") or die(mysql_error());
mysql_select_db("college_chatbot") or die(mysql_error());


?>



<div id="result">

<?php


?></div>







<script type="text/javascript">
$(function() {
$(".submit_button").click(function() {
var textcontent = $("#note-textarea").val();
var dataString = 'content='+ textcontent;

if(textcontent=='')
{
var textcontent = $("#note-textarea2").val();
var dataString = 'content='+ textcontent;
}

if(textcontent=='')
{
alert("Enter some text..");
$("#note-textarea").focus();
}
else
{
$("#flash").show();
$("#flash").fadeIn(100).html("<span class='load'><img src='loading.gif'></span>");
$.ajax({
type: "POST",
url: "porter2.php",
data: dataString,
cache: false,
success: function(html){
$("#show").before(html);
document.getElementById('note-textarea').value='';
$("#flash").hide();
$("#note-textarea").focus();

document.getElementById('note-textarea').value = "";
}  

});
}
return false;
});
});
</script>










<div class="container">
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
<div class="space"></div>

<div id="show"></div>
<div style="clear:both"></div>
<div id="flash"></div>

<div style="clear:both"></div>
<div class="main">
<form  method="post" name="form" action="">
<!--<textarea style="width:80%; font-size:14px; height:60px; font-weight:bold; resize:none;float:left;" name="content"  id="content22" ></textarea>-->

<input style="width:85%; font-size:14px; height:30px; font-weight:bold; resize:none;float:left;" name="content"  id="note-textarea" placeholder="type msg" >
<!--<input style="width:80%; font-size:14px; height:30px; font-weight:bold; resize:none;float:left;" name="content2" type="text" name="content22"  id="note-textarea" on"myFunction()" value='ee' placeholder="mic">
-->


<input type="image" src="send.png" value="Send" name="submit" class="submit_button" style="float:right;width:25px;"/>

   
              
</form>

<?php

/*  
  $result2 = mysql_query("SELECT count(*) as cc FROM msgt where weight>.15 order by weight desc ") 
or die(mysql_error());  


while($row2 = mysql_fetch_array( $result2 )) {
$cc=$row2['cc'];
 
}

 if($cc>3)
{
	
	 $result2 = mysql_query("SELECT * FROM msgt where weight>.15 order by weight desc ") 
or die(mysql_error());  


while($row2 = mysql_fetch_array( $result2 )) 
{
echo "<form action='' method='post'>
<input  name='content' type='submit' class='submit_button'  id='note-textarea2'  value='$row2[msgI]' >

</form>
";
 
}
}*/
?>

<p id="demo"></p>
<script>
function myFunction() {
    var x = document.getElementById("note-textarea").value;
    document.getElementById("demo").innerHTML = "You wrote: " + x;
}
</script>

<?php
include("index.html");
?>
<br /><br /><br /><br /><br /><br />
</div>

</div>
</div>
</td></tr></table>