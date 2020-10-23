<?php
ini_set('error_reporting', 0);
ini_set('display_errors', 0);
?>
<?php session_start(); ?>
<?php if(isset($_GET['logout'])){session_destroy();header('Location: index.php');} ?>
<div class="upper_cccc">
<?php
if(isset($_GET['vtrsid']) and isset($_GET['comp'])){
			$url = "vote_enter_resp_test.php";

			// Get cURL resource
			$curl = curl_init();
			// Set some options - we are passing in a useragent too here
			curl_setopt_array($curl, array(
				CURLOPT_RETURNTRANSFER => 1,
				CURLOPT_URL => 'http://localhost/facemash/vote_enter_resp_test.php?side=right&id='.$_GET["vtrsid"].'&comp='.$_GET["comp"].'&vote_dbid='.$_SESSION['ID'],
				CURLOPT_USERAGENT => 'Codular Sample cURL Request'
			));
			// Send the request & save response to $resp
			$resp = curl_exec($curl);
			// Close request to clear up some resources
			curl_close($curl);
			echo $resp;
	
	} 
?>
<?php
if(isset($_GET['vtlsid']) and isset($_GET['comp'])){
			$url = "vote_enter_resp_test.php";

			// Get cURL resource
			$curl = curl_init();
			// Set some options - we are passing in a useragent too here
			curl_setopt_array($curl, array(
				CURLOPT_RETURNTRANSFER => 1,
				CURLOPT_URL => 'http://localhost/facemash/vote_enter_resp_test.php?side=left&id='.$_GET["vtlsid"].'&comp='.$_GET["comp"].'&vote_dbid='.$_SESSION['ID'],
				CURLOPT_USERAGENT => 'Codular Sample cURL Request'
			));
			// Send the request & save response to $resp
			$resp = curl_exec($curl);
			// Close request to clear up some resources
			curl_close($curl);
			echo $resp;
	
	} 
?></div>
<?php 
		$leftrand = rand(1,2911);
		$rightrand = rand(1,2911);

?>
<?php
$pgf = 'https://stepsys.org/pportal/app/files/images/stu_pics/'.$leftrand.'_8.jpg';
$ptf = 'https://stepsys.org/pportal/app/files/images/stu_pics/'.$rightrand.'_8.jpg';
?>
=<?php
#LEFT
$ch = curl_init($pgf);

curl_setopt($ch, CURLOPT_NOBODY, true);
curl_exec($ch);
$retcode = curl_getinfo($ch, CURLINFO_HTTP_CODE);
// $retcode >= 400 -> not found, $retcode = 200, found.
print curl_error($ch);
curl_close($ch);
if($retcode > 300){header('Location:?refrsh');}

?>
<?php
#RIGHT
$ch = curl_init($ptf);

curl_setopt($ch, CURLOPT_NOBODY, true);
curl_exec($ch);
$retcode = curl_getinfo($ch, CURLINFO_HTTP_CODE);
// $retcode >= 400 -> not found, $retcode = 200, found.
print curl_error($ch);
curl_close($ch);
if($retcode > 300){header('Location:?refrsh');}
?>

<?php
#for 1st or left = one

include_once('db_auth.php');
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

#won 1
$sqlwonone = "SELECT COUNT(`lor_stu_id`) AS WONO FROM `lor_votes` WHERE `lor_stu_id`=".$leftrand.";";
$resultwonone = $conn->query($sqlwonone);

#lost 1
$sqllossone = "SELECT COUNT(`lor_compet`) AS LOSTO FROM `lor_votes` WHERE `lor_compet`=".$leftrand."";
$resultlossone = $conn->query($sqllossone);


if ($resultwonone->num_rows > 0) {
    // output data of each row
    $rowwonone = $resultwonone->fetch_assoc();
    $wonone = $rowwonone["WONO"];
} else {
    $wonone = "0 results";
}


if ($resultlossone->num_rows > 0) {
    // output data of each row
    $rowlossone = $resultlossone->fetch_assoc();
    $lossone = $rowlossone["LOSTO"];
} else {
    $lossone = "0 results";
}
$conn->close();
?> 
<?php
#for 2nd or right = two

include_once('db_auth.php');
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

#won 2
$sqlwontwo = "SELECT COUNT(`lor_stu_id`) AS WONT FROM `lor_votes` WHERE `lor_stu_id`=".$rightrand.";";
$resultwontwo = $conn->query($sqlwontwo);

#lost 2
$sqllosstwo = "SELECT COUNT(`lor_compet`) AS LOSTT FROM `lor_votes` WHERE `lor_compet`=".$rightrand."";
$resultlosstwo = $conn->query($sqllosstwo);


