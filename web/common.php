<?php

header('Content-Type: text/html; charset=utf-8');

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

session_start();

// Edit line below to your database configuration (ip, username, password, database name)
$db=mysqli_connect("localhost","root","","db-project");

// Check connection
if (mysqli_connect_errno())
{
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  die;
}
mysqli_set_charset($db,"utf8");

