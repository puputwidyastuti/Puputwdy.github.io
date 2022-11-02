<?php
    session_start();
    require "connection.php";
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=devie-width, initial-scale=1.0">
    <title>WEB</title>
    <link rel="stylesheet" href="fontawesome-free-5.15.3-web/css/all.min.css">

    <link rel="stylesheet" href="style4.css">

</head>

<body>

    <h2>Dark/Light Mode</h2>
    <button onclick="myFunction()">Change</button>
    <!-- <div class="button"><a href="#popup">Click Me</a></div> -->
		
    <div id="popup">
        <div class="window">
            <form action="#" method="post" class="popup-form">
                <img src="gallery1.png" alt="">
            </form>
            <a href="#" class="close-button" title="Close">X</a>
        </div>
    </div>
    
    <header class="header">
    
        <nav class="navbar">
            <a class="active" href="#">Home</a>
            <a href="#">About me</a>
            <a href="#">Menu</a>
            <a href="#">Order</a>
            <a href="login.php">Login</a>
            <a href="register.php">Register</a>
        </nav>
        <div class="search">
                <input type="text" name="" placeholder="Menu apa yang ingin anda cari?">
                <a href=""></a>
        </div>
        <div class="icons">
            <div id="menu-bar" class="fas fa-bars"></div>
            <a class="contact-btn" href="#">Contact</a>
        </div>
    </header>

    <section>
    <div class="home">

        <div class="main-home">
            <div class="home-inner-content">
                <div class="home-image">
                <!-- <img src="images/background content.png" alt=""> -->
                </div>
            </div>

            <div class="home-inner-content">
                <div class="home-text-content">
                <h1 id="judul">Hubungi kami jika anda inginn melakukan pemesanan</h1>
                <p>Berbagai macam menu yang lezat dan berkualitas ada di restaurant kami</p>
            
                </div>
            </div>
        </div>

    </div>
    </section>


    <div id="about" class="about">
        <div class="main-about">
            <div class="about-content">
                <div class="about-inner-content">
                    <img class="myimageabout" src="images/gallery4.png" alt="">
                </div>
            </div>

            <div class="about-content">
                <div class="about-inner-content">
                    <div class="about-text-content">
                        <h1>About me </h1> 
                        <div class="abs-content-box">
                            <div class="dotted-border">
                                <p class="text-md">
                                    <pre> Nama                : Puput Widyastuti 
                                    <br> Program Studi  : Informatika 
                                    <br> Angkatan           : 2021 
                                    <br> Hobi                   : Membaca & Mendengarkan Musik
                                    <br> NIM                    : 2109106074
                                </pre>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="quality">
        <div class="main-quality">
            <div class="main-inner-quality">
                <div class="quality-content">
                    <h1>Kualitas terpercaya dari restaurant kami</h1>
                    <p>Restaurant kami menyediakan menu yang terbuat dari bahan-bahan alami dan diolah oleh chef yang memiliki pengalaman yang terpercaya</p>

                </div>
            </div>

            <div class="main-inner-quality">
                <div class="quality-content qulity-image">
                    <img src="images/bread.png" alt="">
                </div>
            </div>
        </div>
    </div>


    <div class="gallery">

        <h1>Gallery</h1>

        <div class="main-gallery">
            <div class="inner-gallery">
                <div class="gallery-image">
                    <img src="images/gallery1.png" alt="">
                </div>
            </div>

            <div class="inner-gallery">
                <div class="gallery-image">
                    <img src="images/gallery2.png" alt="">
                </div>
            </div>

            <div class="inner-gallery">
                <div class="gallery-image">
                    <img src="images/gallery3.png" alt="">
                </div>
            </div>

            <div class="inner-gallery">
                <div class="gallery-image">
                    <img src="images/gallery4.png" alt="">
                </div>
            </div>

            <div class="inner-gallery">
                <div class="gallery-image">
                    <img src="images/gallery5.png" alt="">
                </div>
            </div>

            <div class="inner-gallery">
                <div class="gallery-image">
                    <img src="images/gallery6.png" alt="">
                </div>
            </div>
        </div>
    </div>

    <div class="enjoy-our-food">

        <div class="food-main-content">
            <h1>Selamat Datang</h1>
                <p>Restaurant kami menyediakan hidangan yang terbuat dari bahan-bahan alami dan diolah oleh chef profesional dan berpengalaman</p>
        </div>
    </div>

    <div class="our-menu-food">
        <h1>our menu</h1>

        <div class="main-menu-food">
            <div class="inner-menu-food">
                <div class="menu-food-content">
                    <img src="images/resto1.png" alt="">

                    <div class="menu-food-text">
                        <h2>Seafood</h2>
                        <p>
                            Rp. 350.000,-
                        </p>
                        <p> Terbuat dari bahan-bahan alami dan diolah oleh chef profesional dan berpengalaman</p>
                    </div>
                </div>
            </div>

            <div class="inner-menu-food">
                <div class="menu-food-content">
                    <img src="images/menu1.png" alt="">

                    <div class="menu-food-text">
                        <h2>salad fish</h2>
                        <p>
                            Rp. 85.000,-
                        </p>
                        <p> Terbuat dari bahan-bahan alami dan diolah oleh chef profesional dan berpengalaman</p>
                    </div>
                </div>
            </div>

            <div class="inner-menu-food">
                <div class="menu-food-content">
                    <img src="images/menu2.png" alt="">

                    <div class="menu-food-text">
                        <h2>Crispy bomb</h2>
                        <p> 
                            RP. 150.000,-
                        </p>
                        <p>Terbuat dari bahan-bahan alami dan diolah oleh chef profesional dan berpengalaman</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="footer">
        <p>copyright &copy; 2022 resto. All right reserved</p>
    </div>

<script src="https://unpkg.com/scrollreveal"></script>
<script src="style.js"></script>
</body>
</html>