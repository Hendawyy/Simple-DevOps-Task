<?php
$servername = "localhost";
$username = "seif";
$password = "123";
$database = "trial";

$conn = new mysqli($servername, $username, $password, $database);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$ip_address = $_SERVER['REMOTE_ADDR'];

$current_time = date('Y-m-d H:i:s');

echo "Hello visitor! Your IP address is: $ip_address<br>";
echo "The current time is: $current_time<br>";
echo "By Seif Hendawy!<br>";

$conn->close();
?>