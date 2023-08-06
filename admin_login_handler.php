<?php
session_start();

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $username = $_POST['username'];
    $password = $_POST['password'];

    // Проверка логина и пароля
    if ($username === 'admin' && $password === '123') {
        // Успешный вход администратора
        $_SESSION['admin_logged_in'] = true;
        header('Location: admin_panel.php');
        exit;
    } else {
        echo 'Неверное имя пользователя или пароль';
    }
}
?>
