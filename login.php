<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST["username"];
    $password = $_POST["password"];

    // Check the credentials (You should replace this with your own authentication logic)
    if ($username === "Admin" && $password === "Admin123") {
        // Redirect to a new page on successful login
        header("Location: ManagerWelcome.php");
        exit();
    } else {
        echo "Invalid username or password";
    }
}
?>
