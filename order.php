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
    <form action="order_sum.php" method="POST">
        <section class="order_header"><h2>Zamówienie</h2></section>
        <section class="order_spacer"><h3>Przedmioty znajdujące się w koszyku</h3></section>
        <section class="order_zamowienie">Przedmioty<br><b>Łączna kwota:</b></section>
        <!-- tu trzeba z koszyka wziąć przedmioty -->
        <section class="order_spacer"><h3>Wysyłka</h3></section>

        <section class="order_ship">
        <b>Adres wysyłki:<br></b>
            <input type="radio" name="Radio" id="Radio" value="same" onchange="show()" required checked>Taki sam 
            <input type="radio" name="Radio" id="Radio" value="different" onchange="show2()" required>Inny<br>
        <div class="order_adres">
        <div class="sh1"><b>Adres dostawy jest taki sam jak adres podany przy rejestracji konta.</b></div>
        <div class="sh2" style="display:none;">
        <b>Kraj:</b><input type="text" id="kraj" name="kraj" required><br><br>
        <b>Miasto:</b><input type="text" id="miasto" name="miasto" required><br><br>
        <b>Kod pocztowy:</b> <input type="text" id="kod" name="kod" required><br><br>
        <b>Ulica: </b><input type="text" id="ulica" name="ulica" required><br><br>
        <b>Numer domu:</b> <input type="text" id="ulica" name="ulica" required>
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

    <script src="jquery-3.3.1.min.js"><script>
    <script src="js/show_address.js" type="text/javascript"></script>
</body>
</html>