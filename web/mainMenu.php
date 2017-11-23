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
        echo("<a href=\"insert_categories.php\">Insert/remove categories or sub-categories</a>");
       /*
        * b)
        */
        echo("<a href=\"insert_products.php\">Insert/remove products</a>");
       /*
        * c)
        */
        echo("<a href=\"list_reposition_events.php\">List reposition events</a>");
        /*
        * d)
        */
        echo("<a href=\"change_designation.php\">Change designation</a>");
        /*
        * e)
        */
        echo("<a href=\"list_sub-categories.php\">List sub-categories of super-category</a>");

        $db = null;
    }
    catch (PDOException $e)
    {
        echo("<p>ERROR: {$e->getMessage()}</p>");
    }
?>
    </body>
</html>
