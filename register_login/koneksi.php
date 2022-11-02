<?php

    $conn = mysqli_connect("localhost", "root", "", "register_login");


    if (!$conn) {
        die("Gagal terhubung ke database" . mysqli_connect_error());
    }
?>