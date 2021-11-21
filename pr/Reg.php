<?php
  session_start();
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link rel="stylesheet" href="style/styleLogReg.css" />
  </head>
  <body>
    <div class="wrapper">
      <div class="Log">
        <div>
          <a href="index.php"><i class="fas fa-arrow-circle-left"></i></a
          >Formularz rejestracji
        </div>
        <form action="register.php" method="post">
          <span>Login: </span><input type="text" name="login"/>
          <span>Imię: </span><input type="text" name="imie"/> 
          <span>Nazwisko: </span><input type="text" name="nazw" /> 
          <span>Emai: </span><input type="text" name="mail" />
          <span>Hasło: </span><input type="password" name="haslo"/> 
          <span>Powtórz hasło: </span><input type="password" name="haslo2" />
          <h2>Adres dostaw: </h2>
          <span>Kraj: </span>
          <select name="kraj" id="">
            <option value="Albania">Albania</option>
            <option value="Andora">Andora</option>
            <option value="Austria">Austria</option>
            <option value="Belgia">Belgia</option>
            <option value="Białoruś">Białoruś</option>
            <option value="Bośnia i Hercegowina">Bośnia i Hercegowina</option>
            <option value="Bułgaria">Bułgaria</option>
            <option value="Chorwacja">Chorwacja</option>
            <option value="Czarnogóra">Czarnogóra</option>
            <option value="Czechy">Czechy</option>
            <option value="Dania">Dania</option>
            <option value="Estonia">Estonia</option>
            <option value="Finlandia">Finlandia</option>
            <option value="Francja">Francja</option>
            <option value="Grecja">Grecja</option>
            <option value="Hiszpania">Hiszpania</option>
            <option value="Holandia">Holandia</option>
            <option value="Irlandia">Irlandia</option>
            <option value="Islandia">Islandia</option>
            <option value="Kazachstan">Kazachstan</option>
            <option value="Liechtenstein">Liechtenstein</option>
            <option value="Litwa">Litwa</option>
            <option value="Luksemburg">Luksemburg</option>
            <option value="Łotwa">Łotwa</option>
            <option value="Macedonia Północna">Macedonia Północna</option>
            <option value="Malta">Malta</option>
            <option value="Mołdawia">Mołdawia</option>
            <option value="Monako">Monako</option>
            <option value="Niemcy">Niemcy</option>
            <option value="Norwegia">Norwegia</option>
            <option value="Polska">Polska</option>
            <option value="Portugalia">Portugalia</option>
            <option value="Rosja">Rosja</option>
            <option value="Rumunia">Rumunia</option>
            <option value="San Marino">San Marino</option>
            <option value="Serbia">Serbia</option>
            <option value="Słowacja">Słowacja</option>
            <option value="Słowenia">Słowenia</option>
            <option value="Szwajcaria">Szwajcaria</option>
            <option value="Szwecja">Szwecja</option>
            <option value="Turcja">Turcja</option>
            <option value="Ukraina">Ukraina</option>
            <option value="Watykan">Watykan</option>
            <option value="Węgry">Węgry</option>
            <option value="Wielka Brytania">Wielka Brytania</option>
            <option value="Włochy">Włochy</option>
          </select>
          <span>Miasto: </span><input type="text" name="miasto" /> 
          <span>Kod pocztowy: </span><input type="text" name="kod" pattern="^[0-9]{2}-[0-9]{3}$"/>
          <span>Ulica: </span><input type="text" name="ulica" />
          <span>Numer domu:: </span><input type="text" name="numer" />
          
          <button>zarejestruj się</button>
        </form>
        <?php 
          if(isset($_SESSION['sukces'])){
            echo '<span style= "color: green;">'.$_SESSION['sukces'].'</span>';
            unset($_SESSION['sukces']);
          }
          if(isset($_SESSION['error'])){
            echo '<span style= "color: red;">'.$_SESSION['error'].'</span>';
            unset($_SESSION['error']);
        }
        ?>
      </div>
    </div>
    <script
      src="https://kit.fontawesome.com/f83ad09c82.js"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
