<?php
   session_start();

if(isset($_GET["action"]))
{
	if($_GET["action"] == "delete")
	{
		foreach($_SESSION["koszyk"] as $keys => $values)
		{
			if($values["el_id"] == $_GET["id"])
			{
				unset($_SESSION["koszyk"][$keys]);
				echo '<script>alert("Produkt usunięty z koszyka")</script>';
            header('Location: koszyk.php');
			}
		}
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
                  <li><a href="podr.php" class="pdr">Podręczniki</a></li>
                  <li><a href="art.php" class="art">Artkuły naukowe</a></li>
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
        <div class="table-responsive">
				<table class="table table-bordered">
					<tr>
						<th width="40%">Tytuł</th>
						<th width="10%">Ilość</th>
						<th width="20%">Cena</th>
						<th width="15%">Razem</th>
						<th width="5%">Usuń element</th>
					</tr>
					<?php
					if(!empty($_SESSION["koszyk"]))
					{
						$total = 0;
						foreach($_SESSION["koszyk"] as $keys => $values)
						{
					?>
					<tr>
						<td><?php echo $values["tytul"]; ?></td>
						<td><?php echo $values["ilosc"]; ?></td>
						<td><?php echo $values["cena"]; ?> zł</td>
						<td><?php echo number_format($values["ilosc"] * $values["cena"], 2);?> zł</td>
						<td><a href="koszyk.php?action=delete&id=<?php echo $values["el_id"]; ?>"><span>Usuń</span></a></td>
					</tr>
					<?php
							$total = $total + ($values["ilosc"] * $values["cena"]);
						}
					?>
					<tr>
						<td colspan="3" align="right">Razem</td>
						<td align="right"><?php echo number_format($total, 2); ?> zł</td>
						<td></td>
					</tr>
					<?php
					}
               
					?>
						
				</table>
			</div>
         <div>
            <form action="usun_koszyk.php">
               <input type="submit" value="Usuń koszyk" class="none">
            </form>
         </div>
         <div>
            <form action="order.php">
               <input type="submit" value="Przejdź do podsumowania" class="none">
            </form>
         </div>    
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
