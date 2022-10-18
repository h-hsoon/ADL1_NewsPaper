<?php

session_start();
//initialising variables
$username = '';
$errors = array();

//connect to database
$db = new mysqli('localhost', 'root', '', 'adl1_newspaper') or die("couldn't connect");

//register users
if(isset($_POST['register'])){
    $username = mysqli_real_escape_string($db, $_POST['username']);
    $password_1 = mysqli_real_escape_string($db, $_POST['password_1']);
    $password_2 = mysqli_real_escape_string($db, $_POST['password_2']);

//form validation 

    if(empty($username)) array_push($errors, "Username is required");
    if(empty($password_1)) array_push($errors, "Password is required");
    if($password_1 != $password_2) array_push($errors, "Passwords do not match");

//check db for the existing users with the same username

    $users_check_query = "SELECT * FROM users WHERE user_name = '$username' LIMIT 1";
    $results = mysqli_query($db, $users_check_query);

    if($users){
       if($users['username'] === $username) array_push($errors, "Username already exists");
    }

//Reggisters the user
    if(count($errors) == 0){
        $password = md5($password_1); //this will encrypt the password
        $query = "INSERT INTO users (user_name, password) VALUES ('$username', '$password')";
        mysqli_query($db, $query);
        $_SESSION['username'] = $username;
        $_SESSION['success'] = "You have been registered, mortal";

        header('location: homepage.php');
    }
}

//Login users

if(isset($_POST['login_users'])){
$username = mysqli_real_escape_string($db, $_POST['username']);
$password = mysqli_real_escape_string($db, $_POST['password']);

if(empty($username)){
    array_push($errors, "Username is required");
}

if(empty($password)){
    array_push($errors, "Password is required");
}

if(count($errors) == 0){
    $password = md5($password);
    $query = "SELECT * FROM users WHERE user_name = '$username' AND password = '$password' ";
    $results = mysqli_query($db, $query);

    if (mysqli_num_rows($results)){
        $_SESSION['username'] = $username;
        $_SESSION['success'] = "You are now logged in";
        header('location: homepage.php');
    } else {
        array_push($errors, "Wrong username or password. Try again");
    }
}
}

if(isset($_POST['login_users'])){
    $username = mysqli_real_escape_string($db, $_POST['username']);
    $password = mysqli_real_escape_string($db, $_POST['password']);
    
    if(empty($username)){
        array_push($errors, "Username is required");
    }
    
    if(empty($password)){
        array_push($errors, "Password is required");
    }
    
    if(count($errors) == 0){
        $password = md5($password);
        $query = "SELECT * FROM users WHERE user_name = '$username' AND password = '$password' ";
        $results = mysqli_query($db, $query);
    
        if (mysqli_num_rows($results)){
            $_SESSION['username'] = $username;
            $_SESSION['success'] = "You are now logged in";
            header('location: homepage.php');
        } else {
            array_push($errors, "Wrong username or password. Try again");
        }
    }
    }

    if(isset($_POST['create_news'])){
        $title = mysqli_real_escape_string($db, $_POST['title']);
        $content = mysqli_real_escape_string($db, $_POST['contentOnThePage']);
        $category = mysqli_real_escape_string($db, $_POST['categoryOnThePage']);
        $image = mysqli_real_escape_string($db, $_POST['image']);
        
        if(empty($title)){
            array_push($errors, "Title is required");
        }
        
        if(empty($content)){
            array_push($errors, "Content is required");
        }

        if(empty($category)){
            array_push($errors, "Category is required");
        }
        
        if(count($errors) == 0){
            $query = "SELECT * FROM news WHERE category = '$category' AND content = '$content' ";
            $results = mysqli_query($db, $query);
        
            if (mysqli_num_rows($results)){
                $_SESSION['contentOnThePage'] = $content;
                $_SESSION['success'] = "You have created an article";
                header('location: This_is_a_placeholder_brother_change_it.php');
            } else {
                array_push($errors, "Something didn't work out, pal. Try making another one");
            }
        }
        }

?>
