<?php

if (getenv("C9_PROJECT")) {
    define('DB_HOST', '173.230.141.29');
} else {
    define('DB_HOST', 'localhost');
}

define('DB_USER', 'tpclubsc_ideaove');
define('DB_PASS', 'ideasdb');
define('DB_NAME', 'tpclubsc_ideaoverflow2');

/*
define('DB_USER', 'jcole');
define('DB_PASS', 'ok7gkRkKGLpF');
define('DB_NAME', 'jcole_ideaoverflow2_ma');
*/
define('IDEAS_TBL', 'post_ideas_mitsugg');
define('LINKS_TBL', 'links');
define('IDEAMAPS_TBL', 'ideamaps');

$MYSQLI_LINK = mysqli_connect(DB_HOST, DB_USER, DB_PASS) or die("CONNECT Error: " . mysqli_error($MYSQLI_LINK));
mysqli_select_db($MYSQLI_LINK, DB_NAME);
