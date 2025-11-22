<?php
    include "./includes/koneksi.php";
    $query = $_GET['test'];
    echo "<pre>";
    print_r(mysqli_fetch_assoc($conn->query($query)));
    echo "</pre>"
?>