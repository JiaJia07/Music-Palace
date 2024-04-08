<?php
    define("DB_HOST","localhost");
    define("DB_USER","root");
    define("DB_PASSWORD","");
    define("DB_DATABASE","musicpalace");

    $conn=mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_DATABASE);

    if(!$conn)
    {
        die('Could not connect to database:'.mysqli_connect_error());
    }
?>