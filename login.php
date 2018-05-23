<?php

$dservername ="localhost";
$dusername = "root";
$dpassword = "";
$dname = "board"; 
$username = $_POST['userid'];
$password = $_POST['psw'];


// Create connection
$conn = new mysqli($dservername, $dusername, $dpassword, $dname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$sql = "SELECT username, password FROM account WHERE username = '$username' and password = '$password'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "登入成功";
    }
} else {
    echo "帳號或密碼錯誤";
}
$conn->close();
?>