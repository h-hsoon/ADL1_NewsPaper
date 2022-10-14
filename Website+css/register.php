<?php include('functions.php') ?>
<?php require_once "header.php";?>
<div class="box">
        
        <h2>Register</h2>
        
        <form action = "register.php" method="POST">
            
            <div class="inputBox">
             <input type="text" name="username" required>
             <label for = "username">Username</label>
            </div>
            <div class="inputBox" >
                <input type="password" name="password_1" required>
                <label for = "password">Password</label>
                
            </div>
            <div class="inputBox" >
                <input type="password" name="password_2" required>
                <label for = "password">Confirm Password</label>
                
            </div>
            <input type="submit" name="" value="Submit">
            <a href="login.php">I do have an account</a>
        </form>
    </div>