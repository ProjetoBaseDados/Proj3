<html>
    <body>
    <h3>Main Menu</h3>
<?php
    try
    {
        $host = "db.ist.utl.pt";
        $user ="ist425904";
        $password = "12345";
        $dbname = $user;

        $db = new PDO("pgsql:host=$host;dbname=$dbname", $user, $password);
        $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

       /*
        * a)
        */
        echo("<a href=\"remove_categories.php\">Remove categories or sub-categories</a>\n");
       /*
        * b)
        */
        echo("<a href=\"insert_products.php\">Insert/remove products</a>\n");
       /*
        * c)
        */
        echo("<a href=\"list_reposition_events.php\">List reposition events</a>\n");
        /*
        * d)
        */
        echo("<a href=\"change_designation.php\">Change designation</a>\n");
        /*
        * e)
        */
        echo("<a href=\"list_sub-categories.php\">List sub-categories of super-category</a>\n");

        $sql = "SELECT * FROM categoria;";

        $result = $db->query($sql);

        echo("<table border=\"0\" cellspacing=\"5\">\n");
        foreach($result as $row)
        {
            echo("<tr>\n");
            echo("<td>{$row['categoria_name']}</td>\n");
            echo("</tr>\n");
        }
        echo("</table>\n");

        $db = null;
    }
    catch (PDOException $e)
    {
        echo("<p>ERROR: {$e->getMessage()}</p>");
    }
?>
    </body>
</html>
