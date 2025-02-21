-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2024 at 04:18 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `academia_final`
--

-- --------------------------------------------------------

--
-- Table structure for table `membros`
--

CREATE TABLE `membros` (
  `id_membro` int(12) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `sexo` varchar(10) NOT NULL,
  `nascimento` date DEFAULT NULL,
  `data_inscricao` date NOT NULL,
  `plano_id` int(11) NOT NULL,
  `unidade_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `membros`
--

INSERT INTO `membros` (`id_membro`, `nome`, `cpf`, `email`, `telefone`, `sexo`, `nascimento`, `data_inscricao`, `plano_id`, `unidade_id`) VALUES
(4, 'testes', '3333333333', 'testando@email.com', '61999999999', 'Masculino', '2024-11-07', '2024-11-23', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `plano`
--

CREATE TABLE `plano` (
  `plano_id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `descricao` text NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `duracao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `plano`
--

INSERT INTO `plano` (`plano_id`, `nome`, `descricao`, `preco`, `duracao`) VALUES
(1, 'Mortal', 'Acesso a todas as máquinas\r\nAulas em grupo', 99.00, 3),
(2, 'Titã', 'Treino personalizado\r\nAcesso a todas as aulas', 129.00, 3),
(3, 'Divino', 'Acesso ilimitado em todas as unidades\r\nPersonal Trainer\r\nNutricionista', 159.00, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `membros`
--
ALTER TABLE `membros`
  ADD PRIMARY KEY (`id_membro`),
  ADD KEY `plano_id` (`plano_id`),
  ADD KEY `unidade_id` (`unidade_id`),
  ADD KEY `id_membro` (`id_membro`);

--
-- Indexes for table `plano`
--
ALTER TABLE `plano`
  ADD PRIMARY KEY (`plano_id`),
  ADD KEY `plano_id` (`plano_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `membros`
--
ALTER TABLE `membros`
  MODIFY `id_membro` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `plano`
--
ALTER TABLE `plano`
  MODIFY `plano_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `membros`
--
ALTER TABLE `membros`
  ADD CONSTRAINT `membros_ibfk_1` FOREIGN KEY (`plano_id`) REFERENCES `plano` (`plano_id`),
  ADD CONSTRAINT `membros_ibfk_2` FOREIGN KEY (`unidade_id`) REFERENCES `unidades` (`id_unidade`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
