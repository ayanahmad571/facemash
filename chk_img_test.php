<?php
$ptf = 'https://stepsys.org/pportal/app/files/images/stu_pics/'.$_GET['uid'].'_8.jpg';
$r = rand(1,2000);
$pgf = 'https://stepsys.org/pportal/app/files/images/stu_pics/'.$r.'_8.jpg';
?>

<?php
$ch = curl_init($pgf);

curl_setopt($ch, CURLOPT_NOBODY, true);
curl_exec($ch);
$retcode = curl_getinfo($ch, CURLINFO_HTTP_CODE);
// $retcode >= 400 -> not found, $retcode = 200, found.
curl_close($ch);


if($retcode >= 400){header('Location:?refrsh');}


echo $retcode;
echo '<br>
';
echo $r;
echo '<br>
';

echo '<img src="'.$pgf.'" />';

?>