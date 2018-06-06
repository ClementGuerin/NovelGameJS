<div class="replies">
    <div class="container">
        <ul>
            <?php if($reply1 !== null){ ?>
            <li>
                <button value="<?= htmlspecialchars($button1_story) ?>" id="button1" onclick="button(1);"><?= replaceApostrophe($button1_message) ?></button>
            </li>
            <?php } ?>
            <?php if($reply2 !== null){ ?>
            <li>
                <button value="<?= htmlspecialchars($button2_story) ?>" id="button2" onclick="button(2);"><?= replaceApostrophe($button2_message) ?></button>
            </li>
            <?php } ?>
            <?php if($reply3 !== null){ ?>
            <li>
                <button value="<?= htmlspecialchars($button3_story) ?>" id="button3" onclick="button(3);"><?= replaceApostrophe($button3_message) ?></button>
            </li>
            <?php } ?>
            
            <?php if($reply1 == null && $reply2 == null && $reply3 == null){ ?>
            <li>
                <button class="grey" value="1" id="button0" onclick="button(0);">Recommencer...</button>
            </li>
            <?php } ?>
        </ul>
    </div>
</div>