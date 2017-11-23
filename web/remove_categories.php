<html>
    <body>
        <h3>Remove categories or sub-categories</h3>
        <form action="insert_categories_Update.php" method="post">
            <p>Category name: <input type="text" name="category_name"/></p>
            <p><input type="hidden" name="command" value="remove"/></p>
            <p><input type="submit" value="Remove"/></p>
        </form>
    </body>
</html>
