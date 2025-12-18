<?php
    session_start();

    if(isset($_SESSION['username'])){
        header("location: dashboard.html");
        exit();
    } else{
        header("location: landingpage.html");
        exit();
    }
?>