<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style/order_style.css" type="text/css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Shippori+Antique+B1&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nunito:wght@300&family=Ubuntu:ital,wght@1,700&display=swap" rel="stylesheet">
<script type="text/javascript">
    function show(){
        document.getElementsByClassName('sh1')[0].style.display = 'block';
        document.getElementsByClassName('sh2')[0].style.display = 'none';
    }
    function show2() {
        document.getElementsByClassName('sh1')[0].style.display = 'none';
        document.getElementsByClassName('sh2')[0].style.display = 'block';
    }
</script>
    <title>Zamówienie</title>
</head>
<body>

<header>
<nav>
               <ul class="LogReg">
                  
                  <li><a href="konto.php">Konto</a></li>
                  
                  <li><a href="koszyk.php">Koszyk</a></li>
                  
                  <li><a href="wyloguj.php">Wyloguj</a></li>
               </ul>

               <ul class="nav">
               <li><a href="ksiazki.php" class="ks">Książki</a></li>
                  <li><a href="czasop.php" class="cz">Czasopisma</a></li>
                  <li><a href="szkolne.php" class="skl">Literatura szkolna</a></li>
               </ul>
            </nav>
    <!-- początek zamówienia -->
    <section class="order_main">
    <form action="posredniki/order_payment.php" method="POST">
        <section class="order_header"><h2>Zamówienie</h2></section>
        <section class="order_spacer"><h3>Przedmioty znajdujące się w koszyku</h3></section>
        <section class="order_zamowienie">
        <table class="table table-bordered">
					<tr>
						<th width="70%">Tytuł</th>
						<th width="15%">Ilość</th>
						<th width="15%">Razem</th>
					</tr>
        <?php
            session_start();
			if(!empty($_SESSION["koszyk"]))
				{
					$total = 0;
					foreach($_SESSION["koszyk"] as $keys => $values)
					    {
                            
                            $total = $total + ($values["ilosc"] * $values["cena"]);
                            ?>
                            
                            <tr>
						        <td><?php echo $values["tytul"]; ?></td>
						        <td><?php echo $values["ilosc"]; ?></td>
						        <td><?php echo number_format($values["ilosc"] * $values["cena"], 2);?> zł</td>
					            </tr>
                            
                            <?php
                            
                        }
                }
		?>
        </table>
        </br></br>
        <b>Łączna kwota: <?php echo $total." zł"; ?></b></section>
        <!-- tu trzeba z koszyka wziąć przedmioty -->
        <section class="order_spacer"><h3>Wysyłka</h3></section>
        <section class="order_ship">
        <b>Adres wysyłki: <br><br></b>
        <?php
        $login = $_SESSION['login'];
        $id_zamowienia = $_GET['id_zamowienia'];
        require_once('connect.php');
        $dbc = mysqli_connect(DB_HOST, DB_USER, DB_PASS, DB_DATABASE);
        $query = mysqli_query($dbc,"SELECT * FROM `zamowienie` WHERE `id_zamowienie` = '$id_zamowienia';");
        while ($r = mysqli_fetch_array($query)) {
        $ship = $r[1];
        $pay = $r[2];
        $status = $r[4];
        echo '<b>Kraj: </b>'. $r[6]. '<br>';
        echo '<b>Miasto: </b>'. $r[7]. '<br>';
        echo '<b>Kod pocztowy: </b>'. $r[8]. '<br>';
        echo '<b>Ulica: </b>'. $r[9]. '<br>';
        echo '<b>Numer domu: </b>'. $r[10]. '<br>'; 
        }
        

        
        
        echo '<br>';
        echo '<b>Rodzaj przesyłki: </b>';
        echo $ship;
        echo '</section>';
        echo '<section class="order_spacer"><h3>Płatność</h3></section>';

        echo '<section class="order_payment"><b>Sposób płatności: </b>';
        echo $pay;
        echo '</section>';

        echo '<section class="order_spacer"><h3>Status zamówienia: '. $status. '</h3>';
        echo '</section>';
        echo '<section class="order_submit">';
        if ($status == "Zaksięgowano") {
        echo '<b style="color: white;"><h3>Zamówienie pomyślnie opłacone</h3></b>';
        }
        elseif ($status == "Nowe zamówienie"){

        echo '<b style="color: white;"><h3>Aby opłacić zamówienie, przejdź do strony płatności:</h3><br></b>';
        echo '<input type="submit" value="Potwierdź" style="width: 100px; height: 50px;">';

    }
    echo '</section>';
        ?>
        </form>
    </section>

    <script src="jquery-3.3.1.min.js"><script>
    <script src="js/show_address.js" type="text/javascript"></script>
</body>
</html>