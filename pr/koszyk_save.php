<?php

    session_start();
    $a = $_POST['tytul'];
    $tab = array();
    array_push($tab, $a);
    $_SESSION['tab'] = $tab;

    header('Location: ksiazki.php');
?>