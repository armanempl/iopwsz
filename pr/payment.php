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
        <form action="payment_success.php" method="POST">
        Zamówienie: <br>
        ID zamówienia: <br>
        Kwota zapłaty: <br>
        Kliknij tutaj, aby opłacić zamówienie: <br><br>
        <input type="submit" value="Zapłać">
        </form> 
    </section>
    </main>
</body>
</html>