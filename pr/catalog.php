<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- <link rel="stylesheet" href="style/style.css" type="text/css"> -->
    <link rel="stylesheet" href="style/catalog_style.css" type="text/css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Shippori+Antique+B1&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nunito:wght@300&family=Ubuntu:ital,wght@1,700&display=swap" rel="stylesheet">    
<title>Katalog książek</title>
</head>
<body>
<section class="container">
    <header>Katalog książek</header>
    <section class="content">
    <?php
    require_once('connect.php');
    $dbc = mysqli_connect(DB_HOST, DB_USER, DB_PASS, DB_DATABASE);
    $query = mysqli_query($dbc, "SELECT * FROM `asortyment`;");
    while ($r = mysqli_fetch_array($query)){
        echo '<section class="item">';

        echo '<section class="img">';
        echo '<img src='. $r[7]. ' class="src">';
        echo '</section>';

        echo '<section class="opis">';
        echo '<b>Tytuł: </b>'. $r[1]. ', <br>
             <b>Autor: </b>'. $r[2]. ', <br>
             <b>Wydanie: </b>'. $r[4]. ', <br>
             <b>Wydawnictwo: </b>'. $r[5]. ', <br>
             <b>Gatunek: </b>'. $r[6]. ',<br>
             <b>Zakupiono: </b>'. $r[8]. ' razy, <br>
             <b>Ilość sztuk: </b>'.$r[9];
        echo '</section>';

        echo '<section class="order">';
        echo '<div class="prize">'. $r[3]. ',-</div> <button><h4>Zamów</h4></button>';
        echo '</section>';
        
        echo '</section>'; //zamknięcie sekcji item
    }
    mysqli_close($dbc);
    ?>
    </section>
</section>


</body>
</html>