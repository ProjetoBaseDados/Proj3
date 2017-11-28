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

                //Verificar se existe fornecedores secundarios do produto
                $sql = "SELECT fornecedor_nif FROM fornecedor_sec WHERE produto_ean = '$produto_ean';";
                $result = $db->query($sql);

                foreach($result as $row) {
                  $forn_nif = $row['fornecedor_nif'];

                  $sql1 = "SELECT COUNT(produto_ean) FROM produto WHERE fornecedor_nif = '$forn_nif';";
                  $result = $db->query($sql1);
                  foreach($result as $row) {
                    $if1 = $row['count'];
                  }

                  $sql2 = "SELECT COUNT(produto_ean) FROM fornecedor_sec WHERE fornecedor_nif = '$forn_nif';";
                  $result = $db->query($sql2);
                  foreach($result as $row) {
                    $if2 = $row['count'];
                  }

                  if ($if1 == 0 and $if2 == 1) {
                    $sql = "DELETE FROM fornecedor_sec WHERE fornecedor_nif ='$forn_nif';";
                    $db->query($sql);

                    $sql = "DELETE FROM fornecedor WHERE fornecedor_nif ='$forn_nif';";
                    $db->query($sql);
                  }
                }

                $sql = "DELETE FROM fornecedor_sec WHERE produto_ean = '$produto_ean';";
                $db->query($sql);


                //Verificar se o fornecedor primario so fornece aquele produto
                $result = $db->query("SELECT fornecedor_nif from produto WHERE produto_ean = '$produto_ean';");
                foreach($result as $row) {
                  $fornecedor_nif = $row['fornecedor_nif'];
                }

                $sql1 = "SELECT COUNT(produto_ean) FROM produto WHERE fornecedor_nif = '$fornecedor_nif';";
                $result = $db->query($sql1);
                foreach($result as $row) {
                  $if1 = $row['count'];
                }

                $sql2 = "SELECT COUNT(produto_ean) FROM fornecedor_sec WHERE fornecedor_nif = '$fornecedor_nif';";
                $result = $db->query($sql2);
                foreach($result as $row) {
                  $if2 = $row['count'];
                }

                $sql = "DELETE FROM produto WHERE produto_ean ='$produto_ean';";
                $db->query($sql);

                if ($if1 == 1 or $if2 == 0) {
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
