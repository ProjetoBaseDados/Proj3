<html>
    <body>
        <h3>Remover Produto <?=$_REQUEST['produto_ean']?>: Concluida</h3>
        <?php
            $produto_ean = $_REQUEST['produto_ean'];
            try
            {
                $host = "db.ist.utl.pt";
                $user ="ist425904";
                $password = "12345";
                $dbname = $user;

                $db = new PDO("pgsql:host=$host;dbname=$dbname", $user, $password);
                $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

                $db->query("start transaction;");

                $sql = "SELECT fornecedor_nif FROM fornecedor_sec WHERE produto_ean = '$produto_ean';";
                $result = $db->query($sql);

                $sql = "DELETE FROM fornecedor_sec WHERE produto_ean = '$produto_ean';";
                $db->query($sql);

                foreach($result as $row) {
                  $forn_nif = $row['fornecedor_nif'];

                  $sql1 = "SELECT COUNT(produto_ean) FROM produto WHERE fornecedor_nif = '$forn_nif';";
                  $if1 = $db->query($sql1);

                  $sql2 = "SELECT COUNT(produto_ean) FROM fornecedor_sec WHERE fornecedor_nif = '$forn_nif';";
                  $if2 = $db->query($sql2);

                  if ($if1 <= 0 or $if2 <= 1) {
                    $sql = "DELETE FROM fornecedor WHERE fornecedor_nif ='$forn_nif';";
                    $db->query($sql);
                  }
                }

                $result = $db->query("SELECT fornecedor_nif from produto WHERE produto_ean = '$produto_ean';");
                foreach($result as $row) {
                  $fornecedor_nif = $row['fornecedor_nif'];
                }

                $sql = "DELETE FROM produto WHERE produto_ean ='$produto_ean';";
                $db->query($sql);

                $sql1 = "SELECT COUNT(produto_ean) FROM produto WHERE fornecedor_nif = '$fornecedor_nif';";
                $if1 = $db->query($sql1);

                $sql2 = "SELECT COUNT(produto_ean) FROM fornecedor_sec WHERE fornecedor_nif = '$fornecedor_nif';";
                $if2 = $db->query($sql2);

                if ($if1 <= 1 or $if2 <= 0) {
                  $sql = "DELETE FROM fornecedor WHERE fornecedor_nif ='$fornecedor_nif';";
                  $db->query($sql);
                }

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
