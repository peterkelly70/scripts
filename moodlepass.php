#!/bin/php
<?php
   $pass=password_hash($argv[1], PASSWORD_BCRYPT);
   echo "password ".$argv[1]." -> " . $pass;
   echo "\n";
?>
