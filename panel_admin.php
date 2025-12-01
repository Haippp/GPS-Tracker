<?php
if (!$_SESSION['role'] != 'admin'){
    header("location: dashboard.html");
    exit();
}

echo "Selamat datang di panel Admin"
?>