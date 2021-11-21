<?php

    session_start();
    if(isset($_SESSION['koszyk'])){
        unset($_SESSION['koszyk']);
    }

    header('Location: koszyk.php');

?>