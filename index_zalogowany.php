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
      <link rel="stylesheet" href="style/style.css" />
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
                  <li><a href="#" class="ks">Książki</a></li>
                  <li><a href="#" class="cz">Czasopisma</a></li>
                  <li><a href="#" class="pdr">Podręczniki</a></li>
                  <li><a href="#" class="art">Artkuły naukowe</a></li>
               </ul>
            </nav>
            <div class="icons">
               <div>
                  <input type="text" placeholder="wyszukaj książkę" />
                  <i class="fas fa-search"></i>
               </div>

               <i class="fas fa-book">iBOOK</i>
            </div>
         </header>
         <main>

            <section class="about">
               <h1>Poznaj Magię Czytania</h1>
               <h2>Daj się wciągnąc</h2>
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
