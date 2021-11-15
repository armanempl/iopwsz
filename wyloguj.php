<?php
session_start();

if(isset($_SESSION['czy_zalogowany']) && $_SESSION['czy_zalogowany'] == True){
  unset($_SESSION['czy_zalogowany']);
  unset($_SESSION['login']);
  header('Location: index.php');
  exit();
}
else{
  $_SESSION['error'] = "Proszę się zalogować!";
  header('Location: index.php');
  exit();
}
?>