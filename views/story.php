<div class="container">
    <input class="idStory" type="number" disabled value="<?= htmlspecialchars($idStory) ?>">
    <?php if($messageStory !== null){ ?>
    <p><?= htmlspecialchars($messageStory) ?></p>
    <?php } else { ?>
    <p>Message non trouvé</p>
    <?php } ?>
</div>