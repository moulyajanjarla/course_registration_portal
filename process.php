<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "course_registration";

// Connect to MySQL
$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Handle login
if (isset($_POST['login'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];
    $role = $_POST['role'];

    $sql = "SELECT * FROM users WHERE username = '$username' AND role = '$role'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        echo "Login Successful. Redirecting to dashboard...";
        // Redirect to dashboard (replace with session in production)
        header("Location: dashboard.html");
    } else {
        echo "Invalid credentials.";
    }
}

$conn->close();
?>
