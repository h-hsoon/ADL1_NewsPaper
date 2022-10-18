<?php include('functions.php') ?>
<?php require_once "header.php";?>
<div class="box">
        
        <h2>Login</h2>
        
        <form action = "login.php" method="post">
            
            <div class="inputBox">
             <input type="username" name="username" required>
             <label>Username</label>
            </div>
            <div class="inputBox" >
                <input type="password" name="password" required>
                <label>Password</label>
                
            </div>
            <input type="submit" name="login_users" value="Submit">
            <a href="register.php">I do not have an account</a>
        </form>
    </div>