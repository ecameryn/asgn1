<?php
    $dsn = 'mysql:host=localhost;dbname=Schedule_DB';
    $username = 'cpsc90_user';
    $password = 'pa55word';

    try {
        $db = new PDO($dsn, $username, $password);
    } catch (PDOException $e) {
        $error_message = $e->getMessage();
        include('../asgn1/database_error.php');
        exit();
    }
?>