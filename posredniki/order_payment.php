<?php
session_start();
require_once('../connect.php');
$login = $_SESSION['login'];
$dbc = mysqli_connect(DB_HOST, DB_USER, DB_PASS, DB_DATABASE);


$wypiszmax = mysqli_query($dbc, "SELECT MAX(`id_zamowienie`) FROM `zamowienie`;");
while ($r = mysqli_fetch_array($wypiszmax)){
    $max = $r[0];
    $maxplus = $max + 1;
}

foreach($_SESSION["koszyk"] as $keys => $values)
     {
        $total = $total + ($values["ilosc"] * $values["cena"]);
       
     }

header('Location: ../payment.php?id='.$max.'&cena='.$total);
mysqli_close($dbc);
?>