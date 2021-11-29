<?php
require_once('../connect.php');
$dbc = mysqli_connect(DB_HOST, DB_USER, DB_PASS, DB_DATABASE);
$tytul = $_POST['addbook_tytul'];
$autor = $_POST['addbook_autor'];
$cena = $_POST['addbook_cena'];
$rok = $_POST['addbook_rok'];
$wydawnictwo = $_POST['addbook_wydawnictwo'];
$gatunek = $_POST['addbook_gatunek'];
$img = $_POST['addbook_img'];
$sztuki = $_POST['addbook_ilosc_sztuk'];

echo $tytul. " ". $autor. " ". $cena. " ". $rok. " ". $wydawnictwo. " ". $gatunek. " ".$img. " ". $sztuki;


mysqli_query($dbc, "INSERT INTO `asortyment` VALUES(0,'$tytul','$autor','$cena','$rok','$wydawnictwo','$gatunek','$img','1','$sztuki');");
header('Location: ../konto.php');
?>