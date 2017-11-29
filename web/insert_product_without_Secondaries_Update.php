<html>
    <body>
<?php
    $produto_ean = $_REQUEST['produto_ean'];
    $produto_design = $_REQUEST['produto_design'];
    $categoria_name = $_REQUEST['category_name'];
    $fornecedor_nif = $_REQUEST['fornecedor_nif'];
    $fornecedor_name = $_REQUEST['fornecedor_name'];

    try
    {
        $host = "db.ist.utl.pt";
        $user ="ist425904";
        $password = "12345";
        $dbname = $user;
        $db = new PDO("pgsql:host=$host;dbname=$dbname", $user, $password);
        $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        $db->query("start transaction;");

        //Verificar se existe fornecedor primario
        $sql1 = "SELECT COUNT(fornecedor_nif) FROM fornecedor WHERE fornecedor_nif = '$fornecedor_nif';";
        $result = $db->query($sql1);
        foreach($result as $row) {
          $if1 = $row['count'];
        }

        if ($if1 == 0) {
          $sql = "INSERT INTO fornecedor values ('$fornecedor_nif', '$fornecedor_name');";
          $db->query($sql);
        }

        $time = date('Y/m/d'); /*CHANGE TYPE OF DATA*/
        $sql = "INSERT INTO produto values ('$produto_ean', '$produto_design', '$time', '$categoria_name', '$fornecedor_nif');";
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
