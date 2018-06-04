<?php

function replaceApostrophe($str){
    $str2 = str_replace("","'",$str); // Change les apostrophes de Word en simple apostrophe
    $str3 = str_replace("“",'"',$str2); // Change les quotes Word en quote normales
    $str4 = str_replace("”",'"',$str3); // Change les quotes Word en quote normales
    echo str_replace("","...", $str4); // Change les trois petits points Word en trois points
}