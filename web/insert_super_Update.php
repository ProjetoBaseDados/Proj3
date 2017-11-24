<html>
    <body>
        <h3>Remover categoria <?=$_REQUEST['super_categoria_name']?>: Concluida</h3>
        <?php
        $categoria_name = $_REQUEST['super_categoria_name'];
            try
            {
                $host = "db.ist.utl.pt";
                $user ="ist425904";
                $password = "12345";
                $dbname = $user;

                $db = new PDO("pgsql:host=$host;dbname=$dbname", $user, $password);
                $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

                $db->query("start transaction;");

                $sql = "DELETE FROM constituida WHERE super_categoria_name ='$categoria_name';";
                $db->query($sql);
                $sql = "UPDATE constituida SET  = 'Outros' WHERE categoria_name = '$categoria_name';";
                $db->query($sql);
                $sql = "DELETE FROM super_categoria WHERE super_categoria_name ='$categoria_name';";
                $db->query($sql);

                $sql1 = "SELECT COUNT(sub_categoria_name) FROM constituida WHERE sub_categoria_name = '$categoria_name';";
                $if = $db->query($sql1);

                if ($if > 0) {
                  
                } else {
                  $sql = "UPDATE produto SET produto_categoria_name = 'Outros' WHERE categoria_name = '$categoria_name';";
                }

                $sql = "UPDATE produto SET produto_categoria_name = $categoria_name WHERE categoria_name = '$categoria_name';";

                /*UPDATE produto SET produto_categoria_name = 'Outros' WHERE categoria_name = '$categoria_name';";*/

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
