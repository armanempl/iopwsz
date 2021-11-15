<?php
    session_start();

    if(strlen($_POST['mail']) > 1 && strlen($_POST['pass']) > 1){
        if(strlen($_POST['mail']) < 3 || strlen($_POST['pass']) < 3){
          $_SESSION['error'] = "Dane muszą mieć więcej niż 3 znaki!";
          header('Location: Log.php');
          exit();
        }
        else{
          $mail = htmlentities($_POST['mail'], ENT_QUOTES, "UTF-8");
          $pass = $_POST['pass'];
          
          try{
            $connection = new mysqli("localhost", "root", "", "io");
    
            if($connection-> connect_errno != 0){
              throw new Exception(mysqli_connect_errno());
            }
            else{
              if($query = mysqli_query($connection, "Select * From konto Where mail='$mail'")){
                if($query->num_rows > 0){
                  $row = $query->fetch_assoc();
                  if(password_verify($pass, $row['haslo'])){
                    $_SESSION['czy_zalogowany'] = True;
                    $_SESSION['login'] = $row['login'];

                    $connection->close();
                    header('Location: index_zalogowany.php');
                    exit();
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
          
        }
      }
    else{
        $_SESSION['error']= "Pola login i haslo nie mogą być puste!";
        header('Location: Log.php');
        exit();
    }
    
?>