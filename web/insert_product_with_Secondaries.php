<html>
    <body>
        <h2>Insert new product without secondary providers</h2>
        <form action="insert_product_without_Secondaries_Update.php" method="post">
            <p>Product EAN: <input type="text" name="product_ean" pattern="(?=.13\d).{13}"/></p>
            <p>Product Design: <input type="text" name="product_design"/></p>
            <p>Categoria name: <input type="text" name="category_name"/></p>
            <p>Fornecedor Primário NIF: <input type="text" name="fornecedor_nif" pattern="(?=.9\d).{9}"/></p>
            <p>Fornecedor Primario name: <input type="text" name="fornecedor_name"/></p>
            <p>Fornecedor Secundário NIF: <input type="text" name="fornecedor_sec_nif" pattern="(?=.9\d).{9}"/></p>
            <p>Fornecedor Secundário name: <input type="text" name="fornecedor_sec_name"/></p>
            <p><input type="submit" value="Submit"/></p>
        </form>
    </body>
</html>