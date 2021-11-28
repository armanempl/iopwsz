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
                  <i class="fas fa-unlock"></i>


                  <li><a href="Log.php">Logowanie</a></li>
                  <i class="fas fa-lock"></i>
                  <li><a href="Reg.php">Rejestracja</a></li>
               </ul>

               <ul class="nav">
                  <li><a href="#" class="ks">Książki</a></li>
                  <li><a href="#" class="cz">Czasopisma</a></li>
                  <li><a href="#" class="pdr">Podręczniki</a></li>
                  <li><a href="#" class="art">Artykuły naukowe</a></li>
               </ul>
            </nav>
    <!-- początek zamówienia -->
    <section class="order_main">
    <form action="posredniki/order_ordersum.php" method="POST">
        <section class="order_header"><h2>Zamówienie</h2></section>
        <section class="order_spacer"><h3>Przedmioty znajdujące się w koszyku</h3>
        
        </section>
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
                                <!--<td><?php echo $values["id_ksiazki"]; ?></td> -->
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
        <b>Łączna kwota:  <?php echo $total." zł"; ?></b></section>
        <!-- tu trzeba z koszyka wziąć przedmioty -->
        <section class="order_spacer"><h3>Wysyłka</h3></section>

        <section class="order_ship">
        <b>Adres wysyłki:<br></b>
            <input type="radio" name="Radio" id="Radio" value="same" onchange="show()" required checked>Taki sam 
            <input type="radio" name="Radio" id="Radio" value="different" onchange="show2()" required>Inny<br>
        <div class="order_adres">
        <div class="sh1">
        <?php
        $login = $_SESSION['login'];
        require_once('connect.php');
        $dbc = mysqli_connect(DB_HOST, DB_USER, DB_PASS, DB_DATABASE);
        $query = mysqli_query($dbc, "SELECT `Kraj`, `Miasto`,`Kod`,`Ulica`,`Numer_domu` FROM `konto` WHERE `login` = '$login';");
        while ($r = mysqli_fetch_array($query)){
            echo '<b>Kraj: </b>'. $r[0]. '<br><br>';
            echo '<b>Miasto: </b>'. $r[1]. '<br><br>';
            echo '<b>Kod pocztowy: </b>'. $r[2]. '<br><br>';
            echo '<b>Ulica: </b>'. $r[3]. '<br><br>';
            echo '<b>Numer domu: </b>'. $r[4];
        }
        ?>

        </div>
        
        
        <div class="sh2" style="display:none;">
        <b>Kraj:</b><input type="text" id="kraj" name="kraj"><br><br>
        <b>Miasto:</b><input type="text" id="miasto" name="miasto"><br><br>
        <b>Kod pocztowy:</b> <input type="text" id="kod" name="kod"><br><br>
        <b>Ulica: </b><input type="text" id="ulica" name="ulica"><br><br>
        <b>Numer domu:</b> <input type="text" id="numer_domu" name="numer_domu">
        </div>
        </div>

        <b>Rodzaj przesyłki:<br></b>
        <input type="radio" name="ship" id="ship" value="list" required>List polecony priorytetowy<br>
        <input type="radio" name="ship" id="ship" value="kurier" required>Kurier DeHaEl<br>
        </section>
        <section class="order_spacer"><h3>Płatność</h3></section>

        <section class="order_payment"><b>Sposób płatności:</b><br><br>
        <input type="radio" name="pay" id="pay" value="przelew" checked>Przelew internetowy
        </section>
        <section class="order_submit">
        <input type="submit" value="Potwierdź" style="width: 100px; height: 50px;">
        </section>
    </form>
        <section class="order_footer">
        <p style="text-align: right; padding-bottom: 1%;">Płatności obsługuje: <img src="images/payment_logo.png" style="width: 100px; height: 50px;"></p>
        </section>
    </section>

    <script src="jquery-3.3.1.min.js"></script>
</body>
</html>