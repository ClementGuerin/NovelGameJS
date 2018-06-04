<?php
require_once "connexion.php";
$sql = "SELECT 
  `id`, 
  `message`, 
  `reply1`,
  `reply2`,
  `reply3`
FROM
  `stories`
WHERE 
  `id` = :id
;";
$stmt = $conn->prepare($sql);
$stmt->bindValue(':id', $_POST['story']);
$stmt->execute();
$row = $stmt->fetch(PDO::FETCH_ASSOC);


$idStory = $row["id"];
$messageStory = utf8_encode($row["message"]);
$reply1 = $row["reply1"];
$reply2 = $row["reply2"];
$reply3 = $row["reply3"];

$sql = "SELECT 
  `id`, 
  `message`, 
  `story`
FROM
  `replies`
WHERE 
  `id` = :id
;";
$stmt = $conn->prepare($sql);
$stmt->bindValue(':id', $reply1);
$stmt->execute();
$row = $stmt->fetch(PDO::FETCH_ASSOC);

$button1_id = $row["id"];
$button1_message = $row["message"];
$button1_story = $row["story"];

$sql = "SELECT 
  `id`, 
  `message`, 
  `story`
FROM
  `replies`
WHERE 
  `id` = :id
;";
$stmt = $conn->prepare($sql);
$stmt->bindValue(':id', $reply2);
$stmt->execute();
$row = $stmt->fetch(PDO::FETCH_ASSOC);

$button2_id = $row["id"];
$button2_message = $row["message"];
$button2_story = $row["story"];

$sql = "SELECT 
  `id`, 
  `message`, 
  `story`
FROM
  `replies`
WHERE 
  `id` = :id
;";
$stmt = $conn->prepare($sql);
$stmt->bindValue(':id', $reply3);
$stmt->execute();
$row = $stmt->fetch(PDO::FETCH_ASSOC);

$button3_id = $row["id"];
$button3_message = $row["message"];
$button3_story = $row["story"];

include "functions.php";
include "../views/story.php";
include "../views/replies.php";
?>

