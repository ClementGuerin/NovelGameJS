<div class="story">
    <div class="container">
        <?php if($messageStory !== null){ ?>
        <p><?= replaceApostrophe($messageStory) ?></p>
        <?php } else { ?>
        <p>Message non trouvé</p>
        <?php } ?>
    </div>
</div>