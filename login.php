<?php
    session_start();
    include "includes/koneksi.php";

    $username = $_POST['username'];
    $password = md5($_POST['password']);

    $query = "SELECT * FROM account WHERE Nama = '$username' AND Password = '$password'";
    $result = mysqli_query($conn, $query);

    if (mysqli_num_rows($result) > 0){
        $data = mysqli_fetch_assoc($result);

        $_SESSION['username'] = $data['Nama'];
        $_SESSION['password'] = $data['Password'];
        $_SESSION['role'] = $data['Role'];
        
        if ($_SESSION['role']=='admin') {
            header("location: panel_admin.php");
            exit();
        } else {
            header("location: dashboard.html");
            exit();
        }
    } else {
        echo "Password dan username salah";
    }
?>