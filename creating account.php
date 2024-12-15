<?php
$host = "localhost";
$db_name = "roll_call_system";
$username = "root"; // Change this to your MySQL username
$password = ""; // Change this to your MySQL password

$conn = new mysqli($host, $username, $password, $db_name);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Hash the password using PHP's password_hash() function (bcrypt by default)
$admin_password = password_hash('password', PASSWORD_BCRYPT);

// Insert the admin user with hashed password
$sql = "INSERT INTO users (username, password) VALUES ('admin', '$admin_password')";

if ($conn->query($sql) === TRUE) {
    echo "New user created successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>
