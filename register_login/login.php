<?php
    session_start();
    require "connection.php";
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="style4.css">
</head>
<body>
    <div class="main">
        <div class="div-content">
            <h1>Login</h1>
            <div class="div-box">
                <form action="" method="post">
                    <div>
                        <label for="Username">Username</label>
                        <input type="username" name="username" id="username"> 
                    </div> 
                    <div>
                        <label for="email">Email</label>
                        <input type="email" name="email" id="email"> 
                    </div>  
                    <div>
                        <label for="password">Password</label>
                        <input type="password" name="password" id="password"> 
                    </div> 
                    <div>
                        <input type="submit" name="submit" value="Login"> 
                    </div> 
                </form>

                <?php
                    if(isset($_POST['submit'])){
                        $username = htmlspecialchars($_POST['username']);
                        $email = htmlspecialchars($_POST['email']);
                        $password= htmlspecialchars($_POST['password']);

                        $query=mysqli_query($con, "SELECT * FROM users WHERE email= '$email'");
                        $count=mysqli_num_rows($query);

                        if($count>0){
                            $data=mysqli_fetch_array($query);
                            if (password_verify($password, $data['password'])){
                                $SESSION['logged in']=true;
                                $SESSION['email']=$data['email'];

                                header("location: index.php");
                            }
                            // else{
                            //     echo "your password is invalid";
                            // }
                        }
                        else{
                            echo "Your account not exist";
                        }
                    }
                ?>
            </div>
        </div>
    </div>
</body>
</html>