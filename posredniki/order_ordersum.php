<?php
session_start();
require_once('../connect.php');
$total = 0;
$login = $_SESSION['login'];
echo "Login: ".$login. "<br>";
$typ_adresu = $_POST['Radio'];
$dbc = mysqli_connect(DB_HOST, DB_USER, DB_PASS, DB_DATABASE);
$query = mysqli_query($dbc, "SELECT `Kraj`, `Miasto`,`Kod`,`Ulica`,`Numer_domu` FROM `konto` WHERE `login` = '$login';");
if ($typ_adresu == "same"){
while ($r = mysqli_fetch_array($query)){
    $kraj = $r[0];
    $miasto = $r[1];
    $kod = $r[2];
    $ulica = $r[3];
    $numer_domu = $r[4];
    echo '<b>Kraj: </b>'. $r[0]. '<br><br>';
    echo '<b>Miasto: </b>'. $r[1]. '<br><br>';
    echo '<b>Kod pocztowy: </b>'. $r[2]. '<br><br>';
    echo '<b>Ulica: </b>'. $r[3]. '<br><br>';
    echo '<b>Numer domu: </b>'. $r[4]. '<br>';
}
}
else if ($typ_adresu == "different"){
$kraj = $_POST['kraj'];
$miasto = $_POST['miasto'];
$kod = $_POST['kod'];
$ulica = $_POST['ulica'];
$numer_domu = $_POST['numer_domu'];


echo "1. ". $kraj. "<br>";
echo "2. ". $miasto. "<br>";
echo "3. ". $kod. "<br>";
echo "4. ". $ulica. "<br>";
echo "5. ". $numer_domu. "<br><br>";
}

$ship = $_POST['ship'];
$pay = $_POST['pay'];
if ($ship == "list") {$ship = "List polecony priorytetowy";}
elseif ($ship == "kurier") {$ship = "Kurier DeHaEl";}
$pay = $_POST['pay'];
if ($pay == "przelew") {$pay = "Przelew internetowy";}

$log = mysqli_query($dbc, "SELECT `id_konto`, `login` FROM `konto` WHERE `login` = '$login';");
while ($r = mysqli_fetch_array($log)){
    $id_login = $r[0];
    echo "ID użytkownika: ". $r[0]. "<br>";
    echo "Nazwa użytkownika: ". $r[1]. "<br>";
}

$wypiszmax = mysqli_query($dbc, "SELECT MAX(`id_zamowienie`) FROM `zamowienie`;");
while ($r = mysqli_fetch_array($wypiszmax)){
    $max = $r[0];
    $maxplus = $max + 1;
}
echo "Największe id: ".$max. "<br>";
echo "Następne id: ".$maxplus. "<br>";


foreach($_SESSION["koszyk"] as $keys => $values)
     {
         $id_ksiazki = $values["id_ksiazki"];
         $ilosc = $values["ilosc"];
         $ilosc_query = mysqli_query($dbc, "SELECT `ilosc_odslon` FROM `asortyment` WHERE `id_ksiazka` = '$id_ksiazki';");
         while ($i = mysqli_fetch_array($ilosc_query)){
            $ilosc_stare = $i[0];
            $ilosc_nowe = $ilosc_stare + $ilosc;
            echo $ilosc_stare. "<br>";
            echo $ilosc_nowe. "<br>";
        }
        mysqli_query($dbc, "UPDATE `asortyment` SET `ilosc_odslon` = '$ilosc_nowe' WHERE `id_ksiazka` = '$id_ksiazki';");
        $total = $total + ($values["ilosc"] * $values["cena"]);
         echo "Tytul: ".$values["tytul"]. "<br>";
         echo "Ilość: ".$values["ilosc"]. "<br>";
         echo "ID_ksiazki: ".$values["id_ksiazki"]."<br>";
         echo "Cena: ".$values["cena"]. "<br><br>";
         $v_id= $values["id_ksiazki"];
         $v_ilosc = $values["ilosc"];
        mysqli_query($dbc, "INSERT INTO `zamowienie_ksiazki`(`id_zk`,`id_zamowienie`,`id_ksiazka`,`ilosc_szt`) VALUES ('','$maxplus', '$v_id','$v_ilosc');");
     }
     echo "Razem: ".$total. "<br>";

     echo "<br>Przesyłka: ". $ship. "<br>";
     echo "Płatność: ". $pay. "<br>";

mysqli_query($dbc, "INSERT INTO `zamowienie` VALUES ('$maxplus','$ship','$pay','$id_login','Nowe zamówienie','$total', '$kraj','$miasto','$kod','$ulica','$numer_domu');");
mysqli_query($dbc, "INSERT INTO `historia_zamowienie` VALUES ('$maxplus', '$maxplus', NOW());");
header('Location: ../order_sum.php?id_zamowienia='.$maxplus);
mysqli_close($dbc);
?>

<!--(`id_zamowienie`,`rodzaj_przesylki`,`rodzaj_zaplaty`,`id_klient`,`status_zamowienia`,`cena`)