<html>
    <body>
        <h3>Remover categoria <?=$_REQUEST['categoria_name']?>: Concluida</h3>
        <?php
        $categoria_name = $_REQUEST['categoria_name'];
            try
            {
                $host = "db.ist.utl.pt";
                $user ="ist425904";
                $password = "12345";
                $dbname = $user;

                $db = new PDO("pgsql:host=$host;dbname=$dbname", $user, $password);
                $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

                $db->query("start transaction;");

                $sql = "DELETE FROM categoria WHERE categoria_name='$categoria_name';";

                $db->query($sql);

                echo("<p>$sql</p>");

                $db->query("commit;");

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
