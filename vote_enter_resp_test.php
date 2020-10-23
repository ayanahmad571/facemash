<?php
if(!isset($_GET['id'])){die();}

echo $_GET['id'] ;
echo '|
';
echo $_GET['side'];
echo '|
';
echo $_GET['comp'];


?>
<?php
include_once('db_auth.php');
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$sql = "INSERT INTO `lor_votes` (`lor_v_id`, `lor_side`, `lor_stu_id`, `lor_compet`)
VALUES (NULL, '".$_GET['side']."', '".$_GET['id']."', '".$_GET['comp']."')";

if ($conn->query($sql) === TRUE) {
    echo "<br>New record created successfully";
	
					$sql = "UPDATE `lor_users` SET `lor_user_times_choosed`=`lor_user_times_choosed` + 1 WHERE `lor_id`=".$_GET['vote_dbid']."";
				
				if ($conn->query($sql) === TRUE) {
					echo "<BR>Record updated successfully";
				} else {
					echo "Error updating record: " . $conn->error;
				}
} else {
    echo "<br>Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>