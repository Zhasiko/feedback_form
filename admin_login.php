<!DOCTYPE html>
<html>
<head>
    <title>Вход для администратора</title>
</head>
<body>
    <h1>Вход для администратора</h1>
    <form action="admin_login_handler.php" method="post">
        <label for="username">Имя пользователя:</label>
        <input type="text" name="username" required><br>

        <label for="password">Пароль:</label>
        <input type="password" name="password" required><br>

        <input type="submit" value="Войти">
    </form>
</body>
</html>
