<?php 
   session_start();

   if(strlen($_POST['login']) > 0 && strlen($_POST['imie']) > 0 && strlen($_POST['nazw']) > 0 && strlen($_POST['kraj']) > 0 && strlen($_POST['mail']) > 0 && strlen($_POST['haslo']) > 0 && strlen($_POST['haslo2']) > 0 && strlen($_POST['miasto']) > 0 && strlen($_POST['ulica']) > 0 && strlen($_POST['numer']) > 0 && strlen($_POST['kod']) > 0){

    if(strlen($_POST['imie']) > 3 && strlen($_POST['nazw']) > 3 && strlen($_POST['login']) > 3 ){
        if(filter_var($_POST['mail'], FILTER_VALIDATE_EMAIL)){
            if($_POST['haslo'] == $_POST['haslo2']){
                $haslo = password_hash($_POST['haslo'], PASSWORD_BCRYPT);
                try{
                    $connection = new mysqli("localhost", "root", "", "io");
    
                    if($connection-> connect_errno != 0){
                        throw new Exception(mysqli_connect_errno());
                    }
                    else{
                        $login = $_POST['login'];
                        $imie = $_POST['imie'];
                        $nazwisko = $_POST['nazw'];
                        $kraj = $_POST['kraj'];
                        $mail = $_POST['mail'];
                        $miasto = $_POST['miasto'];
                        $ulica = $_POST['ulica'];
                        $numer = $_POST['numer'];
                        $kod = $_POST['kod'];

                        if($query = mysqli_query($connection, "Select * from konto Where login='$login'OR mail='$mail'")){
                            if($query->num_rows == 0){
                                mysqli_query($connection, "Insert Into konto Values (null,'$login','$haslo','Klient',null,'$imie','$nazwisko','$kraj','$miasto','$kod','$ulica','$numer','$mail')");
                                $connection->close();
                                $_SESSION['sukces'] = "Konto zostało utworzone, przejdz do logowania!";
                                header('Location: Reg.php');
                                exit();
                            }
                            else{
                                $_SESSION['error'] = "Konto o podanym loginie lub e-mailu już istnieje!";
                                header('Location: Reg.php');
                                exit();
                            }
                        }
                        else{
                            $_SESSION['error'] = "Błąd bazy danych!";
                            header('Location: Reg.php');
                            exit();
                        }
                    }
                }catch(Exception $e){
                    $_SESSION['error'] = "Błąd bazy danych!";
                    header('Location: Reg.php');
                     exit();
                }
            }
            else{
                $_SESSION['error'] = "Podane hasła nie są jednakowe!";
                header('Location: Reg.php');
                exit();
            }
           
        }
        else{
            $_SESSION['error'] = "Proszę wprowadzić poprawny adres e-mail!";
            header('Location: Reg.php');
            exit();
        }
    }
    else{
        $_SESSION['error'] = "Pola imie, nazwisko i login musi zawierać conajmniej 3 znaki!";
        header('Location: Reg.php');
        exit();
    }
   }
   else{
    $_SESSION['error'] = "Pola nie mogą być puste!";
    header('Location: Reg.php');
    exit();
   }
?>