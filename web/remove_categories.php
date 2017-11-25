<html>
    <body>
    <h3>Categorias</h3>
<?php
    try
    {
        $host = "db.ist.utl.pt";
        $user ="ist425904";
        $password = "12345";
        $dbname = $user;

        $db = new PDO("pgsql:host=$host;dbname=$dbname", $user, $password);
        $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        $sql = "SELECT categoria_name FROM categoria_simples;";

        $result = $db->query($sql);

        echo("<table border=\"0\" cellspacing=\"5\">\n");
        foreach($result as $row)
        {
            echo("<tr>\n");
            echo("<td>{$row['categoria_name']}</td>\n");
            echo("<td><a href=\"insert_simple_Update.php?categoria_simples_name={$row['categoria_name']}\">Remove</a></td>\n");
            echo("</tr>\n");
        }
        echo("</table>\n");

        $sql = "SELECT categoria_name FROM super_categoria;";

        $result = $db->query($sql);

        echo("<table border=\"0\" cellspacing=\"5\">\n");
        foreach($result as $row)
        {
            echo("<tr>\n");
            echo("<td>{$row['categoria_name']}</td>\n");
            echo("<td><a href=\"insert_super_Update.php?super_categoria_name={$row['categoria_name']}\">Remove</a></td>\n");
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
