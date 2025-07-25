<?php
session_start();

?>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Data Mining</title>
  <meta charset="utf-8">
  
  
  <style>
body {
    margin: 0 auto;
    max-width: 800px;
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
    float: right;
    color: #aaa;
}

.time-left {
    float: left;
    color: #999;
}

</style>
  
  


<?php
error_reporting(0);
$conn = mysql_connect('localhost','root','') or die (mysql_error);
$db=mysql_select_db('college_chatbot', $conn) or die (mysql_error);

mysql_query("update msgt set weight='0'  ") or die(mysql_error());

$data="";
$SdataC="";
$datacount="";
$val=0;
//mysql_query("update msgt set weight='0'  ") 
//or die(mysql_error());
$data=$_POST['content'];

$org2=" ".$data;

$hidden_layer="";
$inputlayer = explode(" ", $data);
for($ii = 0; $ii < count($inputlayer); $ii++){

$result22=mysql_query("select * from hidden_layer where word1='$inputlayer[$ii]'");
while($row22=mysql_fetch_array($result22))
{
	
	$hidden_layer=$hidden_layer." ".$row22['word2'];
}
}

$data=$data." ".$hidden_layer;
//echo $data;

$query=mysql_query("SELECT * FROM obj") or die(mysql_error()); 
 while($row = mysql_fetch_array($query))
  {
	
	$obj=strtolower($row['obj']);
	$data=strtolower($data);



if (strpos($obj, $data) !== false) {
   // echo " $d $qes $row[id] true <br>";
	$_SESSION['obj']=$obj;
}

}



//echo "OBJ :: ".$_SESSION['obj'];
//$_SESSION['obj']=$obj;


mysql_query("insert into msg(msg,chat_reg) values ('$data','$_SESSION[reg_no]')");
$insert_id=mysql_insert_id();

$cleanstring = strtolower(trim(preg_replace('#\W+#', ' ', $data), '_'));

$res=$cleanstring;
$data=" ".$res." ";

$org=$data;




$cleanstring = strtolower(trim(preg_replace('#\W+#', ' ', $string), '_'));

$res=$cleanstring;

$query=mysql_query("SELECT * FROM stopwords") or die(mysql_error()); 
 while($row = mysql_fetch_array($query))
  {
	// echo $row['swords']."<br>";
	 $removal_word=$row['swords'];
	 $data=str_replace(" $removal_word "," ",$data);
	 
  }
$data=trim($data);

$msg=$data;

if (strpos($msg, 'mark') !== false) {
  $mark="";




$result2 = mysql_query("SELECT * FROM internalmarks where reg_no='$_SESSION[reg_no]'") 
or die(mysql_error());  


while($row2 = mysql_fetch_array( $result2 )) {
	
	similar_text($row2['subject'],$msg,$percent);


//if($percent>50)
{
$mark=$mark."  ".$row2['subject']." ".$row2['int_marks']."<br>";
}
//
//else
{
//$mark="Pls clear your need ... $_SESSION[reg_no]";	
}
}



	
	



$code="<div class='container darker2'>
  <img src='user.jpg' alt='Avatar' style='width:100%;'>
  <p>  $msg</p>
  <span class='time-right'>$datetime</span>
</div>

<div class='container darker'>
  <img src='user2.jpg' alt='Avatar' class='right' style='width:100%;'>
  <p>$mark</p>
  <span class='time-left'>$datetime</span>
</div>";
$mark="";


}







elseif (strpos($msg, 'attendance') !== false) {
  $mark="";




$result2 = mysql_query("SELECT * FROM attendance where reg_no='$_SESSION[reg_no]'") 
or die(mysql_error());  


while($row2 = mysql_fetch_array( $result2 )) {
	
	//similar_text($row2['subject'],$msg,$percent);


//if($percent>50)
{
$mark=$mark."  ".$row2['name']." ".$row2['att_per']."<br>";
}
//
//else
{
//$mark="Pls clear your need ... $_SESSION[reg_no]";	
}
}



	
	



$code="<div class='container darker2'>
  <img src='user.jpg' alt='Avatar' style='width:100%;'>
  <p>  $msg</p>
  <span class='time-right'>$datetime</span>
</div>

<div class='container darker'>
  <img src='user2.jpg' alt='Avatar' class='right' style='width:100%;'>
  <p>$mark</p>
  <span class='time-left'>$datetime</span>
</div>";
$mark="";


}


