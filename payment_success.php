<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style/payment_style.css" type="text/css">
    <title>Płatności DejPan - podsumowanie płatności</title>
</head>
<body>
    <main class="str">
    <header>
    <div class="title"><h1>Podsumowanie zamówienia</h1></div>
    <div class="logo"><img src="images/payment_logo.png"></div>
    </header>
    <section class="content">
        <?php
        session_start();
        require_once('connect.php');
        $login = $_SESSION['login'];
        $id=  $_GET['id'];
        $dbc = mysqli_connect(DB_HOST, DB_USER, DB_PASS, DB_DATABASE);
        $query = mysqli_query($dbc, "UPDATE `zamowienie` SET `status_zamowienia` = 'Zaksięgowano' WHERE `zamowienie`.`id_zamowienie` = '$id';");
        echo '<script type="text/javascript">
        function timer() {
        var text1 = "Realizacja płatności zakończona sukcesem, przekierowanie na stronę zamówienia...";
        document.getElementById("text").innerHTML = text1;
        }
        setTimeout(timer,3000);
        </script>';
        echo '<div id="text">Proszę czekać...</div>';
        header('Refresh: 6; URL=order_sum.php?id_zamowienia='.$id); //jak będzie strona zamówienia, to tu będzie dodany get z wartością opłacony żeby tam się zmieniło z Do zapłacenia na Opłacony
        ?>
    </section>

    </main>
</body>
</html>