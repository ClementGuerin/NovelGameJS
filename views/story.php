<div class="container">
    <button value="1" id="button0" onclick="button(0);">Réinistialiser</button>
    <input class="idStory" type="number" disabled value="<?= htmlspecialchars($idStory) ?>">
    <?php if($messageStory !== null){ ?>
    <p><?= replaceApostrophe($messageStory) ?></p>
    <?php } else { ?>
    <p>Message non trouvé</p>
    <?php } ?>
</div>