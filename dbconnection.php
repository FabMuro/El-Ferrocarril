<?php

require("config.php");

//crear la conección

$sqlconnection = new mysqli($servername,$username,$password,$bdname);

//verificar la conección

if ($sqlconnection->connect_error) {
   die("Conexion fallida: " . $sqlconnection->connect_error);
}

?>