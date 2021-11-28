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
      <link rel="stylesheet" href="style/style.css" />
   </head>
   <body>
      <div class="wrapper">
         <header>
            <nav>
               <ul class="LogReg">
                  <i class="fas fa-unlock"></i>


                  <li><a href="Log.php">Logowanie</a></li>
                  <i class="fas fa-lock"></i>
                  <li><a href="Reg.php">Rejestracja</a></li>
               </ul>

               <ul class="nav">
                  <li><a href="ksiazki.php" class="ks">Książki</a></li>
                  <li><a href="czasop.php" class="cz">Czasopisma</a></li>
                  <li><a href="szkolne.php" class="skl">Literatura szkolna</a></li>
               </ul>
            </nav>
            <div class="icons">
               <div>
                  <form action="search.php" method="POST">
                  <input type="text" placeholder="Wyszukaj książkę" id="search" name="search" style="margin-right: 15%;">
                  <input type="submit" style="width: 100px; height: 40px; margin-left: 18%;" value="Szukaj">
                  </form>
               </div>

               <i class="fas fa-book">iBOOK</i>
            </div>
         </header>
         <main>

            <section class="about">
               <h1>Poznaj Magię Czytania</h1>
               <h2>Daj się wciągnąc</h2>
            </section>

<!--   -->
            <section class="counter">
            <?php
            require_once('connect.php');
            $dbc = mysqli_connect(DB_HOST, DB_USER, DB_PASS, DB_DATABASE); 
            $query = mysqli_query($dbc, "SELECT `id_ksiazka`,`tytul`,`autor`, `cena`, `ilosc_odslon`, `img` FROM `asortyment` ORDER BY `ilosc_odslon` DESC LIMIT 5;");
               while ($r = mysqli_fetch_array($query)){
                  echo '<div class="count_el">';
                  echo '<img src='. $r[5]. ' style="max-width: 100px;"><br>';
                  echo $r[1]. "<br>";
                  echo $r[2]. "<br>";
                  echo "Cena: ". $r[3]. " zł <br>";
                  echo "Zakupiono ". $r[4]. " razy";
                  echo "</div>";
               }
            mysqli_close($dbc);
            ?>
            </section>


            <section id="ks" class="ksiazki">
               <h1>Książki</h1>
            </section>

            <section id="cz" class="czasopisma">
               <h1>Czasopisma</h1>
            </section>

            <section id="pdr" class="podreczniki">
               <h1>Podręczniki</h1>
            </section>

            <section id="art" class="artykuly">
               <h1>Artykuły naukowe</h1>
            </section>
         </main>

         <footer>
            <div>Kontakt:</div>
            <div>Telefon: 234 523 523</div>
            <div>Email: i@Book.pl</div>
            <div>Godziny otwarcia: poniedziałek - piątek 8:00-16:00</div>
         </footer>
      </div>
      <script
         src="https://kit.fontawesome.com/f83ad09c82.js"
         crossorigin="anonymous"
      ></script>
      <script src="jquery-3.3.1.min.js"></script>
      <script src="script.js"></script>
   </body>
</html>