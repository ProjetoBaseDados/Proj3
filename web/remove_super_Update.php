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

                $sql1 = "SELECT COUNT(sub_categoria_name) FROM constituida WHERE sub_categoria_name = '$categoria_name';";
                $result = $db->query($sql1);
                foreach($result as $row) {
                  $if = $row['count'];
                }
                if ($if > '0') {
                  $result = $db->query("SELECT super_categoria_name from constituida WHERE sub_categoria_name = '$categoria_name';");
                  foreach($result as $row) {
                    $newCat = $row['super_categoria_name'];
                  }
                  $sql = "UPDATE produto SET categoria_name = '$newCat' WHERE categoria_name = '$categoria_name';";
                  $db->query($sql);

                  $sql = "UPDATE constituida SET super_categoria_name = '$newCat' WHERE super_categoria_name = '$categoria_name';";
                  $db->query($sql);

                  $sql = "DELETE FROM constituida WHERE sub_categoria_name ='$categoria_name';";
                  $db->query($sql);

                  $sql = "DELETE FROM super_categoria WHERE categoria_name ='$categoria_name';";
                  $db->query($sql);

                } else {
                  $sql = "UPDATE produto SET categoria_name = 'Outros' WHERE categoria_name = '$categoria_name';";
                  $db->query($sql);

                  $sql = "DELETE FROM constituida WHERE super_categoria_name ='$categoria_name';";
                  $db->query($sql);

                  $sql = "DELETE FROM super_categoria WHERE categoria_name ='$categoria_name';";
                  $db->query($sql);
                }

                /*$sql = "DELETE FROM categoria WHERE categoria_name='$categoria_name';";
                $db->query($sql);*/

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
