<html>
    <body>
<?php
    $categoria_name = $_REQUEST['category_name'];
    $super_name = $_REQUEST['super_name'];
    try
    {
        $host = "db.ist.utl.pt";
        $user ="ist425904";
        $password = "12345";
        $dbname = $user;
        $db = new PDO("pgsql:host=$host;dbname=$dbname", $user, $password);
        $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        $db->query("start transaction;");

        $sql1 = "SELECT COUNT(categoria_name) FROM categoria_simples WHERE categoria_name = '$super_name';";
        $result = $db->query($sql1);
        foreach($result as $row) {
          $if = $row['count'];
        }
        if ($if > '0') {
          $sql = "DELETE FROM categoria_simples WHERE categoria_name ='$super_name';";
          $db->query($sql);

          $sql = "INSERT INTO super_categoria values ('$super_name');";
          $db->query($sql);
        }

        $sql = "INSERT INTO categoria values ('$categoria_name');";
        $db->query($sql);

        $sql = "INSERT INTO categoria_simples values ('$categoria_name');";
        $db->query($sql);

        $sql = "INSERT INTO constituida values ('$super_name', '$categoria_name');";
        $db->query($sql);

        echo("<p>$sql</p>");

        $db->query("commit;");

        echo("<a href=\"mainMenu.php\">Go back to Main Menu</a>");

        $db = null;
    }
    catch (PDOException $e)
    {
        $db->query("rollback;");
        echo("<p>ERROR: {$e->getMessage()}</p>");
    }
?>
    </body>
</html>
