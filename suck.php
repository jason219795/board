<?php
$servername = "localhost";
$user = "root";
$password = "";
$dbname = "board";
$userid=$_POST['userid'];
$psw=$_POST['psw'];

// Create connection

$conn = new mysqli($servername ,$user, $password,$dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$sql = "INSERT INTO account (username, password)
VALUES ('$userid', '$psw')";

if ($conn->query($sql) === TRUE) {
    echo "帳號註冊成功";
} else {
    echo "失敗: 帳號 $userid 已有人註冊" ;
}

$conn->close();
?>