if ($resultwontwo->num_rows > 0) {
    // output data of each row
    $rowwontwo = $resultwontwo->fetch_assoc();
    $wontwo = $rowwontwo["WONT"];
} else {
    $wontwo = "0 results";
}


if ($resultlosstwo->num_rows > 0) {
    // output data of each row
    $rowlosstwo = $resultlosstwo->fetch_assoc();
    $losstwo = $rowlosstwo["LOSTT"];
} else {
    $losstwo = "0 results";
}
$conn->close();
?> 
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Welcome to LoR</title>

</head>

<body>
<style>
.img_left {
	max-height:300px;
	max-width:300px;
	display:inline;
	margin-right:200px;
}

.bw_vs {
	max-height:300px;
	max-width:300px;
	display:inline;
	position:absolute;
	margin-top:100px;
	font-family:Baskerville, "Palatino Linotype", Palatino, "Century Schoolbook L", "Times New Roman", serif;
	font-size:24px;
}

.upper_cccc {
	background-color:#CC0003;
	color:#FFFFFF;
}

.img_right {
	max-height:300px;
	max-width:300px;
	display:inline;
	margin-left:200px;
}

header {
	width:100%;
	height:100px;
	background-color:#DDDDDD;

}
body {
	margin:0;
	font-family:"Lucida Grande", "Lucida Sans Unicode", "Lucida Sans", "DejaVu Sans", Verdana, sans-serif;
}
.caption {
	width:100px;
	max-height:300px;
	max-width:300px;
	display:inline;
}
.caption_left {
	margin-left:300px;
	float:left;

}

.caption_right {
	margin-right:400px;
	float:right;
}

.bw_vs_caption_md {
	margin:10px;
}

.logout {
	width:100px;
	height:100px;
	float:right;
	font-family:Impact, Haettenschweiler, "Franklin Gothic Bold", "Arial Black", sans-serif;
	font-size:30px;
}
<?php /*
footer {
	width:100%;
	height:100px;
	background-color:#DDDDDD;

}
.foo-butts {
	width:100px;
	height:100px;
	float:right;
	font-family:Impact, Haettenschweiler, "Franklin Gothic Bold", "Arial Black", sans-serif;
	font-size:24px;
	margin-left:70px;
} */ ?>
</style>
<script src="jquery.min.js"></script>
    <header>
    	<div class="logout"><a href="?logout"><button class="logout">Logout</button></a></div>
    	
    </header>	
    <div align="center">

        <div align="left" class="img_left">
        	<a on href="?vtlsid=<?php echo $leftrand;?>&comp=<?php echo $rightrand;?>" ><img src="https://stepsys.org/pportal/app/files/images/stu_pics/<?php echo $leftrand; ?>_8.jpg" /></a>
            <script>
				$(document).keydown(function(e) {
					switch(e.which) {
						case 37: // left
							window.location = '?vtlsid=<?php echo $leftrand;?>&comp=<?php echo $rightrand;?>' ;
						break;
				
						case 39: // right
							window.location = '?vtrsid=<?php echo $rightrand; ?>&comp=<?php echo $leftrand;?>' ;
						break;
						
						case 116:
							event.preventDefault();
						break;
			$(window).bind('beforeunload', function(e) {

								if (1)
								{
							
									event.preventDefault();
								}
							});
							
													default: return; // exit this handler for other keys
												}
												e.preventDefault(); // prevent the default action (scroll / move caret)
											});
			</script>
        </div>
        
        <div align="center" class="bw_vs">
        	<h1>vs</h1>
        </div>
        
        <div align="right" class="img_right">
        	<a href='?vtrsid=<?php echo $rightrand; ?>&comp=<?php echo $leftrand;?>'><img  src="https://stepsys.org/pportal/app/files/images/stu_pics/<?php echo $rightrand; ?>_8.jpg" /></a>
        </div>
	</div>
    
    <div align="center">
    		
            <div align="left" class="caption_left caption">
        	<p>Won:<?php echo $wonone; ?></p>
            <p>Loss:<?php echo $lossone; ?></p>
        </div>
        
        <div align="center" class="bw_vs_caption_md">
        	<h1> </h1>
        </div>
        
        <div align="right" class="caption_right caption">
        	<p>Won:<?php echo $wontwo; ?></p>
            <p>Loss:<?php echo $losstwo; ?></p>
        </div>
    </div><br>
<br>
<br>
<br>

    
<?php /*	<footer>
    <div>
        <button class="foo-butts">FB M</button>
    	<button class="foo-butts">FB F</button>
    	<button class="foo-butts">Celebs F</button>
    	<button class="foo-butts">Celebs M</button>
    	<button class="foo-butts">SBS</button>
        </div>
</footer> */ ?>
</body>
</html>
