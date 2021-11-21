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
               >Formularz logowania
            </div>
            <form action="login.php" method="post" class="Log">
               <span>Email: </span><input type="text" name="mail" placeholder="E-mail" />
               <span>Hasło: </span><input type="password" name="pass" placeholder="Hasło" />
               <button>zaloguj</button>
            </form>
            <?php
               if(isset($_SESSION['error'])){
                  echo '<span style="color: red;">'.$_SESSION['error'].'</span>';
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
