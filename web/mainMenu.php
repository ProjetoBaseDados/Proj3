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
        echo("<p href=\"remove_categories.php\">Remove categories or sub-categories</p>\n");
        echo("<p href=\"insert_categoria.php\">Insert Category</p>\n");
        echo("<p href=\"insert_sub_categoria.php\">Insert Sub-Category</p>\n");
       /*
        * b)
        */
        echo("<p href=\"insert_products.php\">Insert/remove products</p>\n");
       /*
        * c)
        */
        echo("<p href=\"list_reposition_events.php\">List reposition events</p>\n");
        /*
        * d)
        */
        echo("<p href=\"change_designation.php\">Change designation</p>\n");
        /*
        * e)
        */
        echo("<p href=\"list_sub-categories.php\">List sub-categories of super-category</p>\n");

        $db = null;
    }
    catch (PDOException $e)
    {
        echo("<p>ERROR: {$e->getMessage()}</p>");
    }
?>
    </body>
</html>
