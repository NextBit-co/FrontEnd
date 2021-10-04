<!doctype html>
<html lang="en">
<head>
    <title>Nextbit_2.0</title>
    <link rel="icon" href="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/icon.png">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <!-- css style -->
    <link rel="stylesheet" href="./css/style.css">
    <?php
    wp_head();
    ?>
</head>
<body>
    <!-- Start Navbar -->
    <header>
    <nav class="navbar navbar-expand-custom navbar-mainbg" id="navbar">
        <a class="navbar-brand navbar-logo" href="#">
            <img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/logo.png">
            Nextbit
        </a>
        <button class="navbar-toggler" type="button" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <i class="fas fa-bars text-white"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto">
                <div class="hori-selector"><div class="left"></div><div class="right"></div></div>
                <li class="nav-item">
                    <a class="nav-link" href="javascript:void(0);"><i class="fas fa-home"></i>หน้าหลัก</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="javascript:void(0);"><i class="fa fa-users"></i>เกี่ยวกับพวกเรา</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="javascript:void(0);"><i class="fa fa-graduation-cap"></i>คอร์สเรียน</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="javascript:void(0);"><i class="fa fa-cubes"></i>บทความ</a>
                </li>
            </ul>
        </div>
    </nav>
    </header>
    <!-- End Navbar -->
