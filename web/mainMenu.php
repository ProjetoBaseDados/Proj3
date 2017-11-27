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
        echo("<a href=\"remove_categories.php\">Remove categories or sub-categories</a>");
        echo("<p> </p>");
        echo("<a href=\"insert_categoria.php\">Insert Category</a>\n");
        echo("<p> </p>");
        echo("<a href=\"insert_sub_categoria.php\">Insert Sub-Category</a>\n");
        echo("<p> </p>");
       /*
        * b)
        */
        echo("<a href=\"insert_products.php\">Insert/remove products</a>\n");
        echo("<p> </p>");
       /*
        * c)
        */
        echo("<a href=\"list_reposition_events.php\">List reposition events</a>\n");
        echo("<p> </p>");
        /*
        * d)
        */
        echo("<a href=\"change_designation.php\">Change designation</a>\n");
        echo("<p> </p>");
        /*
        * e)
        */
        echo("<a href=\"list_sub-categories.php\">List sub-categories of super-category</a>\n");

        $db = null;
    }
    catch (PDOException $e)
    {
        echo("<p>ERROR: {$e->getMessage()}</p>");
    }
?>
    </body>
</html>
