<?php
// Подключение к базе данных
$connection = mysqli_connect('localhost', 'root', '', 'reviews');

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Получение данных из формы
    $name = $_POST['name'];
    $email = $_POST['email'];
    $message = $_POST['message'];
    $date_added = date('Y-m-d H:i:s');

    // Простая валидация
    if (empty($name) || empty($email) || empty($message)) {
        $response = array('status' => 'error', 'message' => 'Поля "Имя", "E-mail" и "Текст сообщения" должны быть заполнены.');
        echo json_encode($response);
        exit;
    }

    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        $response = array('status' => 'error', 'message' => 'Некорректный адрес электронной почты.');
        echo json_encode($response);
        exit;
    }

    // Проверка наличия прикрепленного изображения
    if (isset($_FILES['image']) && $_FILES['image']['error'] === 0) {
        $image = $_FILES['image'];

        // Проверка размера и формата изображения
        if ($image['size'] > 1048576) { // 1 MB в байтах
            $response = array('status' => 'error', 'message' => 'Изображение должно быть не более 1 MB.');
            echo json_encode($response);
            exit;
        }

        $allowedFormats = ['image/jpeg', 'image/png', 'image/gif'];
        if (!in_array($image['type'], $allowedFormats)) {
            $response = array('status' => 'error', 'message' => 'Недопустимый формат изображения. Допустимые форматы: JPG, PNG, GIF.');
            echo json_encode($response);
            exit;
        }

        // Переместите файл из временной директории в желаемое местоположение на сервере
        $imagePath = 'img/' . $image['name'];
        move_uploaded_file($image['tmp_name'], $imagePath);
    } else {
        $imagePath = null;
    }

    // Добавление данных в базу данных
    $query = "INSERT INTO reviews (name, email, message, image_path, date_added) 
          VALUES ('$name', '$email', '$message', '$imagePath', '$date_added')";

    if (mysqli_query($connection, $query)) {
        $response = array(
            'status' => 'success',
            'review' => array(
                'name' => $name,
                'email' => $email,
                'message' => $message,
                'image_path' => $imagePath
            )
        );
        echo json_encode($response);
    } else {
        $response = array('status' => 'error', 'message' => 'Ошибка при добавлении отзыва: ' . mysqli_error($connection));
        echo json_encode($response);
    }
}
?>
