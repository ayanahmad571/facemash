<?php 
		$leftrand = rand(28999,52799);
		$rightrand = rand(1,2799);


?>

<?php
$pgf = 'https://stepsys.org/pportal/app/files/images/stu_pics/'.$leftrand.'_8.jpg';
$ptf = 'https://stepsys.org/pportal/app/files/images/stu_pics/'.$rightrand.'_8.jpg';
?>

<?php
#LEFT
$ch = curl_init($pgf);

curl_setopt($ch, CURLOPT_NOBODY, true);
curl_exec($ch);
$retcode = curl_getinfo($ch, CURLINFO_HTTP_CODE);
// $retcode >= 400 -> not found, $retcode = 200, found.
curl_close($ch);

if($retcode <> 200){echo "yes";}

?>
<?php
#RIGHT
$ch = curl_init($ptf);

curl_setopt($ch, CURLOPT_NOBODY, true);
curl_exec($ch);
$retcode = curl_getinfo($ch, CURLINFO_HTTP_CODE);
// $retcode >= 400 -> not found, $retcode = 200, found.
curl_close($ch);

if($retcode === 200){echo "yess";}

?>
