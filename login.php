<?php
    session_start();
    include "includes/koneksi.php";

    $username = $_POST['username'];
    $password = md5($_POST['password']);

    echo 'Username ='.$username.' Password = '.$password;
    $query = "SELECT * FROM account WHERE Nama = '$username' AND Password = '$password'";
    $result = mysqli_query($conn, $query);

    if (mysqli_num_rows($result) > 0){
        $data = mysqli_fetch_assoc($result);
        echo $data;

        $_SESSION['username'] = $data['Nama'];
        $_SESSION['password'] = $data['Password'];

        header("location: dashboard.html");
        exit();
    } else {
        echo "Password dan username salah";
    }
?>