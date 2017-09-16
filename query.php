<?php
session_start();
require_once("database.php"); // including the database.php file

//Strip unnecessary characters such as spaces, backslashes and html predefined special characters
function test_input($data) {
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}

if(isset($_POST)){

    //Initializing user entered data to the variables
    $username = test_input($_POST['username']);
    $password = base64_encode(strrev(md5(test_input($_POST['password'])))); // Encrypting password
    $name = test_input($_POST['name']);
    $address = test_input($_POST['address']);
    $country = test_input($_POST['country']);
    $zip = test_input($_POST['zip']);
    $email = test_input($_POST['email']);
    $sex = test_input($_POST['gender']);
    $language = test_input($_POST['language']);
    $about = test_input($_POST['about']);

    $sql = "SELECT username  FROM user WHERE username = '$username'";
    $result = $conn->query($sql);

    //if there's no username which is equal to the entered one, execute "if block".
    if($result->num_rows == 0) {
        $sql = "INSERT INTO user VALUES ('$username','$password','$name','$address','$country','$zip','$email','$sex','$language','$about')";

        if ($conn->query($sql) === TRUE) {
            //if the query worked properly, refresh back to the form.php file.
            $_SESSION['registerCompleted'] = true;
            header("Location: form.php");
            exit();
        } else {
            //Show the connection error
            echo "Error " . $sql . "<br>" . $conn->connect_error;
        }
    }else {
        //If the username already exists, refresh back to form.php and show the error message.
        $_SESSION['registerError'] = true;
        header("Location: form.php");
        exit();
    }

    $conn->close();
}else {
    header("Location: form.php");
    exit();
}