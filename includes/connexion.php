<?php
try {
    $conn = new PDO('mysql:dbname=NovelGameJS;host=localhost', 'root', '');
} catch (PDOException $exception) {
    die($exception->getMessage());
}