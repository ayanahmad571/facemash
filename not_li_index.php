<?php session_start(); ?>
<?php
if(isset($_POST['login_uid'])){
include_once('db_auth.php');

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$sql = "SELECT * FROM `lor_users` WHERE `lor_user_username`='".$_POST['login_uid']."' AND `lor_user_pass`='".md5($_POST['login_pwd'])."'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
	$row = $result->fetch_assoc();
		session_regenerate_id();
			$_SESSION['ENTER'] = 'YES';
			$_SESSION['USERNAME'] = 'ADMIN';
			$_SESSION['NAME'] = 'AYAN';
			$_SESSION['GENDER'] = $row['lor_user_gender'] ; 
			$_SESSION['ID'] = $row['lor_id']; 
			$_SESSION['SBS'] = $row['lor_user_sbs_part']; 
			$_SESSION['FNAME'] = $row['lor_user_fname']; 
			$_SESSION['LNAME'] = $row['lor_user_lname']; 
			$_SESSION['TIMESCHOOSED'] = $row['lor_user_times_choosed']; 
		session_write_close();
		header('Location: index.php');
		
} else {
    echo "0 results";
}
$conn->close();
}
?>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Welcome to LeftORight</title>
<style>
.container_all{
	align-content:center;
	align-items:center;
	text-align:center;
	width:500px;
	background-color:#E8E8E8;
	font-family:"Gill Sans", "Gill Sans MT", "Myriad Pro", "DejaVu Sans Condensed", Helvetica, Arial, sans-serif;
	font-size:21px;
	border-radius:2px;
	margin-left:30%;
	margin-right:30%;
	
}
.sub_container{
	width:auto;
	
}
.form_container{
	padding:10px;
}
.form_all{}
.in_f_us_pw_lg_cont{padding:20px;}
.username_container{}
.username_inpt,.password_input{
	font-family:"Lucida Grande", "Lucida Sans Unicode", "Lucida Sans", "DejaVu Sans", Verdana, sans-serif;
	font-size:20px;
	margin-left:20px;
	text-align:inherit;
	border-radius:5px;
	border:thin #000 1px;
}
.login_bttn_container{}
.login_button{
	margin:10px;
	border:0;
	background-color:#1200FF;
	color:#FFFFFF;
	border-radius:3px;
	font-size:21px;
	font-family:"Gill Sans", "Gill Sans MT", "Myriad Pro", "DejaVu Sans Condensed", Helvetica, Arial, sans-serif;
}
</style>
</head>

<body>
	<header>
    </header>
    
    <div align="center" class="container_all">
    	<div class="sub_container">
        	<div class="form_container">
            	<form class="form_all" action="<?php $_SERVER['PHP_SELF'] ?>" method="post">
                	<div class="in_f_us_pw_lg_cont">
                    	<div class="username_container">
                        	Username:<input class="username_inpt" name="login_uid" type="text" placeholder="Username" />
                        </div>
                        <div class="password_container">
                        	Password:<input name="login_pwd" class="password_input" type="password" placeholder="Password" />
                        </div>
                        <div class="login_bttn_container">
                        	<input class="login_button" type="submit" value="login" />
                        </div>
                	</div>
                </form>
            </div>
        </div>
        
        <div>
        </div>
    </div>
    
    <footer>
    </footer>
</body>
</html>


