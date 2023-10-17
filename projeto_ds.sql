-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17-Out-2023 às 13:15
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `projeto_ds`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `candidato`
--

CREATE TABLE `candidato` (
  `ID_Cand` int(11) NOT NULL,
  `Nome_Cand` varchar(25) NOT NULL,
  `Telefone` varchar(15) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `CPF` varchar(13) NOT NULL,
  `Rua` varchar(50) NOT NULL,
  `Bairro` varchar(50) NOT NULL,
  `Cidade` varchar(30) NOT NULL,
  `Estado` varchar(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `candidato`
--

INSERT INTO `candidato` (`ID_Cand`, `Nome_Cand`, `Telefone`, `Email`, `CPF`, `Rua`, `Bairro`, `Cidade`, `Estado`) VALUES
(1, 'Nycolas', '111111', '@teste', '99999999999', 'Rua X', 'Bairro X', 'São Paulo', 'SP'),
(2, 'Leticia', '2222222', '@email', '8888888', 'Rua Y', 'Bairro Y', 'São Paulo', 'SP');

-- --------------------------------------------------------

--
-- Estrutura da tabela `candidato_vaga`
--

CREATE TABLE `candidato_vaga` (
  `ID_Cand` int(11) NOT NULL,
  `ID_Vaga` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `candidato_vaga`
--

INSERT INTO `candidato_vaga` (`ID_Cand`, `ID_Vaga`) VALUES
(1, 2),
(2, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `empresa`
--

CREATE TABLE `empresa` (
  `ID_Empresa` int(11) NOT NULL,
  `Nome_Empresa` varchar(30) NOT NULL,
  `CNPJ` varchar(15) NOT NULL,
  `Estado` varchar(2) NOT NULL,
  `Cidade` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `empresa`
--

INSERT INTO `empresa` (`ID_Empresa`, `Nome_Empresa`, `CNPJ`, `Estado`, `Cidade`) VALUES
(1, 'Empresa FIC', '6666666', 'SP', 'São Paulo'),
(2, 'Empresa Ticia', '4444444444', 'SP', 'São Paulo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `empresa_vaga`
--

CREATE TABLE `empresa_vaga` (
  `ID_Empresa` int(11) NOT NULL,
  `ID_Vaga` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `empresa_vaga`
--

INSERT INTO `empresa_vaga` (`ID_Empresa`, `ID_Vaga`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `vagas`
--

CREATE TABLE `vagas` (
  `ID_Vaga` int(11) NOT NULL,
  `N_Vagas` int(25) NOT NULL,
  `Nome_Vaga` varchar(20) NOT NULL,
  `Descricao` varchar(100) NOT NULL,
  `Salario` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `vagas`
--

INSERT INTO `vagas` (`ID_Vaga`, `N_Vagas`, `Nome_Vaga`, `Descricao`, `Salario`) VALUES
(1, 10, 'Professor', 'Professor Tecnico de DS', '3000'),
(2, 5, 'Limpeza', 'limpeza de Janelas', '4000');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `candidato`
--
ALTER TABLE `candidato`
  ADD PRIMARY KEY (`ID_Cand`);

--
-- Índices para tabela `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`ID_Empresa`);

--
-- Índices para tabela `vagas`
--
ALTER TABLE `vagas`
  ADD PRIMARY KEY (`ID_Vaga`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `candidato`
--
ALTER TABLE `candidato`
  MODIFY `ID_Cand` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `empresa`
--
ALTER TABLE `empresa`
  MODIFY `ID_Empresa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `vagas`
--
ALTER TABLE `vagas`
  MODIFY `ID_Vaga` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
