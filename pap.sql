-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22-Nov-2023 às 20:00
-- Versão do servidor: 10.4.28-MariaDB
-- versão do PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `pap`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `apostas`
--

CREATE TABLE `apostas` (
  `id` int(11) NOT NULL,
  `nome_usuario` varchar(255) NOT NULL,
  `piloto_escolhido` varchar(255) NOT NULL,
  `data_aposta` timestamp NOT NULL DEFAULT current_timestamp(),
  `id_utilizador` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `apostas`
--

INSERT INTO `apostas` (`id`, `nome_usuario`, `piloto_escolhido`, `data_aposta`, `id_utilizador`) VALUES
(1, 'Ronnie Coleman', 'Charles Leclerc', '2023-11-22 19:58:23', 1),
(2, 'caca', 'Sergio Perez', '2023-11-22 19:59:46', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `equipas`
--

CREATE TABLE `equipas` (
  `id_equipas` varchar(255) NOT NULL,
  `nome` text DEFAULT NULL,
  `data_criada` text DEFAULT NULL,
  `mail` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `equipas`
--

INSERT INTO `equipas` (`id_equipas`, `nome`, `data_criada`, `mail`) VALUES
('Redbul', 'RedbullRacing', '12/01/199', 'redbullracing@gmail.com'),
('Scuderia Ferrari', 'Scuderia Ferrari', '1947-02-21', 'scuderiaferrari@gmail.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `equipa_premio`
--

CREATE TABLE `equipa_premio` (
  `id_equipas` varchar(255) NOT NULL,
  `id_premio` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `equipa_premio`
--

INSERT INTO `equipa_premio` (`id_equipas`, `id_premio`) VALUES
('Redbul', 'GP da Arabia Saudita'),
('Redbul', 'GP da Australia'),
('Redbul', 'GP da Austria'),
('Redbul', 'GP da Belgica'),
('Redbul', 'GP da Espanha'),
('Redbul', 'GP da Grã Bretanha'),
('Redbul', 'GP da Holanda'),
('Redbul', 'GP da Hungria'),
('Redbul', 'GP de Italia Monza'),
('Redbul', 'GP de Miami'),
('Redbul', 'GP de Monaco'),
('Redbul', 'GP do Azerbaijão'),
('Redbul', 'GP do Brasil'),
('Redbul', 'GP do Canada'),
('Redbul', 'GP do Japão'),
('Redbul', 'GP do Mexico'),
('Redbul', 'GP do Qatar'),
('Redbul', 'GP dos Estados Unidos Las Vegas'),
('Scuderia Ferrari', 'GP de Singapura');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pilotos`
--

CREATE TABLE `pilotos` (
  `id_pilotos` varchar(50) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `data_nascimento` date DEFAULT NULL,
  `nacionalidade` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `pilotos`
--

INSERT INTO `pilotos` (`id_pilotos`, `nome`, `data_nascimento`, `nacionalidade`, `foto`) VALUES
(' Logan Sargent', 'Logan Sargent', '2000-12-31', 'Americana', 'logan.jpeg'),
(' Zhou Guanyu', 'Zhou Guanyu', '1999-05-30', 'Chinês', 'zhou.jpeg'),
('Alexandre Alon\n', 'Alexandre Alon', '1996-03-23', 'Tailandesa ', 'albon.jpeg'),
('Carlos Sainz jr', 'Carlos Sainz Jr', '1994-09-01', 'Espanhol', 'sainz.jpeg'),
('Charles Leclerc', 'Charles Leclerc', '1997-10-16', 'Monegasco', 'charles.jpeg'),
('Daniel Ricciardo', 'Daniel Ricciardo', '1989-07-01', 'Australiana', 'dani.jpeg'),
('Esteban Ocon', 'Esteban Ocon', '1996-09-17', 'Francesa', 'ocon.jpeg'),
('Fernando Alonso', 'Fernando Alonso', '1981-07-29', 'Espanhol', 'alonso.jpeg'),
('George Russel', 'George Russel', '1998-02-15', 'Inglesa', 'george.jpeg'),
('Kevin Magnussen', 'Kevin Magnussen', '1992-10-05', 'Dinamarquês', 'kevin.jpeg'),
('Lance Strol', 'Lance Strol', '1998-10-29', 'Canadence', 'stroll.jpeg'),
('Lando Norris', 'Lando Norris', '1999-07-21', 'Inglesa', 'lando.jpeg'),
('Lewis Hamilton', 'Lewis Hamilton', '1985-01-07', 'Inglesa', 'hamilton.jpeg'),
('Max Verstappen', 'Max Verstappen', '1997-09-30', 'Holandesa', 'MAX.jpeg'),
('Nico Hulkenbereg', 'Nico Hulkenberg', '1987-08-19', 'Alemão', 'nico.jpeg'),
('Oscar Piastri', 'Oscar Piastri', '2001-04-06', 'Australiana', 'piastri.jpeg'),
('Pierre Gasly', 'Pierre Gasly', '1996-02-07', 'Francesa', 'gasly.jpeg'),
('Sergio Perez', 'Sergio Perez', '1990-01-26', 'Mexicano', 'PEREZ.jpeg'),
('Valterri Bottas', 'Valterri Botas', '1989-08-28', 'Finlandês', 'bottas.jpeg'),
('Yuki Tsunoda', 'Yuki Tsunoda', '2002-05-11', 'Japonês', 'yuki.jpeg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `premio`
--

CREATE TABLE `premio` (
  `id_premio` varchar(255) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `data` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `premio`
--

INSERT INTO `premio` (`id_premio`, `descricao`, `data`) VALUES
(' GP do Bahrein', 'Localização: Sakhir, Bahrein  Comprimento: 5.412 km', '2023-03-05'),
(' GP dos Estados Unidos Austin', ' Localização: Austin, Estados Unidos  Comprimento: 5 513 km', '2023-10-22'),
('GP da Arabia Saudita', 'Localização: Gidá, Arabia Saudita  Comprimento:6.175 km', '2023-03-19'),
('GP da Austrália', 'Localização: Melbourne, Austrália  Comprimento: 5.278 km', '2023-04-02'),
('GP da Austria', 'Localização: Spielberg, Áustria  Comprimento: 4.318 km', '2023-07-02'),
('GP da Belgica', 'Localização: Ardenas, Província de Liège, Bélgica  Comprimento: 7.004 km', '2023-07-30'),
('GP da Espanha', 'Localização: Montmeló, Espanha  Comprimento: 4.655 km', '2023-06-04'),
('GP da Grã Bretanha', 'Localização: Silverstone, Inglaterra  Comprimento: 5.891 km', '2023-07-09'),
('GP da Holanda', 'Localização: Zandvoort, Países Baixos  Comprimento: 4.252 km', '2023-08-27'),
('GP da Hungria', 'Localização: Hungaroring, Budapeste, Hungria  Comprimento: 4.381 km', '2023-07-23'),
('GP da Itália Emilia Romagna', 'Localização: Monza, Itália  Comprimento: 5.793 km', '2023-05-21'),
('GP de Abu Dhabi', 'Localização: Yas Island, Abu Dhabi, Emirados Árabes Unidos  Comprimento: 5.281 km', '2023-11-26'),
('GP de Italia Monza', 'Localização: Monza, Itália  Comprimento: 5.793 km', '2023-09-03'),
('GP de Miami', 'Localização: Miami Gardens, Estados Unidos  Comprimento: 5.412 km', '2023-05-07'),
('GP de Monaco', 'Localização: Monte Carlo, Monaco  Comprimento: 3.337 km', '2023-05-28'),
('GP de Singapura', 'Localização: Marina Bay, Singapura  Comprimento: 4.940 km', '2023-09-17'),
('GP do Azerbaijão', 'Localização: Bacu, Azerbaijão  Comprimento: 6,003 km', '2023-04-30'),
('GP do Brasil', 'Localização: Interlagos-São Paulo, Brasil  Comprimento: 4 309 km', '2023-11-05'),
('GP do Canada', 'Localização: Montreal, Quebec, Canadá  Comprimento: 4.361 km', '2023-11-15'),
('GP do Japão', 'Localização: Suzuka, Japão  Comprimento: 5.807 km', '2023-09-24'),
('GP do Mexico', 'Localização: Cidade do México, México  Comprimento: 4.304 km', '2023-10-29'),
('GP do Qatar', 'Localização: Lusail, Catar  Comprimento: 5,38 km', '2023-08-09'),
('GP dos Estados Unidos Las Vegas', 'Localização: Las Vegas, Estados Unidos  Comprimento: 6.12 km', '2023-11-19');

-- --------------------------------------------------------

--
-- Estrutura da tabela `premio_piloto`
--

CREATE TABLE `premio_piloto` (
  `id_pilotos` varchar(50) NOT NULL,
  `id_premio` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `premio_piloto`
--

INSERT INTO `premio_piloto` (`id_pilotos`, `id_premio`) VALUES
('Carlos Sainz Jr', 'GP de Singapura'),
('Max Verstappen', ' GP do Bahrein'),
('Max Verstappen', ' GP dos Estados Unidos Austin'),
('Max Verstappen', 'GP da Austrália'),
('Max Verstappen', 'GP da Austria'),
('Max Verstappen', 'GP da Belgica'),
('Max Verstappen', 'GP da Espanha'),
('Max Verstappen', 'GP da Grã Bretanha'),
('Max Verstappen', 'GP da Holanda'),
('Max Verstappen', 'GP da Hungria'),
('Max Verstappen', 'GP de Italia Monza'),
('Max Verstappen', 'GP de Miami'),
('Max Verstappen', 'GP de Monaco'),
('Max Verstappen', 'GP do Brasil'),
('Max Verstappen', 'GP do Canada'),
('Max Verstappen', 'GP do Japão'),
('Max Verstappen', 'GP do Mexico'),
('Max Verstappen', 'GP do Qatar'),
('Max Verstappen', 'GP dos Estados Unidos Las Vegas'),
('Sergio Perez', 'GP da Arabia Saudita'),
('Sergio Perez', 'GP do Azerbaijão');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `admin` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `senha`, `email`, `foto`, `created_at`, `admin`) VALUES
(1, 'Ronnie Coleman', '$2y$10$C3SHK7sDFzSHZZRW78pww.rHZd.uk50tliWOLiFSw0ItQD9.6nRFO', 'coleman@gmail.com', NULL, '2023-11-22 18:44:36', 0),
(2, 'admin', '$2y$10$bsMa9WATsgzzJKHe9Wy4zOFAcHoqWALa0aA/zHX35DKYCLN501MTS', 'admin@gmail.com', NULL, '2023-11-22 18:47:17', 1),
(3, 'caca', '$2y$10$TBEL2H6iWQ2780egAV2w9eU2bfEa68LZT0/Xoi58z.MzFOW4AEOrC', 'caca@gmail.com', NULL, '2023-11-22 18:59:01', 0);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `apostas`
--
ALTER TABLE `apostas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_utilizador` (`id_utilizador`);

--
-- Índices para tabela `equipas`
--
ALTER TABLE `equipas`
  ADD PRIMARY KEY (`id_equipas`);

--
-- Índices para tabela `equipa_premio`
--
ALTER TABLE `equipa_premio`
  ADD PRIMARY KEY (`id_equipas`,`id_premio`),
  ADD KEY `id_premio` (`id_premio`);

--
-- Índices para tabela `pilotos`
--
ALTER TABLE `pilotos`
  ADD PRIMARY KEY (`id_pilotos`);

--
-- Índices para tabela `premio`
--
ALTER TABLE `premio`
  ADD PRIMARY KEY (`id_premio`);

--
-- Índices para tabela `premio_piloto`
--
ALTER TABLE `premio_piloto`
  ADD PRIMARY KEY (`id_pilotos`,`id_premio`),
  ADD KEY `id_premio` (`id_premio`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `apostas`
--
ALTER TABLE `apostas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `apostas`
--
ALTER TABLE `apostas`
  ADD CONSTRAINT `apostas_ibfk_1` FOREIGN KEY (`id_utilizador`) REFERENCES `usuarios` (`id`);

--
-- Limitadores para a tabela `equipa_premio`
--
ALTER TABLE `equipa_premio`
  ADD CONSTRAINT `equipa_premio_ibfk_1` FOREIGN KEY (`id_equipas`) REFERENCES `equipas` (`id_equipas`),
  ADD CONSTRAINT `equipa_premio_ibfk_2` FOREIGN KEY (`id_premio`) REFERENCES `premio` (`id_premio`);

--
-- Limitadores para a tabela `premio_piloto`
--
ALTER TABLE `premio_piloto`
  ADD CONSTRAINT `premio_piloto_ibfk_1` FOREIGN KEY (`id_pilotos`) REFERENCES `pilotos` (`id_pilotos`),
  ADD CONSTRAINT `premio_piloto_ibfk_2` FOREIGN KEY (`id_premio`) REFERENCES `premio` (`id_premio`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
