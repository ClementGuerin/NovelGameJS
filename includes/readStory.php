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


$messageStory = $row["message"];
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
?>

    <?php if($messageStory !== null){ ?>
        <p><?= htmlspecialchars($messageStory) ?></p>
    <?php } else { ?>
        <p>Message non trouvé</p>
    <?php } ?>
    <ul>
        <?php if($reply1 !== null){ ?>
            <li>
                <button value="<?= htmlspecialchars($button1_story) ?>" id="button1" onclick="button(1);"><?= htmlspecialchars($button1_message) ?></button>
            </li>
        <?php } ?>
        <?php if($reply2 !== null){ ?>
        <li>
            <button value="<?= htmlspecialchars($button2_story) ?>" id="button2" onclick="button(2);"><?= htmlspecialchars($button2_message) ?></button>
        </li>
        <?php } ?>
        <?php if($reply3 !== null){ ?>
        <li>
            <button value="<?= htmlspecialchars($button3_story) ?>" id="button3" onclick="button(3);"><?= htmlspecialchars($button3_message) ?></button>
        </li>
        <?php } ?>
    </ul>

