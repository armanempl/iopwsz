<?php
   session_start();
   if(isset($_POST["dodaj_do_koszyka"]))
   {
      if(isset($_SESSION["koszyk"]))
      {
         $item_array_id = array_column($_SESSION["koszyk"], "el_id");
         if(!in_array($_GET["id"], $item_array_id))
         {
            $count = count($_SESSION["koszyk"]);
            $item_array = array(
               'el_id'			=>	$_GET["id"],
               'tytul'			=>	$_POST["tytul"],
               'cena'		   =>	$_POST["cena"],
               'ilosc'	      =>	$_POST["ilosc"],
               'id_ksiazki'   => $_POST['id_ksiazki']
            );
            $_SESSION["koszyk"][$count] = $item_array;
         }
         else
         {
            echo '<script>alert("Produkt znajduje się w koszyku")</script>';
         }
      }
      else
      {
         $item_array = array(
            'el_id'	=>	$_GET["id"],
            'tytul'		=>	$_POST["tytul"],
            'cena'		=>	$_POST["cena"],
            'ilosc'	   =>	$_POST["ilosc"],
            'id_ksiazki'   => $_POST['id_ksiazki']
         );
         $_SESSION["koszyk"][0] = $item_array;
         echo '<script>alert("Dodano do koszyka")</script>';
      }
   }
   
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
               <li><a href="ksiazki.php" class="ks">Książki</a></li>
                  <li><a href="czasop.php" class="cz">Czasopisma</a></li>
                  <li><a href="szkolne.php" class="skl">Literatura szkolna</a></li>
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
            <section class="counter">
            
            <?php 
               
               try{
                  require_once('connect.php');
                  $connection = mysqli_connect(DB_HOST, DB_USER, DB_PASS, DB_DATABASE); 
                  if($connection-> connect_errno != 0){
                    throw new Exception(mysqli_connect_errno());
                  }
                  else{
                    if($query = mysqli_query($connection, "Select * From asortyment")){
                      if($query->num_rows > 0){
                        $row = $query->fetch_assoc();
                        $ile = $query->num_rows;
                        for($i = 1 ; $i <= $ile ; $i++){
                           if($query2 = mysqli_query($connection, "Select * From asortyment where id_ksiazka = '$i' AND gatunek='szkolne'")){
                              if($query2->num_rows > 0){
                                $id_ksiazki = $i;
                                $row = $query2->fetch_assoc();
                                $tytul = $row['tytul'];
                                $autor = $row['autor'];
                                $cena = $row['cena'];
                                $rok_wydania = $row['rok_wydania'];
                                $wydawnictwo = $row['wydawnictwo'];
                                $gatunek = $row['gatunek'];
                                $zdjecie = $row['img'];
                                $stan = $row['ilosc_odslon'];
                                echo '<div class="count_el">';
                                echo '<img src='. $zdjecie. ' style="max-width: 100px;"><br>';
                                echo $tytul. "<br>";
                                echo $autor. "<br>";
                                echo "Cena: ". $cena. " zł <br>";
                                echo "Zakupiono ". $stan. " razy";
                                echo "
                                    <form id='form' action='ksiazki.php?action=add&id=$id_ksiazki' method='POST'>
                                       <div>
						                     <input type='hidden' name='tytul' value='$tytul' />
                                       <input type='hidden' name='cena' value='$cena' />
                                       <input type='hidden' name='id_ksiazki' value='$id_ksiazki' />
                                       Ilość: <input type='number' name='ilosc' class='el_num' min='1' value='1'/>
                                       <button type='submit' class='wyslij' name='dodaj_do_koszyka'>Dodaj do koszyka</button>
                                       </div>
                                    </form>
                                   
                                 </div>
                                 <style>
                                    .imgelement{
                                       width:75%;
                                       height: 50%;
                                    }
                                    .elementy{
                                       display: flex;
                                       padding: 25px;
                                       margin-top:450px;
                                    }
                                    .element{
                                       padding: 25px;
                                       width: 20%;
                                       border: 1px black solid;
                                       margin: 5px;
                                    }
                                    .dodaj{
                                       color:black;
                                    }
                                    .wyslij{
                                       width: 80%;
                                       background-color: lightgrey;
                                       color:green;
                                       font-size:20px;
                                       border:none;
                                       margin: 10px;
                                       padding:30px;
                                   }
                                   .wyslij:hover{
                                       color: blue;
                                       background-color: lightgreen;
                                       opacity: 40;
                                       border-bottom: 1px solid darkgreen;
                                       cursor: pointer;
                                    } 
                                    .el_num{
                                       all: unset;
                                       background-color: lightblue;
                                    }
                                 </style>
                                ";
                              }
                            }
                            else{
                              $_SESSION['error']= "Blad bazy danych!";
                              header('Location: Log.php');
                              exit();
                            }
                        }
                      }
                    }
                    else{
                      $_SESSION['error']= "Blad bazy danych!";
                      header('Location: Log.php');
                      exit();
                    }
                  }
                }
                catch(Exception $e){
                  $_SESSION['error']= "Blad bazy danych!";
                  header('Location: Log.php');
                  exit();
                }
               ?>
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
