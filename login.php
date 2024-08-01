<?php
// Simulated user credentials for demo purposes
$valid_username = "admin";
$valid_password = "password";

// Check if form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Retrieve form data
    $username = $_POST['username'];
    $password = $_POST['password'];

    // Validate credentials (in real scenario, you would check against a database)
    if ($username === $valid_username && $password === $valid_password) {
        // Redirect to success page (you can change this URL)
        // header("Location: success.php");
        echo "Hello, $name! Login success";
        // Add link leading to guestlist
        
    } else {
        // Redirect to login page with error message
        // header("Location: index.html?error=invalid_credentials");
        echo "Login Failed";
        // exit;
    }
// } else {
//     // Redirect back to login page if accessed directly
//     header("Location: index.html");
//     exit;
// 
}
?>
