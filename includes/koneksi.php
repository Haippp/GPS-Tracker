<?php
    $HOST = "localhost";
    $USER = "root";
    $PASSWORD = "";
    $DATABASE = "semiColon_db";

    $conn = mysqli_connect($HOST, $USER, $PASSWORD, $DATABASE);
    if (!$conn) {
        die("Koneksi gagal: " . mysqli_connect_error());
    }
?>