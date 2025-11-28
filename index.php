<?php
    session_start();

    if(isset($_SESSION['username'])){
        header("location: dahshboard.html");
        exit();
    } else{
        header("location: landingpage.html");
        exit();
    }
?>