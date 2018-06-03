<div class="container">
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
</div>