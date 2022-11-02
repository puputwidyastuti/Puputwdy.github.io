<?php
    $con=mysqli_connect("localhost", "root", "", "register_login");

    if (mysqli_connect_error()){
        echo "failed to connect to MySQL: ".mysqli_connect_error();
        exit();

    }
?>