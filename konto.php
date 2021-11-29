<?php
   session_start();
   
?>
<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="UTF-8" />
      <meta http-equiv="X-UA-Compatible" content="IE=edge" />
      <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      <title>Strona główna - Księgarnia iBook</title>
      <link rel="stylesheet" href="style/konto_style.css" />
      <script type="text/javascript">
        function show_dane(){
        document.getElementsByClassName('dane')[0].style.display = 'block';
        document.getElementsByClassName('haslo')[0].style.display = 'none';
        document.getElementsByClassName('historia')[0].style.display = 'none';
        document.getElementsByClassName('ilosc')[0].style.display = 'none';
        document.getElementsByClassName('addbook')[0].style.display = 'none';
        document.getElementsByClassName('addadmin')[0].style.display = 'none';
    }
    function show_haslo(){
        document.getElementsByClassName('dane')[0].style.display = 'none';
        document.getElementsByClassName('haslo')[0].style.display = 'block';
        document.getElementsByClassName('historia')[0].style.display = 'none';
        document.getElementsByClassName('ilosc')[0].style.display = 'none';
        document.getElementsByClassName('addbook')[0].style.display = 'none';
        document.getElementsByClassName('addadmin')[0].style.display = 'none';
    }
    function show_historia(){
        document.getElementsByClassName('dane')[0].style.display = 'none';
        document.getElementsByClassName('haslo')[0].style.display = 'none';
        document.getElementsByClassName('historia')[0].style.display = 'block';
        document.getElementsByClassName('ilosc')[0].style.display = 'none';
        document.getElementsByClassName('addbook')[0].style.display = 'none';
        document.getElementsByClassName('addadmin')[0].style.display = 'none';
    }
    function show_ilosc(){
        document.getElementsByClassName('dane')[0].style.display = 'none';
        document.getElementsByClassName('haslo')[0].style.display = 'none';
        document.getElementsByClassName('historia')[0].style.display = 'none';
        document.getElementsByClassName('ilosc')[0].style.display = 'block';
        document.getElementsByClassName('addbook')[0].style.display = 'none';
        document.getElementsByClassName('addadmin')[0].style.display = 'none';
    }
    function show_addbook(){
        document.getElementsByClassName('dane')[0].style.display = 'none';
        document.getElementsByClassName('haslo')[0].style.display = 'none';
        document.getElementsByClassName('historia')[0].style.display = 'none';
        document.getElementsByClassName('ilosc')[0].style.display = 'none';
        document.getElementsByClassName('addbook')[0].style.display = 'block';
        document.getElementsByClassName('addadmin')[0].style.display = 'none';
    }
    function show_addadmin(){
        document.getElementsByClassName('dane')[0].style.display = 'none';
        document.getElementsByClassName('haslo')[0].style.display = 'none';
        document.getElementsByClassName('historia')[0].style.display = 'none';
        document.getElementsByClassName('ilosc')[0].style.display = 'none';
        document.getElementsByClassName('addbook')[0].style.display = 'none';
        document.getElementsByClassName('addadmin')[0].style.display = 'block';
    }



      </script>
   </head>
   <body>
      <div class="wrapper">
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
        <section class="konto_main">
            <nav class="konto_nav">
                <section class="konto_dane" onclick="show_dane()">
                    Dane konta
                </section>
                <section class="konto_haslo" onclick="show_haslo()">
                    Zmiana hasła
                </section>
                <section class="konto_historia" onclick="show_historia()">
                    Historia zamówień
                </section>
                <section class="konto_admin_ilosc" onclick="show_ilosc()">
                    Książki - ilość
                </section>
                <section class="konto_admin_addbook" onclick="show_addbook()">
                    Dodaj książkę
                </section>
                <section class="konto_admin_addadmin" onclick="show_addadmin()">
                    Dodaj admina
                </section>
            </nav>

    <?php
        $login = $_SESSION['login'];
        require_once('connect.php');
        $dbc = mysqli_connect(DB_HOST, DB_USER, DB_PASS, DB_DATABASE);
        $query_dane = mysqli_query($dbc, "SELECT * FROM `konto` WHERE `login` = '$login';");
        echo '<section class="konto_content">';
        echo '<div class="dane" style="display: none;">';
        echo '<h2><b>Dane konta</b></h2><br>';
        echo '<h3><b>Informacje o koncie</b></h3>';
        while ($r = mysqli_fetch_array($query_dane)){
            echo '<b>Login użytkownika: </b>'. $r[1]. '<br>';
            echo '<b>Adres e-mail użytkownika: </b>'. $r[12]. '<br>';
            echo '<b>Poziom uprawnień: </b>'. $r[3]. '<br>';
            echo '<b>Ostatnie logowanie: </b>'. $r[4]. '<br>';
            echo '<h3><b>Dane do wysyłki</b></h3>';
            echo '<b>Imię i nazwisko: </b>'. $r[5].' '. $r[6]. '<br>';
            echo '<b>Kraj wysyłki: </b>'. $r[7]. '<br>';
            echo '<b>Miasto: </b>'. $r[8]. '<br>';
            echo '<b>Ulica: </b>'. $r[10]. '<br>';
            echo '<b>Numer domu: </b>'. $r[11]. '<br>';
            echo '<b>Kod pocztowy: </b>'. $r[9]. '<br>';

  
        }
        echo '</div>';
        echo '<div class="haslo" style="display: none;"><h2><b>Zmiana hasła</b></h2><br>';
        echo '<form action="posredniki/konto_password.php" method="POST">';
        echo '<h3><b>Nowe hasło:</b></h3> ';
        echo '<input type="password" id="new_password" name="new_password"><br>';
        echo '<h3><b>Potwierdź nowe hasło:</b></h3> ';
        echo '<input type="password" id="new_password_v" name="new_password_v"><br><br>';
        echo '<input type="submit" value="Zmień hasło">';
        echo '</form>';
        echo '</div>';
        echo '<div class="historia" style="display: none;"><h2><b>Historia zamówień</b></h2><br>';

        $query_who = mysqli_query ($dbc, "SELECT `id_konto` FROM `konto` WHERE `login` = '$login';");
        while ($who = mysqli_fetch_array($query_who)){
            $id_login = $who[0];
        }
        $query_historia = mysqli_query($dbc, "SELECT zamowienie.id_zamowienie, historia_zamowienie.data FROM zamowienie, historia_zamowienie WHERE zamowienie.id_zamowienie = historia_zamowienie.id_h_zamowienie AND zamowienie.id_klient = '$id_login';");
        $query_ksiazki = mysqli_query($dbc, "SELECT ");
        while ($h = mysqli_fetch_array($query_historia)){
            echo '<a href="order_sum.php?id_zamowienia='.$h[0]. '>Zamówienie numer: <b>'. $h[0]. '</b> o dacie <b>'. $h[1]. '</b><br></a>';
            

        }
        echo '</div>';
        echo '<div class="ilosc" style="display: none;"><h2><b>Dodaj ilość</b></h2><br>';
        $query_ilosc = mysqli_query($dbc, "SELECT `id_ksiazka`, `tytul` FROM `asortyment`;");
        echo '<form action="posredniki/konto_ilosc.php" method="POST">';
        echo 'Wybierz książkę: ';
        echo '<select id="admin_tytul" name="admin_tytul">';
        while ($il = mysqli_fetch_array($query_ilosc)){
            echo '<option  value="'.$il[0].'">'. $il[1]. '</option>';
        }
        echo '</select>';
        echo '<br>Ilość: ';
        echo '<input type="text id="admin_ilosc" name="admin_ilosc"><br><input type="submit" value="Wyślij">';
        echo '</form>';
        echo '</div>';

        echo '<div class="addbook" style="display: none;"><h2><b>Dodaj książkę</b></h2><br>';
        echo '<form action="posredniki/konto_addbook.php" method="POST">';
        echo 'Podaj tytuł książki: <input type="text" id="addbook_tytul" name="addbook_tytul"><br>';
        echo 'Podaj autora książki: <input type="text" id="addbook_autor" name="addbook_autor"><br>';
        echo 'Podaj cenę książki: <input type="text" id="addbook_cena" name="addbook_cena"><br>';
        echo 'Podaj rok wydania książki: <input type="text" id="addbook_rok" name="addbook_rok"><br>';
        echo 'Podaj wydawnictwo książki: <input type="text" id="addbook_wydawnictwo"  name="addbook_wydawnictwo"><br>';
        echo 'Podaj gatunek książki: ';
        echo '<select id="addbook_gatunek" name="addbook_gatunek">
            <option value="ksiazka">Książka</option>
            <option value="czasopismo">Czasopismo</option>
            <option value="szkolne">Szkolne</option>
        </select>';
        
        echo '<br>Podaj adres obrazka książki: <input type="text" id="addbook_img" name="addbook_img"><br>';
        echo 'Podaj ilość sztuk książki: <input type="text" id="addbook_ilosc_sztuk" name="addbook_ilosc_sztuk"><br>';
        
        echo '<br><input type="submit">';

        echo "</form>";
        echo '</div>';

        echo '<div class="addadmin" style="display: none;"><h2><b>Dodaj administratora</b></h2><br>';

        echo '</div>';

        echo '</section>';
        ?>
        </section>

      </div>
      <script
         src="https://kit.fontawesome.com/f83ad09c82.js"
         crossorigin="anonymous"
      ></script>
      <script src="jquery-3.3.1.min.js"></script>
      <script src="script.js"></script>
   </body>
</html>