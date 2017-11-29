<html>
    <body>
    <h3>Produtos</h3>
<?php
    try
    {
        $host = "db.ist.utl.pt";
        $user ="ist425904";
        $password = "12345";
        $dbname = $user;

        $db = new PDO("pgsql:host=$host;dbname=$dbname", $user, $password);
        $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        $sql = "SELECT produto_ean, produto_design FROM produto;";

        $result = $db->query($sql);

        echo("<a href=\"insert_product_with_Secondaries.php\">Insert new product with secondary providers</a>");
        echo("<p></p>");
        echo("<a href=\"insert_product_without_Secondaries.php\">Insert new product without secondary providers</a>");
        echo("<p></p>");

        echo("<table border=\"0\" cellspacing=\"5\">\n");
        echo("<tr>\n");
        echo("<td>Produto_EAN</td>\n");
        echo("<td>Produto_Design</td>\n");
        echo("<tr>\n");
        foreach($result as $row)
        {
            echo("<tr>\n");
            echo("<td>{$row['produto_ean']}</td>\n");
            echo("<td>{$row['produto_design']}</td>\n");
            echo("<td><a href=\"remove_product_Update.php?produto_ean={$row['produto_ean']}\">Remove</a></td>\n");
            echo("</tr>\n");
        }
        echo("</table>\n");

        $db = null;
    }
    catch (PDOException $e)
    {
        echo("<p>ERROR: {$e->getMessage()}</p>");
    }
?>
    </body>
</html>
