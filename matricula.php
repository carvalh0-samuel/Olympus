<?php
$servername = "localhost";
$username = "root"; 
$password = ""; 
$dbname = "academia_final"; 

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nome = $_POST['nome'];
    $cpf = $_POST['cpf'];
    $nascimento = $_POST['nascimento'];
    $email = $_POST['email'];
    $telefone = $_POST['tel'];
    $sexo = $_POST['sexo'];
    $plano_id = $_POST['plano']; 
    $unidade_id = $_POST['unidade']; 

    $sql = "INSERT INTO membros (nome, cpf, nascimento, email, telefone, sexo, plano_id, unidade_id, data_inscricao) 
            VALUES ('$nome', '$cpf', '$nascimento', '$email', '$telefone', '$sexo', '$plano_id', '$unidade_id', CURDATE())";

    if ($conn->query($sql) === TRUE) {
        echo "Matrícula realizada com sucesso!";
    } else {
        echo "Erro: " . $sql . "<br>" . $conn->error;
    }

    $conn->close();
}
?>
