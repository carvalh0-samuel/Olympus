<?php
// Parâmetros de conexão com o banco de dados
$host = 'localhost';
$dbname = 'academia_final';
$user = 'root';
$pass = '';

try {
    // Cria uma conexão PDO
    $pdo = new PDO("mysql:host=$host;dbname=$dbname", $user, $pass);
    // Define o modo de erro para exceções
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    echo 'Erro de conexão: ' . $e->getMessage();
}
?>
