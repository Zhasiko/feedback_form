<?php
// Подключение к базе данных 
$connection = mysqli_connect('localhost', 'root', '', 'reviews');

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Получение данных из формы
    $reviewId = $_POST['review_id'];
    $editedMessage = $_POST['edited_message'];
    $action = $_POST['action'];

    // Обработка действия "Принять и сохранить изменения" или "Отклонить"
    if ($action === 'Принять и сохранить изменения') {
        $status = 'accepted';
    } elseif ($action === 'Отклонить') {
        $status = 'rejected';
    } else {
        // Invalid action, handle the error
        echo 'Ошибка: Неверное действие.';
        exit;
    }

    // Получение оригинального сообщения из базы данных
    $query = "SELECT message FROM reviews WHERE id=$reviewId";
    $result = mysqli_query($connection, $query);
    $row = mysqli_fetch_assoc($result);
    $originalMessage = $row['message'];

    // Проверка, изменилось ли сообщение
    if ($editedMessage !== $originalMessage) {
        // Обновление данных в базе данных и добавление отметки об изменении
        $editedMessage = mysqli_real_escape_string($connection, $editedMessage);
        $query = "UPDATE reviews 
                  SET modified_by_admin='1', message='$editedMessage', status='$status'
                  WHERE id=$reviewId";
        mysqli_query($connection, $query);

        // Вывод сообщения об изменении администратором
        echo 'Отзыв изменен администратором.';

    } else {

        $query = "UPDATE reviews 
                  SET status='$status'
                  WHERE id=$reviewId";
        mysqli_query($connection, $query);
    }

    // Перенаправление на страницу с отзывами или другое действие по завершении
    header('Location: admin_panel.php');
    exit;
}
