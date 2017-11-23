<html>
    <body>
<?php
    $command = $_REQUEST['command'];
    $category_name = $_REQUEST['category_name'];
    $test = "add";
    try
    {
        $host = "db.ist.utl.pt";
        $user ="ist425904";
        $password = "12345";
        $dbname = $user;
        $db = new PDO("pgsql:host=$host;dbname=$dbname", $user, $password);
        $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        $db->query("start transaction;");

        if ($command == $test) {
          if (condition) {
            $sql = "INSERT INTO categoria VALUES ('$category_name');"
          } else {
            $sql = "INSERT INTO categoria VALUES ('$category_name');"
            $sql = "INSERT INTO categoria VALUES ('$category_name');"
          }
        } else {
          $sql = "DELETE FROM categoria WHERE categoria_name ='$category_name';"
        }

        echo("<p>$sql</p>");
        $db->query($sql);

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