else
{












if($_SESSION['obj']!="")
$data=$_SESSION['obj']." ".$data;


$data2=checkmsg($data,$org2);
$code="<div class='container darker2'>
  <img src='user.jpg' alt='Avatar' style='width:100%;'>
  <p>$org2 </p>
  <span class='time-right'>$datetime</span>
</div>

<div class='container darker'>
  <img src='user2.jpg' alt='Avatar' class='right' style='width:100%;'>
  <p>$data2</p>
  <span class='time-left'>$datetime</span>
</div>";

}
//mysql_query("update msg set reply='$data2' where id='$insert_id' ") 
//or die(mysql_error()); 
?>


<div class="showbox"> <div class='bot'><?php echo $code ?></div> </div>
<?php

function checkmsg($data,$org2)
{







	error_reporting(0);	
		
		
		
		
function getIndex() {
	
	$conn = mysql_connect('localhost','root','') or die (mysql_error);
$db=mysql_select_db('college_chatbot', $conn) or die (mysql_error);



$result22=mysql_query("select * from msgt ");
while($row22=mysql_fetch_array($result22))
{
	
	$collection[$row22['id']] = $row22['msgI'];
}
	
	// $collection[11] = 'this string is a short string but a good string';
//	 $collection[20] = 'this one isn\'t quite like the rest but is here';
//	 $collection[31] = 'this is a different short string that\' not as short';
//	 
               

        $dictionary = array();
        $docCount = array();

        foreach($collection as $docID => $doc) {
                $terms = explode(' ', $doc);
                $docCount[$docID] = count($terms);

                foreach($terms as $term) {
                        if(!isset($dictionary[$term])) {
                                $dictionary[$term] = array('df' => 0, 'postings' => array());
                        }
                        if(!isset($dictionary[$term]['postings'][$docID])) {
                                $dictionary[$term]['df']++;
                                $dictionary[$term]['postings'][$docID] = array('tf' => 0);
                        }

                        $dictionary[$term]['postings'][$docID]['tf']++;
                }
        }

        return array('docCount' => $docCount, 'dictionary' => $dictionary);
}




function normalise($doc) {
        foreach($doc as $entry) {
                $total += $entry*$entry;
        }
        $total = sqrt($total);
        foreach($doc as &$entry) {
                $entry = $entry/$total;
        }
        return $doc;
}


function cosineSim($docA, $docB) {
        $result = 0;
        foreach($docA as $key => $weight) {
                $result += $weight * $docB[$key];
        }
        return $result;
}


//$data="give me the route college";
$query = explode(" ",$data);

$index = getIndex();
$matchDocs = array();
$docCount = count($index['docCount']);

foreach($query as $qterm) {
	$qterm = PorterStemmer::Stem($qterm);
        $entry = $index['dictionary'][$qterm];
        foreach($entry['postings'] as $docID => $posting) {
                $matchDocs[$docID] +=
                                $posting['tf'] *
                                log($docCount + 1 / $entry['df'] + 1, 2);
        }
}

// length normalise
foreach($matchDocs as $docID => $score) {
        $matchDocs[$docID] = $score/$index['docCount'][$docID];
}


	$conn = mysql_connect('localhost','root','') or die (mysql_error);
$db=mysql_select_db('college_chatbot', $conn) or die (mysql_error);



arsort($matchDocs); // high to low

//var_dump($matchDocs);		
		
	foreach ($matchDocs as $key => $value) {
    // $arr[3] will be updated with each value from $arr...
    //echo "{$key} => {$value} ";
	$result22=mysql_query("select * from msgt where id='$key'");
while($row22=mysql_fetch_array($result22))
{
	$ans=$row22['msgO'];
	
mysql_query("update msgt set weight='1' where id='$row22[id]' ") 
or die(mysql_error());

	$check++;
}
if($check>10)
	break;
	}
		
		
		
		//return $ans;
		



$count2=count($org2);

	 $result2 = mysql_query("SELECT * FROM msgt where weight=1  order by weight desc ") 
or die(mysql_error());  


while($row2 = mysql_fetch_array( $result2 )) 
{
$qes=strtolower($row2['msgI']);

$qes2 = explode(" ", $qes);
$y=count($qes2);


$data2 = explode(" ", $data);
	for($ii = 0; $ii < count($data2); $ii++){
$d=$data2[$ii];


 

	  $d = PorterStemmer::Stem($d);

//echo $d."-- <br>";
if (strpos($qes, $d) !== false) {
  //  echo " $d $qes $row[id] true <br>";
	$t++;
}


}

$y=$t/$y;


$tt=$t;
	$t=($t/$count2)+$y;






 //echo " $org2 $count2 -- $tt -- $t ***************** $row2[id] <br>";




mysql_query("update msgt set weight='$t' where id='$row2[id]' ") 
or die(mysql_error());


$t=0;
  
}
	


$result2 = mysql_query("SELECT * FROM msgt where weight>.15 order by weight desc limit 0,1") 
or die(mysql_error());  


while($row2 = mysql_fetch_array( $result2 )) {
$msg2=$row2['msgO'];
  $flag=1;
}

















if($flag!=1)
{
$msg2="Sorry Right Now I Have No Information To Share With You ..";
mysql_query("insert into faq(questions) values ('$fdata')");


}
	
	
	
return $msg2;














	
#return $msg2;


}







  
    
 class PorterStemmer
    {
        /**
        * Regex for matching a consonant
        * @var string
        */
        private static $regex_consonant = '(?:[bcdfghjklmnpqrstvwxz]|(?<=[aeiou])y|^y)';


        /**
        * Regex for matching a vowel
        * @var string
        */
        private static $regex_vowel = '(?:[aeiou]|(?<![aeiou])y)';


        /**
        * Stems a word. Simple huh?
        *
        * @param  string $word Word to stem
        * @return string       Stemmed word
        */
        public static function Stem($word)
        {
			//echo "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa";
            if (strlen($word) <= 2) {
                return $word;
            }

            $word = self::step1ab($word);
            $word = self::step1c($word);
            $word = self::step2($word);
            $word = self::step3($word);
            $word = self::step4($word);
            $word = self::step5($word);

            return $word;
        }


        /**
        * Step 1
        */
        private static function step1ab($word)
        {
            // Part a
            if (substr($word, -1) == 's') {

                   self::replace($word, 'sses', 'ss')
                OR self::replace($word, 'ies', 'i')
                OR self::replace($word, 'ss', 'ss')
                OR self::replace($word, 's', '');
            }

            // Part b
            if (substr($word, -2, 1) != 'e' OR !self::replace($word, 'eed', 'ee', 0)) { // First rule
                $v = self::$regex_vowel;

                // ing and ed
                if (   preg_match("#$v+#", substr($word, 0, -3)) && self::replace($word, 'ing', '')
                    OR preg_match("#$v+#", substr($word, 0, -2)) && self::replace($word, 'ed', '')) { // Note use of && and OR, for precedence reasons

                    // If one of above two test successful
                    if (    !self::replace($word, 'at', 'ate')
                        AND !self::replace($word, 'bl', 'ble')
                        AND !self::replace($word, 'iz', 'ize')) {

                        // Double consonant ending
                        if (    self::doubleConsonant($word)
                            AND substr($word, -2) != 'll'
                            AND substr($word, -2) != 'ss'
                            AND substr($word, -2) != 'zz') {

                            $word = substr($word, 0, -1);

                        } else if (self::m($word) == 1 AND self::cvc($word)) {
                            $word .= 'e';
                        }
                    }
                }
            }

            return $word;
        }


        /**
        * Step 1c
        *
        * @param string $word Word to stem
        */
        private static function step1c($word)
        {
            $v = self::$regex_vowel;

            if (substr($word, -1) == 'y' && preg_match("#$v+#", substr($word, 0, -1))) {
                self::replace($word, 'y', 'i');
            }

            return $word;
        }


        /**
        * Step 2
        *
        * @param string $word Word to stem
        */
        private static function step2($word)
        {
            switch (substr($word, -2, 1)) {
                case 'a':
                       self::replace($word, 'ational', 'ate', 0)
                    OR self::replace($word, 'tional', 'tion', 0);
                    break;

                case 'c':
                       self::replace($word, 'enci', 'ence', 0)
                    OR self::replace($word, 'anci', 'ance', 0);
                    break;

                case 'e':
                    self::replace($word, 'izer', 'ize', 0);
                    break;

                case 'g':
                    self::replace($word, 'logi', 'log', 0);
                    break;

                case 'l':
                       self::replace($word, 'entli', 'ent', 0)
                    OR self::replace($word, 'ousli', 'ous', 0)
                    OR self::replace($word, 'alli', 'al', 0)
                    OR self::replace($word, 'bli', 'ble', 0)
                    OR self::replace($word, 'eli', 'e', 0);
                    break;

                case 'o':
                       self::replace($word, 'ization', 'ize', 0)
                    OR self::replace($word, 'ation', 'ate', 0)
                    OR self::replace($word, 'ator', 'ate', 0);
                    break;

                case 's':
                       self::replace($word, 'iveness', 'ive', 0)
                    OR self::replace($word, 'fulness', 'ful', 0)
                    OR self::replace($word, 'ousness', 'ous', 0)
                    OR self::replace($word, 'alism', 'al', 0);
                    break;

                case 't':
                       self::replace($word, 'biliti', 'ble', 0)
                    OR self::replace($word, 'aliti', 'al', 0)
                    OR self::replace($word, 'iviti', 'ive', 0);
                    break;
            }

            return $word;
        }


        /**
        * Step 3
        *
        * @param string $word String to stem
        */
        private static function step3($word)
        {
            switch (substr($word, -2, 1)) {
                case 'a':
                    self::replace($word, 'ical', 'ic', 0);
                    break;

                case 's':
                    self::replace($word, 'ness', '', 0);
                    break;

                case 't':
                       self::replace($word, 'icate', 'ic', 0)
                    OR self::replace($word, 'iciti', 'ic', 0);
                    break;

                case 'u':
                    self::replace($word, 'ful', '', 0);
                    break;

                case 'v':
                    self::replace($word, 'ative', '', 0);
                    break;

                case 'z':
                    self::replace($word, 'alize', 'al', 0);
                    break;
            }

            return $word;
        }


        /**
        * Step 4
        *
        * @param string $word Word to stem
        */
        private static function step4($word)
        {
            switch (substr($word, -2, 1)) {
                case 'a':
                    self::replace($word, 'al', '', 1);
                    break;

                case 'c':
                       self::replace($word, 'ance', '', 1)
                    OR self::replace($word, 'ence', '', 1);
                    break;

                case 'e':
                    self::replace($word, 'er', '', 1);
                    break;

                case 'i':
                    self::replace($word, 'ic', '', 1);
                    break;

                case 'l':
                       self::replace($word, 'able', '', 1)
                    OR self::replace($word, 'ible', '', 1);
                    break;

                case 'n':
                       self::replace($word, 'ant', '', 1)
                    OR self::replace($word, 'ement', '', 1)
                    OR self::replace($word, 'ment', '', 1)
                    OR self::replace($word, 'ent', '', 1);
                    break;

                case 'o':
                    if (substr($word, -4) == 'tion' OR substr($word, -4) == 'sion') {
                       self::replace($word, 'ion', '', 1);
                    } else {
                        self::replace($word, 'ou', '', 1);
                    }
                    break;

                case 's':
                    self::replace($word, 'ism', '', 1);
                    break;

                case 't':
                       self::replace($word, 'ate', '', 1)
                    OR self::replace($word, 'iti', '', 1);
                    break;

                case 'u':
                    self::replace($word, 'ous', '', 1);
                    break;

                case 'v':
                    self::replace($word, 'ive', '', 1);
                    break;

                case 'z':
                    self::replace($word, 'ize', '', 1);
                    break;
            }

            return $word;
        }


        /**
        * Step 5
        *
        * @param string $word Word to stem
        */
        private static function step5($word)
        {
            // Part a
            if (substr($word, -1) == 'e') {
                if (self::m(substr($word, 0, -1)) > 1) {
                    self::replace($word, 'e', '');

                } else if (self::m(substr($word, 0, -1)) == 1) {

                    if (!self::cvc(substr($word, 0, -1))) {
                        self::replace($word, 'e', '');
                    }
                }
            }

            // Part b
            if (self::m($word) > 1 AND self::doubleConsonant($word) AND substr($word, -1) == 'l') {
                $word = substr($word, 0, -1);
            }

            return $word;
        }


        /**
        * Replaces the first string with the second, at the end of the string. If third
        * arg is given, then the preceding string must match that m count at least.
        *
        * @param  string $str   String to check
        * @param  string $check Ending to check for
        * @param  string $repl  Replacement string
        * @param  int    $m     Optional minimum number of m() to meet
        * @return bool          Whether the $check string was at the end
        *                       of the $str string. True does not necessarily mean
        *                       that it was replaced.
        */
        private static function replace(&$str, $check, $repl, $m = null)
        {
            $len = 0 - strlen($check);

            if (substr($str, $len) == $check) {
                $substr = substr($str, 0, $len);
                if (is_null($m) OR self::m($substr) > $m) {
                    $str = $substr . $repl;
                }

                return true;
            }

            return false;
        }


        /**
        * What, you mean it's not obvious from the name?
        *
        * m() measures the number of consonant sequences in $str. if c is
        * a consonant sequence and v a vowel sequence, and <..> indicates arbitrary
        * presence,
        *
        * <c><v>       gives 0
        * <c>vc<v>     gives 1
        * <c>vcvc<v>   gives 2
        * <c>vcvcvc<v> gives 3
        *
        * @param  string $str The string to return the m count for
        * @return int         The m count
        */
        private static function m($str)
        {
            $c = self::$regex_consonant;
            $v = self::$regex_vowel;

            $str = preg_replace("#^$c+#", '', $str);
            $str = preg_replace("#$v+$#", '', $str);

            preg_match_all("#($v+$c+)#", $str, $matches);

            return count($matches[1]);
        }


        /**
        * Returns true/false as to whether the given string contains two
        * of the same consonant next to each other at the end of the string.
        *
        * @param  string $str String to check
        * @return bool        Result
        */
        private static function doubleConsonant($str)
        {
            $c = self::$regex_consonant;

            return preg_match("#$c{2}$#", $str, $matches) AND $matches[0]{0} == $matches[0]{1};
        }


        /**
        * Checks for ending CVC sequence where second C is not W, X or Y
        *
        * @param  string $str String to check
        * @return bool        Result
        */
        private static function cvc($str)
        {
            $c = self::$regex_consonant;
            $v = self::$regex_vowel;

            return     preg_match("#($c$v$c)$#", $str, $matches)
                   AND strlen($matches[1]) == 3
                   AND $matches[1]{2} != 'w'
                   AND $matches[1]{2} != 'x'
                   AND $matches[1]{2} != 'y';
        }
    }







  
  
  
?>