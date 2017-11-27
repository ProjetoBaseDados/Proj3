<html>
    <body>
    <h3>List reposition of events</h3>
<?php
    $product = $_REQUEST['product'];
    try
    {
        $host = "db.ist.utl.pt";
        $user ="ist425904";
        $password = "12345";
        $dbname = $user;

        $db = new PDO("pgsql:host=$host;dbname=$dbname", $user, $password);
        $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        $sql = "SELECT operador, instante, reposicao_unidades FROM produto
        NATURAL JOIN planograma NATURAL JOIN reposicao NATURAL JOIN evento_reposicao
        WHERE produto_ean = '$product';";

        $result = $db->query($sql);

        echo("<table border=\"0\" cellspacing=\"5\">\n");
        foreach($result as $row)
        {
            echo("<tr>\n");
            echo("<td>{$row['operador']}</td>\n");
            echo("<td>{$row['instante']}</td>\n");
            echo("<td>{$row['reposicao_unidades']}</td>\n");
            echo("</tr>\n");
        }
        echo("</table>\n");

        echo("<a href=\"mainMenu.php\">Go back to Main Menu</a>");

        $db = null;
    }
    catch (PDOException $e)
    {
        echo("<p>ERROR: {$e->getMessage()}</p>");
    }
?>
    </body>
</html>
