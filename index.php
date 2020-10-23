<?php session_start(); ?>
<?php 
if(isset($_SESSION['ENTER'])){
	
	require('yes_li_index.php');
	
}
if(!isset($_SESSION['ENTER'])){
	session_destroy();
	require('not_li_index.php');

} 
	 ?>