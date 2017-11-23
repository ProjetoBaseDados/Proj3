<html>
    <body>
    <h3>List reposition of events</h3>
<?php
    $super_category = $_REQUEST['super-category'];
    try
    {
        $host = "db.ist.utl.pt";
        $user ="ist425904";
        $password = "12345";
        $dbname = $user;

        $db = new PDO("pgsql:host=$host;dbname=$dbname", $user, $password);
        $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        $sql = "SELECT sub_categoria_name FROM categoria NATURAL JOIN constituida NATURAL JOIN super_category
        WHERE super_categoria_name = '$super_category';";

        $result = $db->query($sql);

        echo("<table border=\"0\" cellspacing=\"5\">\n");
        foreach($result as $row)
        {
            echo("<tr>\n");
            echo("<td>{$row['sub_categoria_name']}</td>\n");
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
