<?php
try {
    $conn = new PDO('mysql:dbname=NovelGameJS;host=localhost', 'root', '');
} catch (PDOException $exception) {
    die($exception->getMessage());
}

function errorHandler(PDOStatement $stmt) : void
{
    if ($stmt->errorCode() !== '00000') {
        var_dump($stmt->errorInfo());
        die();
    }
}