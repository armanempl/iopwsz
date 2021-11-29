<?php
session_start();
require_once('../connect.php');
$login = $_SESSION['login'];
$dbc = mysqli_connect(DB_HOST, DB_USER, DB_PASS, DB_DATABASE);
$haslo = $_POST['new_password'];
$haslo_v = $_POST['new_password_v'];
if ($haslo == $haslo_v) {
    $haslo_encrypt = password_hash($haslo, PASSWORD_BCRYPT);
    $query = mysqli_query($dbc, "UPDATE `konto` SET `haslo` = '$haslo_encrypt' WHERE `login` = '$login';");
    header('Location: ../konto.php?verify=1');
}

elseif ($haslo != $haslo_v) {
    header('Location: ../konto.php?verify=0');
}

mysqli_close($dbc);
?>