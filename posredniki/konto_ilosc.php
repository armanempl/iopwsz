<?php
require_once('../connect.php');
$id = $_POST['admin_tytul'];
$ilosc_sztuk = $_POST['admin_ilosc'];
echo $tytul. "<br>";
echo $ilosc_sztuk. "<br>";
$dbc = mysqli_connect(DB_HOST, DB_USER, DB_PASS, DB_DATABASE);
mysqli_query($dbc, "UPDATE `asortyment` SET `ilosc_szt` = '$ilosc_sztuk' WHERE `id_ksiazka` = '$id';");
header('Location: ../konto.php');

?>