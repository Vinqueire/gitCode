<?php
    $wynik ="";
    $polaczenie = mysqli_connect('localhost','root','','wynajem');

    if  ($polaczenie)
    {
        $zapytanie="SELECT id, nazwa, cena FROM POKOJE";
        $answer= mysqli_query($polaczenie, $zapytanie);

        while ($rec = mysqli_fetch_row($answer) )
        {
            $wynik .= "<tr>
            <td>$rec[0]</td> 
            <td>$rec[1]</td> 
            <td>$rec[2]</td>
            </tr>";
        }

    }
    else
    {
        $wynik ="Nie ma poalczenia";
    }

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styl.css">
    <title>Pokoje</title>
</head>
<body>
    <section id="baner1">
        <h2>WYNAJEM POKOI</h2>
    </section>

    <section id="menu1">
        <a href="index.html">POKOJE</a>
    </section>
    
    <section id="menu2">
        <a href="cennik.php">CENNIK</a>
    </section>
    
    <section id="menu3">
        <a href="kalkulator.html">KALKULATOR</a>
    </section>
    
    <section id="baner2">

    </section>
    
    <section id="lewy">

    </section>

    <section id="srodkowy">
    <h1>Cennik</h1>
    <div>
    <table id="yes">
    <?=$wynik;?>
    </table>
    </div>    
    </section>

    <section id="prawy">

    </section>
    
    <footer>
        <p>Stronę opracował: Jourvence</p>
    </footer>
    
</body>
</html>