-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 07, 2023 at 06:20 PM
-- Server version: 8.0.35-0ubuntu0.20.04.1
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pap`
--

-- --------------------------------------------------------

--
-- Table structure for table `apostas`
--

CREATE TABLE `apostas` (
  `id` int NOT NULL,
  `nome_usuario` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `piloto_escolhido` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `data_aposta` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_utilizador` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `apostas`
--

INSERT INTO `apostas` (`id`, `nome_usuario`, `piloto_escolhido`, `data_aposta`, `id_utilizador`) VALUES
(1, 'Ronnie Coleman', 'Charles Leclerc', '2023-11-22 19:58:23', 1),
(2, 'caca', 'Sergio Perez', '2023-11-22 19:59:46', 3),
(3, 'caca', 'Lewis Hamilton', '2023-11-22 20:03:46', 3),
(4, 'wagner', 'Lando Norris', '2023-11-29 12:18:23', 4),
(5, 'Robertoprof', 'Carlos Sainz', '2023-12-06 10:37:28', 5);

-- --------------------------------------------------------

--
-- Table structure for table `equipas`
--

CREATE TABLE `equipas` (
  `id_equipas` int NOT NULL,
  `nome` text COLLATE utf8mb4_general_ci,
  `data_criada` text COLLATE utf8mb4_general_ci,
  `mail` text COLLATE utf8mb4_general_ci,
  `descricao` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `piloto_principal` int NOT NULL,
  `piloto_secundario` int NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `equipas`
--

INSERT INTO `equipas` (`id_equipas`, `nome`, `data_criada`, `mail`, `descricao`, `piloto_principal`, `piloto_secundario`, `foto`) VALUES
(12, 'teste', '1212-12-31', 'tanjilk@gm.com', 'teste', 34, 35, 'qa.png'),
(13, 'equipamanel', '2005-11-11', 'manel@gm', 'trfyurtrtyurutrftuyvfughb lj', 34, 37, 'ML.png'),
(14, 'equipaboaaaaa', '7878-07-08', '89@89', 'oihyiuhlhjkhjklhnjklhnlkj', 38, 35, 'Rb.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `equipa_premio`
--

CREATE TABLE `equipa_premio` (
  `id_equipas` int NOT NULL,
  `id_premio` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `equipa_premio`
--

INSERT INTO `equipa_premio` (`id_equipas`, `id_premio`) VALUES
(1, 'GP da Arabia Saudita'),
(1, 'GP da Australia'),
(1, 'GP da Austria'),
(1, 'GP da Belgica'),
(2, 'GP da Espanha'),
(3, 'GP da Grã Bretanha'),
(4, 'GP da Holanda'),
(5, 'GP da Hungria'),
(6, 'GP de Italia Monza'),
(7, 'GP de Miami'),
(8, 'GP de Monaco'),
(9, 'GP de Singapura'),
(10, 'GP do Azerbaijão'),
(11, 'GP do Brasil'),
(12, 'GP do Canada'),
(13, 'GP do Japão'),
(14, 'GP do Mexico'),
(15, 'GP do Qatar'),
(16, 'GP dos Estados Unidos Las Vegas');

-- --------------------------------------------------------

--
-- Table structure for table `pilotos`
--

CREATE TABLE `pilotos` (
  `id_pilotos` int NOT NULL,
  `nome` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `equipe` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `numero` int NOT NULL,
  `bandeira` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `nacionalidade` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `descricao` text COLLATE utf8mb4_general_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pilotos`
--

INSERT INTO `pilotos` (`id_pilotos`, `nome`, `equipe`, `numero`, `bandeira`, `nacionalidade`, `descricao`, `foto`) VALUES
(34, 'tanjil', '1', 1, 's.png', 'ta', 'te', 'zhou.jpeg'),
(35, 'wagner2', 'wagnerteam', 4, 'j.png', 'japones', 'bottttasssssssssss....', 'bottas.jpeg'),
(36, 'tanjil', 'mercedes', 65, 'pb.png', 'china', 'teste123', 'yuki.jpeg'),
(37, 'manel', 'mercedes', 87687, 'ta.png', 'portugues', 'manel ganda piloto', 'Ronnie-Dean-Coleman-4.jpg'),
(38, 'joao', 'ferrari', 69, 'qaa.png', 'jamaicano', 'fiiiiiiiiiii', 'pl.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `premio`
--

CREATE TABLE `premio` (
  `id_premio` int NOT NULL,
  `descricao` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `data` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `premio_piloto`
--

CREATE TABLE `premio_piloto` (
  `id_pilotos` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `id_premio` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `premio_piloto`
--

INSERT INTO `premio_piloto` (`id_pilotos`, `id_premio`) VALUES
('Max Verstappen', ' GP do Bahrein'),
('Max Verstappen', ' GP dos Estados Unidos Austin'),
('Sergio Perez', 'GP da Arabia Saudita'),
('Max Verstappen', 'GP da Austrália'),
('Max Verstappen', 'GP da Austria'),
('Max Verstappen', 'GP da Belgica'),
('Max Verstappen', 'GP da Espanha'),
('Max Verstappen', 'GP da Grã Bretanha'),
('Max Verstappen', 'GP da Holanda'),
('Max Verstappen', 'GP da Hungria'),
('Max Verstappen', 'GP de Abu Dhabi'),
('Max Verstappen', 'GP de Italia Monza'),
('Max Verstappen', 'GP de Miami'),
('Max Verstappen', 'GP de Monaco'),
('Carlos Sainz Jr', 'GP de Singapura'),
('Sergio Perez', 'GP do Azerbaijão'),
('Max Verstappen', 'GP do Brasil'),
('Max Verstappen', 'GP do Canada'),
('Max Verstappen', 'GP do Japão'),
('Max Verstappen', 'GP do Mexico'),
('Max Verstappen', 'GP do Qatar'),
('Max Verstappen', 'GP dos Estados Unidos Las Vegas');

-- --------------------------------------------------------

--
-- Table structure for table `quipas`
--

CREATE TABLE `quipas` (
  `id_equipas` int NOT NULL,
  `Equipa` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `Descricao` text COLLATE utf8mb4_general_ci,
  `PilotoPrincipal` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `SegundoPiloto` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Imagem1` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Imagem2` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Imagem3` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quipas`
--

INSERT INTO `quipas` (`id_equipas`, `Equipa`, `Descricao`, `PilotoPrincipal`, `SegundoPiloto`, `Imagem1`, `Imagem2`, `Imagem3`) VALUES
(742, 'Mercedes', 'A Equipe Mercedes é uma das equipes mais bem-sucedidas da Fórmula 1, com vários títulos mundiais.', 'Lewis Hamilton', 'George Russell', 'image/MR.jpg', 'image/LHGR.jpg', 'image/44.jpg'),
(743, 'Red Bull Racing', 'A Red Bull Racing é conhecida por sua abordagem agressiva nas corridas de Fórmula 1.', 'Max Verstappen', 'Sergio Pérez', 'image/Rb.jpg', 'image/du.jpg', 'image/rb18-1.jpg'),
(744, 'Scuderia Ferrari', 'A Scuderia Ferrari é uma das equipes mais icônicas e históricas da Fórmula 1.', 'Charles Leclerc', 'Carlos Sainz Jr.', 'image/ff.jpg', 'image/CC.jpg', 'image/f23.jpeg'),
(745, 'McLaren F1 Team', 'A McLaren F1 Team é conhecida por sua tradição e inovação no esporte.', 'Lando Norris', 'Oscar Piastri', 'image/ML.png', 'image/pl.jpg', 'image/ll.jpg'),
(746, 'Aston Martin Cognizant Formula One Team', 'A equipe Aston Martin retorna à Fórmula 1 com uma nova identidade.', 'Fernando Alonso', 'Lance Stroll', 'image/astom.jpg', 'image/FL.jpg', 'image/ast.jpeg'),
(747, 'Alpine F1 Team', 'O Alpine F1 Team representa a Renault na Fórmula 1.', 'Pierre Gasly', 'Esteban Ocon', 'image/alp.jpg', 'image/og.jpg', 'image/ap.jpg'),
(748, 'Willians F1 Team', 'A Williams Grand Prix Engineering Limited, competindo como Williams Racing, é uma equipe e construtor de Fórmula 1 fundada por Frank Williams e Patrick Head.', 'Alexandre Albon', 'Logan Sargento', 'image/w.jpg', 'image/al.jpg', 'image/wi.jpg'),
(749, 'Haas F1 Team', 'Haas Formula LLC, atualmente competindo como MoneyGram Haas F1 Team, é uma equipe de Fórmula 1 estabelecida por Gene Haas em abril de 2014. A equipe planejou sua estreia no início da temporada de 2015, mas optou por adiar a sua entrada para a temporada de 2016.', 'Kevin Magnussen', 'Nico Hulkenberg', 'image/haas.jpg', 'image/h.jpg', 'image/ha.jpg'),
(750, 'Alfa Romeo F1 Team', 'A marca Alfa Romeo retornou para a Fórmula 1 na temporada de 2018 como patrocinador título da equipe Sauber.', 'Valtteri Bottas', 'Zhou Guanyu', 'image/loalfa.jpg', 'image/bz.jpg', 'image/c43.jpg'),
(751, 'Alfa Tauri F1 Team', 'O Alpine F1 Team representa a Renault na Fórmula 1.', 'Daniel Ricciardo', 'Yuki Tsunoda', 'image/alfa.jpg', 'image/dt.jpg', 'image/alf.jpg'),
(752, 'Mercedes', 'A Equipe Mercedes é uma das equipes mais bem-sucedidas da Fórmula 1, com vários títulos mundiais.', 'Lewis Hamilton', 'George Russell', 'image/MR.jpg', 'image/LHGR.jpg', 'image/44.jpg'),
(753, 'Red Bull Racing', 'A Red Bull Racing é conhecida por sua abordagem agressiva nas corridas de Fórmula 1.', 'Max Verstappen', 'Sergio Pérez', 'image/Rb.jpg', 'image/du.jpg', 'image/rb18-1.jpg'),
(754, 'Scuderia Ferrari', 'A Scuderia Ferrari é uma das equipes mais icônicas e históricas da Fórmula 1.', 'Charles Leclerc', 'Carlos Sainz Jr.', 'image/ff.jpg', 'image/CC.jpg', 'image/f23.jpeg'),
(755, 'McLaren F1 Team', 'A McLaren F1 Team é conhecida por sua tradição e inovação no esporte.', 'Lando Norris', 'Oscar Piastri', 'image/ML.png', 'image/pl.jpg', 'image/ll.jpg'),
(756, 'Aston Martin Cognizant Formula One Team', 'A equipe Aston Martin retorna à Fórmula 1 com uma nova identidade.', 'Fernando Alonso', 'Lance Stroll', 'image/astom.jpg', 'image/FL.jpg', 'image/ast.jpeg'),
(757, 'Alpine F1 Team', 'O Alpine F1 Team representa a Renault na Fórmula 1.', 'Pierre Gasly', 'Esteban Ocon', 'image/alp.jpg', 'image/og.jpg', 'image/ap.jpg'),
(758, 'Willians F1 Team', 'A Williams Grand Prix Engineering Limited, competindo como Williams Racing, é uma equipe e construtor de Fórmula 1 fundada por Frank Williams e Patrick Head.', 'Alexandre Albon', 'Logan Sargento', 'image/w.jpg', 'image/al.jpg', 'image/wi.jpg'),
(759, 'Haas F1 Team', 'Haas Formula LLC, atualmente competindo como MoneyGram Haas F1 Team, é uma equipe de Fórmula 1 estabelecida por Gene Haas em abril de 2014. A equipe planejou sua estreia no início da temporada de 2015, mas optou por adiar a sua entrada para a temporada de 2016.', 'Kevin Magnussen', 'Nico Hulkenberg', 'image/haas.jpg', 'image/h.jpg', 'image/ha.jpg'),
(760, 'Alfa Romeo F1 Team', 'A marca Alfa Romeo retornou para a Fórmula 1 na temporada de 2018 como patrocinador título da equipe Sauber.', 'Valtteri Bottas', 'Zhou Guanyu', 'image/loalfa.jpg', 'image/bz.jpg', 'image/c43.jpg'),
(761, 'Alfa Tauri F1 Team', 'O Alpine F1 Team representa a Renault na Fórmula 1.', 'Daniel Ricciardo', 'Yuki Tsunoda', 'image/alfa.jpg', 'image/dt.jpg', 'image/alf.jpg'),
(762, 'Mercedes', 'A Equipe Mercedes é uma das equipes mais bem-sucedidas da Fórmula 1, com vários títulos mundiais.', 'Lewis Hamilton', 'George Russell', 'image/MR.jpg', 'image/LHGR.jpg', 'image/44.jpg'),
(763, 'Red Bull Racing', 'A Red Bull Racing é conhecida por sua abordagem agressiva nas corridas de Fórmula 1.', 'Max Verstappen', 'Sergio Pérez', 'image/Rb.jpg', 'image/du.jpg', 'image/rb18-1.jpg'),
(764, 'Scuderia Ferrari', 'A Scuderia Ferrari é uma das equipes mais icônicas e históricas da Fórmula 1.', 'Charles Leclerc', 'Carlos Sainz Jr.', 'image/ff.jpg', 'image/CC.jpg', 'image/f23.jpeg'),
(765, 'McLaren F1 Team', 'A McLaren F1 Team é conhecida por sua tradição e inovação no esporte.', 'Lando Norris', 'Oscar Piastri', 'image/ML.png', 'image/pl.jpg', 'image/ll.jpg'),
(766, 'Aston Martin Cognizant Formula One Team', 'A equipe Aston Martin retorna à Fórmula 1 com uma nova identidade.', 'Fernando Alonso', 'Lance Stroll', 'image/astom.jpg', 'image/FL.jpg', 'image/ast.jpeg'),
(767, 'Alpine F1 Team', 'O Alpine F1 Team representa a Renault na Fórmula 1.', 'Pierre Gasly', 'Esteban Ocon', 'image/alp.jpg', 'image/og.jpg', 'image/ap.jpg'),
(768, 'Willians F1 Team', 'A Williams Grand Prix Engineering Limited, competindo como Williams Racing, é uma equipe e construtor de Fórmula 1 fundada por Frank Williams e Patrick Head.', 'Alexandre Albon', 'Logan Sargento', 'image/w.jpg', 'image/al.jpg', 'image/wi.jpg'),
(769, 'Haas F1 Team', 'Haas Formula LLC, atualmente competindo como MoneyGram Haas F1 Team, é uma equipe de Fórmula 1 estabelecida por Gene Haas em abril de 2014. A equipe planejou sua estreia no início da temporada de 2015, mas optou por adiar a sua entrada para a temporada de 2016.', 'Kevin Magnussen', 'Nico Hulkenberg', 'image/haas.jpg', 'image/h.jpg', 'image/ha.jpg'),
(770, 'Alfa Romeo F1 Team', 'A marca Alfa Romeo retornou para a Fórmula 1 na temporada de 2018 como patrocinador título da equipe Sauber.', 'Valtteri Bottas', 'Zhou Guanyu', 'image/loalfa.jpg', 'image/bz.jpg', 'image/c43.jpg'),
(771, 'Alfa Tauri F1 Team', 'O Alpine F1 Team representa a Renault na Fórmula 1.', 'Daniel Ricciardo', 'Yuki Tsunoda', 'image/alfa.jpg', 'image/dt.jpg', 'image/alf.jpg'),
(772, 'Mercedes', 'A Equipe Mercedes é uma das equipes mais bem-sucedidas da Fórmula 1, com vários títulos mundiais.', 'Lewis Hamilton', 'George Russell', 'image/MR.jpg', 'image/LHGR.jpg', 'image/44.jpg'),
(773, 'Red Bull Racing', 'A Red Bull Racing é conhecida por sua abordagem agressiva nas corridas de Fórmula 1.', 'Max Verstappen', 'Sergio Pérez', 'image/Rb.jpg', 'image/du.jpg', 'image/rb18-1.jpg'),
(774, 'Scuderia Ferrari', 'A Scuderia Ferrari é uma das equipes mais icônicas e históricas da Fórmula 1.', 'Charles Leclerc', 'Carlos Sainz Jr.', 'image/ff.jpg', 'image/CC.jpg', 'image/f23.jpeg'),
(775, 'McLaren F1 Team', 'A McLaren F1 Team é conhecida por sua tradição e inovação no esporte.', 'Lando Norris', 'Oscar Piastri', 'image/ML.png', 'image/pl.jpg', 'image/ll.jpg'),
(776, 'Aston Martin Cognizant Formula One Team', 'A equipe Aston Martin retorna à Fórmula 1 com uma nova identidade.', 'Fernando Alonso', 'Lance Stroll', 'image/astom.jpg', 'image/FL.jpg', 'image/ast.jpeg'),
(777, 'Alpine F1 Team', 'O Alpine F1 Team representa a Renault na Fórmula 1.', 'Pierre Gasly', 'Esteban Ocon', 'image/alp.jpg', 'image/og.jpg', 'image/ap.jpg'),
(778, 'Willians F1 Team', 'A Williams Grand Prix Engineering Limited, competindo como Williams Racing, é uma equipe e construtor de Fórmula 1 fundada por Frank Williams e Patrick Head.', 'Alexandre Albon', 'Logan Sargento', 'image/w.jpg', 'image/al.jpg', 'image/wi.jpg'),
(779, 'Haas F1 Team', 'Haas Formula LLC, atualmente competindo como MoneyGram Haas F1 Team, é uma equipe de Fórmula 1 estabelecida por Gene Haas em abril de 2014. A equipe planejou sua estreia no início da temporada de 2015, mas optou por adiar a sua entrada para a temporada de 2016.', 'Kevin Magnussen', 'Nico Hulkenberg', 'image/haas.jpg', 'image/h.jpg', 'image/ha.jpg'),
(780, 'Alfa Romeo F1 Team', 'A marca Alfa Romeo retornou para a Fórmula 1 na temporada de 2018 como patrocinador título da equipe Sauber.', 'Valtteri Bottas', 'Zhou Guanyu', 'image/loalfa.jpg', 'image/bz.jpg', 'image/c43.jpg'),
(781, 'Alfa Tauri F1 Team', 'O Alpine F1 Team representa a Renault na Fórmula 1.', 'Daniel Ricciardo', 'Yuki Tsunoda', 'image/alfa.jpg', 'image/dt.jpg', 'image/alf.jpg'),
(782, 'Mercedes', 'A Equipe Mercedes é uma das equipes mais bem-sucedidas da Fórmula 1, com vários títulos mundiais.', 'Lewis Hamilton', 'George Russell', 'image/MR.jpg', 'image/LHGR.jpg', 'image/44.jpg'),
(783, 'Red Bull Racing', 'A Red Bull Racing é conhecida por sua abordagem agressiva nas corridas de Fórmula 1.', 'Max Verstappen', 'Sergio Pérez', 'image/Rb.jpg', 'image/du.jpg', 'image/rb18-1.jpg'),
(784, 'Scuderia Ferrari', 'A Scuderia Ferrari é uma das equipes mais icônicas e históricas da Fórmula 1.', 'Charles Leclerc', 'Carlos Sainz Jr.', 'image/ff.jpg', 'image/CC.jpg', 'image/f23.jpeg'),
(785, 'McLaren F1 Team', 'A McLaren F1 Team é conhecida por sua tradição e inovação no esporte.', 'Lando Norris', 'Oscar Piastri', 'image/ML.png', 'image/pl.jpg', 'image/ll.jpg'),
(786, 'Aston Martin Cognizant Formula One Team', 'A equipe Aston Martin retorna à Fórmula 1 com uma nova identidade.', 'Fernando Alonso', 'Lance Stroll', 'image/astom.jpg', 'image/FL.jpg', 'image/ast.jpeg'),
(787, 'Alpine F1 Team', 'O Alpine F1 Team representa a Renault na Fórmula 1.', 'Pierre Gasly', 'Esteban Ocon', 'image/alp.jpg', 'image/og.jpg', 'image/ap.jpg'),
(788, 'Willians F1 Team', 'A Williams Grand Prix Engineering Limited, competindo como Williams Racing, é uma equipe e construtor de Fórmula 1 fundada por Frank Williams e Patrick Head.', 'Alexandre Albon', 'Logan Sargento', 'image/w.jpg', 'image/al.jpg', 'image/wi.jpg'),
(789, 'Haas F1 Team', 'Haas Formula LLC, atualmente competindo como MoneyGram Haas F1 Team, é uma equipe de Fórmula 1 estabelecida por Gene Haas em abril de 2014. A equipe planejou sua estreia no início da temporada de 2015, mas optou por adiar a sua entrada para a temporada de 2016.', 'Kevin Magnussen', 'Nico Hulkenberg', 'image/haas.jpg', 'image/h.jpg', 'image/ha.jpg'),
(790, 'Alfa Romeo F1 Team', 'A marca Alfa Romeo retornou para a Fórmula 1 na temporada de 2018 como patrocinador título da equipe Sauber.', 'Valtteri Bottas', 'Zhou Guanyu', 'image/loalfa.jpg', 'image/bz.jpg', 'image/c43.jpg'),
(791, 'Alfa Tauri F1 Team', 'O Alpine F1 Team representa a Renault na Fórmula 1.', 'Daniel Ricciardo', 'Yuki Tsunoda', 'image/alfa.jpg', 'image/dt.jpg', 'image/alf.jpg'),
(792, 'Mercedes', 'A Equipe Mercedes é uma das equipes mais bem-sucedidas da Fórmula 1, com vários títulos mundiais.', 'Lewis Hamilton', 'George Russell', 'image/MR.jpg', 'image/LHGR.jpg', 'image/44.jpg'),
(793, 'Red Bull Racing', 'A Red Bull Racing é conhecida por sua abordagem agressiva nas corridas de Fórmula 1.', 'Max Verstappen', 'Sergio Pérez', 'image/Rb.jpg', 'image/du.jpg', 'image/rb18-1.jpg'),
(794, 'Scuderia Ferrari', 'A Scuderia Ferrari é uma das equipes mais icônicas e históricas da Fórmula 1.', 'Charles Leclerc', 'Carlos Sainz Jr.', 'image/ff.jpg', 'image/CC.jpg', 'image/f23.jpeg'),
(795, 'McLaren F1 Team', 'A McLaren F1 Team é conhecida por sua tradição e inovação no esporte.', 'Lando Norris', 'Oscar Piastri', 'image/ML.png', 'image/pl.jpg', 'image/ll.jpg'),
(796, 'Aston Martin Cognizant Formula One Team', 'A equipe Aston Martin retorna à Fórmula 1 com uma nova identidade.', 'Fernando Alonso', 'Lance Stroll', 'image/astom.jpg', 'image/FL.jpg', 'image/ast.jpeg'),
(797, 'Alpine F1 Team', 'O Alpine F1 Team representa a Renault na Fórmula 1.', 'Pierre Gasly', 'Esteban Ocon', 'image/alp.jpg', 'image/og.jpg', 'image/ap.jpg'),
(798, 'Willians F1 Team', 'A Williams Grand Prix Engineering Limited, competindo como Williams Racing, é uma equipe e construtor de Fórmula 1 fundada por Frank Williams e Patrick Head.', 'Alexandre Albon', 'Logan Sargento', 'image/w.jpg', 'image/al.jpg', 'image/wi.jpg'),
(799, 'Haas F1 Team', 'Haas Formula LLC, atualmente competindo como MoneyGram Haas F1 Team, é uma equipe de Fórmula 1 estabelecida por Gene Haas em abril de 2014. A equipe planejou sua estreia no início da temporada de 2015, mas optou por adiar a sua entrada para a temporada de 2016.', 'Kevin Magnussen', 'Nico Hulkenberg', 'image/haas.jpg', 'image/h.jpg', 'image/ha.jpg'),
(800, 'Alfa Romeo F1 Team', 'A marca Alfa Romeo retornou para a Fórmula 1 na temporada de 2018 como patrocinador título da equipe Sauber.', 'Valtteri Bottas', 'Zhou Guanyu', 'image/loalfa.jpg', 'image/bz.jpg', 'image/c43.jpg'),
(801, 'Alfa Tauri F1 Team', 'O Alpine F1 Team representa a Renault na Fórmula 1.', 'Daniel Ricciardo', 'Yuki Tsunoda', 'image/alfa.jpg', 'image/dt.jpg', 'image/alf.jpg'),
(802, 'Mercedes', 'A Equipe Mercedes é uma das equipes mais bem-sucedidas da Fórmula 1, com vários títulos mundiais.', 'Lewis Hamilton', 'George Russell', 'image/MR.jpg', 'image/LHGR.jpg', 'image/44.jpg'),
(803, 'Red Bull Racing', 'A Red Bull Racing é conhecida por sua abordagem agressiva nas corridas de Fórmula 1.', 'Max Verstappen', 'Sergio Pérez', 'image/Rb.jpg', 'image/du.jpg', 'image/rb18-1.jpg'),
(804, 'Scuderia Ferrari', 'A Scuderia Ferrari é uma das equipes mais icônicas e históricas da Fórmula 1.', 'Charles Leclerc', 'Carlos Sainz Jr.', 'image/ff.jpg', 'image/CC.jpg', 'image/f23.jpeg'),
(805, 'McLaren F1 Team', 'A McLaren F1 Team é conhecida por sua tradição e inovação no esporte.', 'Lando Norris', 'Oscar Piastri', 'image/ML.png', 'image/pl.jpg', 'image/ll.jpg'),
(806, 'Aston Martin Cognizant Formula One Team', 'A equipe Aston Martin retorna à Fórmula 1 com uma nova identidade.', 'Fernando Alonso', 'Lance Stroll', 'image/astom.jpg', 'image/FL.jpg', 'image/ast.jpeg'),
(807, 'Alpine F1 Team', 'O Alpine F1 Team representa a Renault na Fórmula 1.', 'Pierre Gasly', 'Esteban Ocon', 'image/alp.jpg', 'image/og.jpg', 'image/ap.jpg'),
(808, 'Willians F1 Team', 'A Williams Grand Prix Engineering Limited, competindo como Williams Racing, é uma equipe e construtor de Fórmula 1 fundada por Frank Williams e Patrick Head.', 'Alexandre Albon', 'Logan Sargento', 'image/w.jpg', 'image/al.jpg', 'image/wi.jpg'),
(809, 'Haas F1 Team', 'Haas Formula LLC, atualmente competindo como MoneyGram Haas F1 Team, é uma equipe de Fórmula 1 estabelecida por Gene Haas em abril de 2014. A equipe planejou sua estreia no início da temporada de 2015, mas optou por adiar a sua entrada para a temporada de 2016.', 'Kevin Magnussen', 'Nico Hulkenberg', 'image/haas.jpg', 'image/h.jpg', 'image/ha.jpg'),
(810, 'Alfa Romeo F1 Team', 'A marca Alfa Romeo retornou para a Fórmula 1 na temporada de 2018 como patrocinador título da equipe Sauber.', 'Valtteri Bottas', 'Zhou Guanyu', 'image/loalfa.jpg', 'image/bz.jpg', 'image/c43.jpg'),
(811, 'Alfa Tauri F1 Team', 'O Alpine F1 Team representa a Renault na Fórmula 1.', 'Daniel Ricciardo', 'Yuki Tsunoda', 'image/alfa.jpg', 'image/dt.jpg', 'image/alf.jpg'),
(812, 'Mercedes', 'A Equipe Mercedes é uma das equipes mais bem-sucedidas da Fórmula 1, com vários títulos mundiais.', 'Lewis Hamilton', 'George Russell', 'image/MR.jpg', 'image/LHGR.jpg', 'image/44.jpg'),
(813, 'Red Bull Racing', 'A Red Bull Racing é conhecida por sua abordagem agressiva nas corridas de Fórmula 1.', 'Max Verstappen', 'Sergio Pérez', 'image/Rb.jpg', 'image/du.jpg', 'image/rb18-1.jpg'),
(814, 'Scuderia Ferrari', 'A Scuderia Ferrari é uma das equipes mais icônicas e históricas da Fórmula 1.', 'Charles Leclerc', 'Carlos Sainz Jr.', 'image/ff.jpg', 'image/CC.jpg', 'image/f23.jpeg'),
(815, 'McLaren F1 Team', 'A McLaren F1 Team é conhecida por sua tradição e inovação no esporte.', 'Lando Norris', 'Oscar Piastri', 'image/ML.png', 'image/pl.jpg', 'image/ll.jpg'),
(816, 'Aston Martin Cognizant Formula One Team', 'A equipe Aston Martin retorna à Fórmula 1 com uma nova identidade.', 'Fernando Alonso', 'Lance Stroll', 'image/astom.jpg', 'image/FL.jpg', 'image/ast.jpeg'),
(817, 'Alpine F1 Team', 'O Alpine F1 Team representa a Renault na Fórmula 1.', 'Pierre Gasly', 'Esteban Ocon', 'image/alp.jpg', 'image/og.jpg', 'image/ap.jpg'),
(818, 'Willians F1 Team', 'A Williams Grand Prix Engineering Limited, competindo como Williams Racing, é uma equipe e construtor de Fórmula 1 fundada por Frank Williams e Patrick Head.', 'Alexandre Albon', 'Logan Sargento', 'image/w.jpg', 'image/al.jpg', 'image/wi.jpg'),
(819, 'Haas F1 Team', 'Haas Formula LLC, atualmente competindo como MoneyGram Haas F1 Team, é uma equipe de Fórmula 1 estabelecida por Gene Haas em abril de 2014. A equipe planejou sua estreia no início da temporada de 2015, mas optou por adiar a sua entrada para a temporada de 2016.', 'Kevin Magnussen', 'Nico Hulkenberg', 'image/haas.jpg', 'image/h.jpg', 'image/ha.jpg'),
(820, 'Alfa Romeo F1 Team', 'A marca Alfa Romeo retornou para a Fórmula 1 na temporada de 2018 como patrocinador título da equipe Sauber.', 'Valtteri Bottas', 'Zhou Guanyu', 'image/loalfa.jpg', 'image/bz.jpg', 'image/c43.jpg'),
(821, 'Alfa Tauri F1 Team', 'O Alpine F1 Team representa a Renault na Fórmula 1.', 'Daniel Ricciardo', 'Yuki Tsunoda', 'image/alfa.jpg', 'image/dt.jpg', 'image/alf.jpg'),
(822, 'Mercedes', 'A Equipe Mercedes é uma das equipes mais bem-sucedidas da Fórmula 1, com vários títulos mundiais.', 'Lewis Hamilton', 'George Russell', 'image/MR.jpg', 'image/LHGR.jpg', 'image/44.jpg'),
(823, 'Red Bull Racing', 'A Red Bull Racing é conhecida por sua abordagem agressiva nas corridas de Fórmula 1.', 'Max Verstappen', 'Sergio Pérez', 'image/Rb.jpg', 'image/du.jpg', 'image/rb18-1.jpg'),
(824, 'Scuderia Ferrari', 'A Scuderia Ferrari é uma das equipes mais icônicas e históricas da Fórmula 1.', 'Charles Leclerc', 'Carlos Sainz Jr.', 'image/ff.jpg', 'image/CC.jpg', 'image/f23.jpeg'),
(825, 'McLaren F1 Team', 'A McLaren F1 Team é conhecida por sua tradição e inovação no esporte.', 'Lando Norris', 'Oscar Piastri', 'image/ML.png', 'image/pl.jpg', 'image/ll.jpg'),
(826, 'Aston Martin Cognizant Formula One Team', 'A equipe Aston Martin retorna à Fórmula 1 com uma nova identidade.', 'Fernando Alonso', 'Lance Stroll', 'image/astom.jpg', 'image/FL.jpg', 'image/ast.jpeg'),
(827, 'Alpine F1 Team', 'O Alpine F1 Team representa a Renault na Fórmula 1.', 'Pierre Gasly', 'Esteban Ocon', 'image/alp.jpg', 'image/og.jpg', 'image/ap.jpg'),
(828, 'Willians F1 Team', 'A Williams Grand Prix Engineering Limited, competindo como Williams Racing, é uma equipe e construtor de Fórmula 1 fundada por Frank Williams e Patrick Head.', 'Alexandre Albon', 'Logan Sargento', 'image/w.jpg', 'image/al.jpg', 'image/wi.jpg'),
(829, 'Haas F1 Team', 'Haas Formula LLC, atualmente competindo como MoneyGram Haas F1 Team, é uma equipe de Fórmula 1 estabelecida por Gene Haas em abril de 2014. A equipe planejou sua estreia no início da temporada de 2015, mas optou por adiar a sua entrada para a temporada de 2016.', 'Kevin Magnussen', 'Nico Hulkenberg', 'image/haas.jpg', 'image/h.jpg', 'image/ha.jpg'),
(830, 'Alfa Romeo F1 Team', 'A marca Alfa Romeo retornou para a Fórmula 1 na temporada de 2018 como patrocinador título da equipe Sauber.', 'Valtteri Bottas', 'Zhou Guanyu', 'image/loalfa.jpg', 'image/bz.jpg', 'image/c43.jpg'),
(831, 'Alfa Tauri F1 Team', 'O Alpine F1 Team representa a Renault na Fórmula 1.', 'Daniel Ricciardo', 'Yuki Tsunoda', 'image/alfa.jpg', 'image/dt.jpg', 'image/alf.jpg'),
(832, 'Mercedes', 'A Equipe Mercedes é uma das equipes mais bem-sucedidas da Fórmula 1, com vários títulos mundiais.', 'Lewis Hamilton', 'George Russell', 'image/MR.jpg', 'image/LHGR.jpg', 'image/44.jpg'),
(833, 'Red Bull Racing', 'A Red Bull Racing é conhecida por sua abordagem agressiva nas corridas de Fórmula 1.', 'Max Verstappen', 'Sergio Pérez', 'image/Rb.jpg', 'image/du.jpg', 'image/rb18-1.jpg'),
(834, 'Scuderia Ferrari', 'A Scuderia Ferrari é uma das equipes mais icônicas e históricas da Fórmula 1.', 'Charles Leclerc', 'Carlos Sainz Jr.', 'image/ff.jpg', 'image/CC.jpg', 'image/f23.jpeg'),
(835, 'McLaren F1 Team', 'A McLaren F1 Team é conhecida por sua tradição e inovação no esporte.', 'Lando Norris', 'Oscar Piastri', 'image/ML.png', 'image/pl.jpg', 'image/ll.jpg'),
(836, 'Aston Martin Cognizant Formula One Team', 'A equipe Aston Martin retorna à Fórmula 1 com uma nova identidade.', 'Fernando Alonso', 'Lance Stroll', 'image/astom.jpg', 'image/FL.jpg', 'image/ast.jpeg'),
(837, 'Alpine F1 Team', 'O Alpine F1 Team representa a Renault na Fórmula 1.', 'Pierre Gasly', 'Esteban Ocon', 'image/alp.jpg', 'image/og.jpg', 'image/ap.jpg'),
(838, 'Willians F1 Team', 'A Williams Grand Prix Engineering Limited, competindo como Williams Racing, é uma equipe e construtor de Fórmula 1 fundada por Frank Williams e Patrick Head.', 'Alexandre Albon', 'Logan Sargento', 'image/w.jpg', 'image/al.jpg', 'image/wi.jpg'),
(839, 'Haas F1 Team', 'Haas Formula LLC, atualmente competindo como MoneyGram Haas F1 Team, é uma equipe de Fórmula 1 estabelecida por Gene Haas em abril de 2014. A equipe planejou sua estreia no início da temporada de 2015, mas optou por adiar a sua entrada para a temporada de 2016.', 'Kevin Magnussen', 'Nico Hulkenberg', 'image/haas.jpg', 'image/h.jpg', 'image/ha.jpg'),
(840, 'Alfa Romeo F1 Team', 'A marca Alfa Romeo retornou para a Fórmula 1 na temporada de 2018 como patrocinador título da equipe Sauber.', 'Valtteri Bottas', 'Zhou Guanyu', 'image/loalfa.jpg', 'image/bz.jpg', 'image/c43.jpg'),
(841, 'Alfa Tauri F1 Team', 'O Alpine F1 Team representa a Renault na Fórmula 1.', 'Daniel Ricciardo', 'Yuki Tsunoda', 'image/alfa.jpg', 'image/dt.jpg', 'image/alf.jpg'),
(842, 'Mercedes', 'A Equipe Mercedes é uma das equipes mais bem-sucedidas da Fórmula 1, com vários títulos mundiais.', 'Lewis Hamilton', 'George Russell', 'image/MR.jpg', 'image/LHGR.jpg', 'image/44.jpg'),
(843, 'Red Bull Racing', 'A Red Bull Racing é conhecida por sua abordagem agressiva nas corridas de Fórmula 1.', 'Max Verstappen', 'Sergio Pérez', 'image/Rb.jpg', 'image/du.jpg', 'image/rb18-1.jpg'),
(844, 'Scuderia Ferrari', 'A Scuderia Ferrari é uma das equipes mais icônicas e históricas da Fórmula 1.', 'Charles Leclerc', 'Carlos Sainz Jr.', 'image/ff.jpg', 'image/CC.jpg', 'image/f23.jpeg'),
(845, 'McLaren F1 Team', 'A McLaren F1 Team é conhecida por sua tradição e inovação no esporte.', 'Lando Norris', 'Oscar Piastri', 'image/ML.png', 'image/pl.jpg', 'image/ll.jpg'),
(846, 'Aston Martin Cognizant Formula One Team', 'A equipe Aston Martin retorna à Fórmula 1 com uma nova identidade.', 'Fernando Alonso', 'Lance Stroll', 'image/astom.jpg', 'image/FL.jpg', 'image/ast.jpeg'),
(847, 'Alpine F1 Team', 'O Alpine F1 Team representa a Renault na Fórmula 1.', 'Pierre Gasly', 'Esteban Ocon', 'image/alp.jpg', 'image/og.jpg', 'image/ap.jpg'),
(848, 'Willians F1 Team', 'A Williams Grand Prix Engineering Limited, competindo como Williams Racing, é uma equipe e construtor de Fórmula 1 fundada por Frank Williams e Patrick Head.', 'Alexandre Albon', 'Logan Sargento', 'image/w.jpg', 'image/al.jpg', 'image/wi.jpg'),
(849, 'Haas F1 Team', 'Haas Formula LLC, atualmente competindo como MoneyGram Haas F1 Team, é uma equipe de Fórmula 1 estabelecida por Gene Haas em abril de 2014. A equipe planejou sua estreia no início da temporada de 2015, mas optou por adiar a sua entrada para a temporada de 2016.', 'Kevin Magnussen', 'Nico Hulkenberg', 'image/haas.jpg', 'image/h.jpg', 'image/ha.jpg'),
(850, 'Alfa Romeo F1 Team', 'A marca Alfa Romeo retornou para a Fórmula 1 na temporada de 2018 como patrocinador título da equipe Sauber.', 'Valtteri Bottas', 'Zhou Guanyu', 'image/loalfa.jpg', 'image/bz.jpg', 'image/c43.jpg'),
(851, 'Alfa Tauri F1 Team', 'O Alpine F1 Team representa a Renault na Fórmula 1.', 'Daniel Ricciardo', 'Yuki Tsunoda', 'image/alfa.jpg', 'image/dt.jpg', 'image/alf.jpg'),
(852, 'Mercedes', 'A Equipe Mercedes é uma das equipes mais bem-sucedidas da Fórmula 1, com vários títulos mundiais.', 'Lewis Hamilton', 'George Russell', 'image/MR.jpg', 'image/LHGR.jpg', 'image/44.jpg'),
(853, 'Red Bull Racing', 'A Red Bull Racing é conhecida por sua abordagem agressiva nas corridas de Fórmula 1.', 'Max Verstappen', 'Sergio Pérez', 'image/Rb.jpg', 'image/du.jpg', 'image/rb18-1.jpg'),
(854, 'Scuderia Ferrari', 'A Scuderia Ferrari é uma das equipes mais icônicas e históricas da Fórmula 1.', 'Charles Leclerc', 'Carlos Sainz Jr.', 'image/ff.jpg', 'image/CC.jpg', 'image/f23.jpeg'),
(855, 'McLaren F1 Team', 'A McLaren F1 Team é conhecida por sua tradição e inovação no esporte.', 'Lando Norris', 'Oscar Piastri', 'image/ML.png', 'image/pl.jpg', 'image/ll.jpg'),
(856, 'Aston Martin Cognizant Formula One Team', 'A equipe Aston Martin retorna à Fórmula 1 com uma nova identidade.', 'Fernando Alonso', 'Lance Stroll', 'image/astom.jpg', 'image/FL.jpg', 'image/ast.jpeg'),
(857, 'Alpine F1 Team', 'O Alpine F1 Team representa a Renault na Fórmula 1.', 'Pierre Gasly', 'Esteban Ocon', 'image/alp.jpg', 'image/og.jpg', 'image/ap.jpg'),
(858, 'Willians F1 Team', 'A Williams Grand Prix Engineering Limited, competindo como Williams Racing, é uma equipe e construtor de Fórmula 1 fundada por Frank Williams e Patrick Head.', 'Alexandre Albon', 'Logan Sargento', 'image/w.jpg', 'image/al.jpg', 'image/wi.jpg'),
(859, 'Haas F1 Team', 'Haas Formula LLC, atualmente competindo como MoneyGram Haas F1 Team, é uma equipe de Fórmula 1 estabelecida por Gene Haas em abril de 2014. A equipe planejou sua estreia no início da temporada de 2015, mas optou por adiar a sua entrada para a temporada de 2016.', 'Kevin Magnussen', 'Nico Hulkenberg', 'image/haas.jpg', 'image/h.jpg', 'image/ha.jpg'),
(860, 'Alfa Romeo F1 Team', 'A marca Alfa Romeo retornou para a Fórmula 1 na temporada de 2018 como patrocinador título da equipe Sauber.', 'Valtteri Bottas', 'Zhou Guanyu', 'image/loalfa.jpg', 'image/bz.jpg', 'image/c43.jpg'),
(861, 'Alfa Tauri F1 Team', 'O Alpine F1 Team representa a Renault na Fórmula 1.', 'Daniel Ricciardo', 'Yuki Tsunoda', 'image/alfa.jpg', 'image/dt.jpg', 'image/alf.jpg'),
(862, 'Mercedes', 'A Equipe Mercedes é uma das equipes mais bem-sucedidas da Fórmula 1, com vários títulos mundiais.', 'Lewis Hamilton', 'George Russell', 'image/MR.jpg', 'image/LHGR.jpg', 'image/44.jpg'),
(863, 'Red Bull Racing', 'A Red Bull Racing é conhecida por sua abordagem agressiva nas corridas de Fórmula 1.', 'Max Verstappen', 'Sergio Pérez', 'image/Rb.jpg', 'image/du.jpg', 'image/rb18-1.jpg'),
(864, 'Scuderia Ferrari', 'A Scuderia Ferrari é uma das equipes mais icônicas e históricas da Fórmula 1.', 'Charles Leclerc', 'Carlos Sainz Jr.', 'image/ff.jpg', 'image/CC.jpg', 'image/f23.jpeg'),
(865, 'McLaren F1 Team', 'A McLaren F1 Team é conhecida por sua tradição e inovação no esporte.', 'Lando Norris', 'Oscar Piastri', 'image/ML.png', 'image/pl.jpg', 'image/ll.jpg'),
(866, 'Aston Martin Cognizant Formula One Team', 'A equipe Aston Martin retorna à Fórmula 1 com uma nova identidade.', 'Fernando Alonso', 'Lance Stroll', 'image/astom.jpg', 'image/FL.jpg', 'image/ast.jpeg'),
(867, 'Alpine F1 Team', 'O Alpine F1 Team representa a Renault na Fórmula 1.', 'Pierre Gasly', 'Esteban Ocon', 'image/alp.jpg', 'image/og.jpg', 'image/ap.jpg'),
(868, 'Willians F1 Team', 'A Williams Grand Prix Engineering Limited, competindo como Williams Racing, é uma equipe e construtor de Fórmula 1 fundada por Frank Williams e Patrick Head.', 'Alexandre Albon', 'Logan Sargento', 'image/w.jpg', 'image/al.jpg', 'image/wi.jpg'),
(869, 'Haas F1 Team', 'Haas Formula LLC, atualmente competindo como MoneyGram Haas F1 Team, é uma equipe de Fórmula 1 estabelecida por Gene Haas em abril de 2014. A equipe planejou sua estreia no início da temporada de 2015, mas optou por adiar a sua entrada para a temporada de 2016.', 'Kevin Magnussen', 'Nico Hulkenberg', 'image/haas.jpg', 'image/h.jpg', 'image/ha.jpg'),
(870, 'Alfa Romeo F1 Team', 'A marca Alfa Romeo retornou para a Fórmula 1 na temporada de 2018 como patrocinador título da equipe Sauber.', 'Valtteri Bottas', 'Zhou Guanyu', 'image/loalfa.jpg', 'image/bz.jpg', 'image/c43.jpg'),
(871, 'Alfa Tauri F1 Team', 'O Alpine F1 Team representa a Renault na Fórmula 1.', 'Daniel Ricciardo', 'Yuki Tsunoda', 'image/alfa.jpg', 'image/dt.jpg', 'image/alf.jpg'),
(872, 'Mercedes', 'A Equipe Mercedes é uma das equipes mais bem-sucedidas da Fórmula 1, com vários títulos mundiais.', 'Lewis Hamilton', 'George Russell', 'image/MR.jpg', 'image/LHGR.jpg', 'image/44.jpg'),
(873, 'Red Bull Racing', 'A Red Bull Racing é conhecida por sua abordagem agressiva nas corridas de Fórmula 1.', 'Max Verstappen', 'Sergio Pérez', 'image/Rb.jpg', 'image/du.jpg', 'image/rb18-1.jpg'),
(874, 'Scuderia Ferrari', 'A Scuderia Ferrari é uma das equipes mais icônicas e históricas da Fórmula 1.', 'Charles Leclerc', 'Carlos Sainz Jr.', 'image/ff.jpg', 'image/CC.jpg', 'image/f23.jpeg'),
(875, 'McLaren F1 Team', 'A McLaren F1 Team é conhecida por sua tradição e inovação no esporte.', 'Lando Norris', 'Oscar Piastri', 'image/ML.png', 'image/pl.jpg', 'image/ll.jpg'),
(876, 'Aston Martin Cognizant Formula One Team', 'A equipe Aston Martin retorna à Fórmula 1 com uma nova identidade.', 'Fernando Alonso', 'Lance Stroll', 'image/astom.jpg', 'image/FL.jpg', 'image/ast.jpeg'),
(877, 'Alpine F1 Team', 'O Alpine F1 Team representa a Renault na Fórmula 1.', 'Pierre Gasly', 'Esteban Ocon', 'image/alp.jpg', 'image/og.jpg', 'image/ap.jpg'),
(878, 'Willians F1 Team', 'A Williams Grand Prix Engineering Limited, competindo como Williams Racing, é uma equipe e construtor de Fórmula 1 fundada por Frank Williams e Patrick Head.', 'Alexandre Albon', 'Logan Sargento', 'image/w.jpg', 'image/al.jpg', 'image/wi.jpg'),
(879, 'Haas F1 Team', 'Haas Formula LLC, atualmente competindo como MoneyGram Haas F1 Team, é uma equipe de Fórmula 1 estabelecida por Gene Haas em abril de 2014. A equipe planejou sua estreia no início da temporada de 2015, mas optou por adiar a sua entrada para a temporada de 2016.', 'Kevin Magnussen', 'Nico Hulkenberg', 'image/haas.jpg', 'image/h.jpg', 'image/ha.jpg'),
(880, 'Alfa Romeo F1 Team', 'A marca Alfa Romeo retornou para a Fórmula 1 na temporada de 2018 como patrocinador título da equipe Sauber.', 'Valtteri Bottas', 'Zhou Guanyu', 'image/loalfa.jpg', 'image/bz.jpg', 'image/c43.jpg'),
(881, 'Alfa Tauri F1 Team', 'O Alpine F1 Team representa a Renault na Fórmula 1.', 'Daniel Ricciardo', 'Yuki Tsunoda', 'image/alfa.jpg', 'image/dt.jpg', 'image/alf.jpg'),
(882, 'Mercedes', 'A Equipe Mercedes é uma das equipes mais bem-sucedidas da Fórmula 1, com vários títulos mundiais.', 'Lewis Hamilton', 'George Russell', 'image/MR.jpg', 'image/LHGR.jpg', 'image/44.jpg'),
(883, 'Red Bull Racing', 'A Red Bull Racing é conhecida por sua abordagem agressiva nas corridas de Fórmula 1.', 'Max Verstappen', 'Sergio Pérez', 'image/Rb.jpg', 'image/du.jpg', 'image/rb18-1.jpg'),
(884, 'Scuderia Ferrari', 'A Scuderia Ferrari é uma das equipes mais icônicas e históricas da Fórmula 1.', 'Charles Leclerc', 'Carlos Sainz Jr.', 'image/ff.jpg', 'image/CC.jpg', 'image/f23.jpeg'),
(885, 'McLaren F1 Team', 'A McLaren F1 Team é conhecida por sua tradição e inovação no esporte.', 'Lando Norris', 'Oscar Piastri', 'image/ML.png', 'image/pl.jpg', 'image/ll.jpg'),
(886, 'Aston Martin Cognizant Formula One Team', 'A equipe Aston Martin retorna à Fórmula 1 com uma nova identidade.', 'Fernando Alonso', 'Lance Stroll', 'image/astom.jpg', 'image/FL.jpg', 'image/ast.jpeg'),
(887, 'Alpine F1 Team', 'O Alpine F1 Team representa a Renault na Fórmula 1.', 'Pierre Gasly', 'Esteban Ocon', 'image/alp.jpg', 'image/og.jpg', 'image/ap.jpg'),
(888, 'Willians F1 Team', 'A Williams Grand Prix Engineering Limited, competindo como Williams Racing, é uma equipe e construtor de Fórmula 1 fundada por Frank Williams e Patrick Head.', 'Alexandre Albon', 'Logan Sargento', 'image/w.jpg', 'image/al.jpg', 'image/wi.jpg'),
(889, 'Haas F1 Team', 'Haas Formula LLC, atualmente competindo como MoneyGram Haas F1 Team, é uma equipe de Fórmula 1 estabelecida por Gene Haas em abril de 2014. A equipe planejou sua estreia no início da temporada de 2015, mas optou por adiar a sua entrada para a temporada de 2016.', 'Kevin Magnussen', 'Nico Hulkenberg', 'image/haas.jpg', 'image/h.jpg', 'image/ha.jpg'),
(890, 'Alfa Romeo F1 Team', 'A marca Alfa Romeo retornou para a Fórmula 1 na temporada de 2018 como patrocinador título da equipe Sauber.', 'Valtteri Bottas', 'Zhou Guanyu', 'image/loalfa.jpg', 'image/bz.jpg', 'image/c43.jpg'),
(891, 'Alfa Tauri F1 Team', 'O Alpine F1 Team representa a Renault na Fórmula 1.', 'Daniel Ricciardo', 'Yuki Tsunoda', 'image/alfa.jpg', 'image/dt.jpg', 'image/alf.jpg'),
(892, 'Mercedes', 'A Equipe Mercedes é uma das equipes mais bem-sucedidas da Fórmula 1, com vários títulos mundiais.', 'Lewis Hamilton', 'George Russell', 'image/MR.jpg', 'image/LHGR.jpg', 'image/44.jpg'),
(893, 'Red Bull Racing', 'A Red Bull Racing é conhecida por sua abordagem agressiva nas corridas de Fórmula 1.', 'Max Verstappen', 'Sergio Pérez', 'image/Rb.jpg', 'image/du.jpg', 'image/rb18-1.jpg'),
(894, 'Scuderia Ferrari', 'A Scuderia Ferrari é uma das equipes mais icônicas e históricas da Fórmula 1.', 'Charles Leclerc', 'Carlos Sainz Jr.', 'image/ff.jpg', 'image/CC.jpg', 'image/f23.jpeg'),
(895, 'McLaren F1 Team', 'A McLaren F1 Team é conhecida por sua tradição e inovação no esporte.', 'Lando Norris', 'Oscar Piastri', 'image/ML.png', 'image/pl.jpg', 'image/ll.jpg'),
(896, 'Aston Martin Cognizant Formula One Team', 'A equipe Aston Martin retorna à Fórmula 1 com uma nova identidade.', 'Fernando Alonso', 'Lance Stroll', 'image/astom.jpg', 'image/FL.jpg', 'image/ast.jpeg'),
(897, 'Alpine F1 Team', 'O Alpine F1 Team representa a Renault na Fórmula 1.', 'Pierre Gasly', 'Esteban Ocon', 'image/alp.jpg', 'image/og.jpg', 'image/ap.jpg'),
(898, 'Willians F1 Team', 'A Williams Grand Prix Engineering Limited, competindo como Williams Racing, é uma equipe e construtor de Fórmula 1 fundada por Frank Williams e Patrick Head.', 'Alexandre Albon', 'Logan Sargento', 'image/w.jpg', 'image/al.jpg', 'image/wi.jpg'),
(899, 'Haas F1 Team', 'Haas Formula LLC, atualmente competindo como MoneyGram Haas F1 Team, é uma equipe de Fórmula 1 estabelecida por Gene Haas em abril de 2014. A equipe planejou sua estreia no início da temporada de 2015, mas optou por adiar a sua entrada para a temporada de 2016.', 'Kevin Magnussen', 'Nico Hulkenberg', 'image/haas.jpg', 'image/h.jpg', 'image/ha.jpg'),
(900, 'Alfa Romeo F1 Team', 'A marca Alfa Romeo retornou para a Fórmula 1 na temporada de 2018 como patrocinador título da equipe Sauber.', 'Valtteri Bottas', 'Zhou Guanyu', 'image/loalfa.jpg', 'image/bz.jpg', 'image/c43.jpg'),
(901, 'Alfa Tauri F1 Team', 'O Alpine F1 Team representa a Renault na Fórmula 1.', 'Daniel Ricciardo', 'Yuki Tsunoda', 'image/alfa.jpg', 'image/dt.jpg', 'image/alf.jpg'),
(902, 'Mercedes', 'A Equipe Mercedes é uma das equipes mais bem-sucedidas da Fórmula 1, com vários títulos mundiais.', 'Lewis Hamilton', 'George Russell', 'image/MR.jpg', 'image/LHGR.jpg', 'image/44.jpg'),
(903, 'Red Bull Racing', 'A Red Bull Racing é conhecida por sua abordagem agressiva nas corridas de Fórmula 1.', 'Max Verstappen', 'Sergio Pérez', 'image/Rb.jpg', 'image/du.jpg', 'image/rb18-1.jpg'),
(904, 'Scuderia Ferrari', 'A Scuderia Ferrari é uma das equipes mais icônicas e históricas da Fórmula 1.', 'Charles Leclerc', 'Carlos Sainz Jr.', 'image/ff.jpg', 'image/CC.jpg', 'image/f23.jpeg'),
(905, 'McLaren F1 Team', 'A McLaren F1 Team é conhecida por sua tradição e inovação no esporte.', 'Lando Norris', 'Oscar Piastri', 'image/ML.png', 'image/pl.jpg', 'image/ll.jpg'),
(906, 'Aston Martin Cognizant Formula One Team', 'A equipe Aston Martin retorna à Fórmula 1 com uma nova identidade.', 'Fernando Alonso', 'Lance Stroll', 'image/astom.jpg', 'image/FL.jpg', 'image/ast.jpeg'),
(907, 'Alpine F1 Team', 'O Alpine F1 Team representa a Renault na Fórmula 1.', 'Pierre Gasly', 'Esteban Ocon', 'image/alp.jpg', 'image/og.jpg', 'image/ap.jpg'),
(908, 'Willians F1 Team', 'A Williams Grand Prix Engineering Limited, competindo como Williams Racing, é uma equipe e construtor de Fórmula 1 fundada por Frank Williams e Patrick Head.', 'Alexandre Albon', 'Logan Sargento', 'image/w.jpg', 'image/al.jpg', 'image/wi.jpg'),
(909, 'Haas F1 Team', 'Haas Formula LLC, atualmente competindo como MoneyGram Haas F1 Team, é uma equipe de Fórmula 1 estabelecida por Gene Haas em abril de 2014. A equipe planejou sua estreia no início da temporada de 2015, mas optou por adiar a sua entrada para a temporada de 2016.', 'Kevin Magnussen', 'Nico Hulkenberg', 'image/haas.jpg', 'image/h.jpg', 'image/ha.jpg'),
(910, 'Alfa Romeo F1 Team', 'A marca Alfa Romeo retornou para a Fórmula 1 na temporada de 2018 como patrocinador título da equipe Sauber.', 'Valtteri Bottas', 'Zhou Guanyu', 'image/loalfa.jpg', 'image/bz.jpg', 'image/c43.jpg'),
(911, 'Alfa Tauri F1 Team', 'O Alpine F1 Team representa a Renault na Fórmula 1.', 'Daniel Ricciardo', 'Yuki Tsunoda', 'image/alfa.jpg', 'image/dt.jpg', 'image/alf.jpg'),
(912, 'Mercedes', 'A Equipe Mercedes é uma das equipes mais bem-sucedidas da Fórmula 1, com vários títulos mundiais.', 'Lewis Hamilton', 'George Russell', 'image/MR.jpg', 'image/LHGR.jpg', 'image/44.jpg'),
(913, 'Red Bull Racing', 'A Red Bull Racing é conhecida por sua abordagem agressiva nas corridas de Fórmula 1.', 'Max Verstappen', 'Sergio Pérez', 'image/Rb.jpg', 'image/du.jpg', 'image/rb18-1.jpg'),
(914, 'Scuderia Ferrari', 'A Scuderia Ferrari é uma das equipes mais icônicas e históricas da Fórmula 1.', 'Charles Leclerc', 'Carlos Sainz Jr.', 'image/ff.jpg', 'image/CC.jpg', 'image/f23.jpeg'),
(915, 'McLaren F1 Team', 'A McLaren F1 Team é conhecida por sua tradição e inovação no esporte.', 'Lando Norris', 'Oscar Piastri', 'image/ML.png', 'image/pl.jpg', 'image/ll.jpg'),
(916, 'Aston Martin Cognizant Formula One Team', 'A equipe Aston Martin retorna à Fórmula 1 com uma nova identidade.', 'Fernando Alonso', 'Lance Stroll', 'image/astom.jpg', 'image/FL.jpg', 'image/ast.jpeg'),
(917, 'Alpine F1 Team', 'O Alpine F1 Team representa a Renault na Fórmula 1.', 'Pierre Gasly', 'Esteban Ocon', 'image/alp.jpg', 'image/og.jpg', 'image/ap.jpg'),
(918, 'Willians F1 Team', 'A Williams Grand Prix Engineering Limited, competindo como Williams Racing, é uma equipe e construtor de Fórmula 1 fundada por Frank Williams e Patrick Head.', 'Alexandre Albon', 'Logan Sargento', 'image/w.jpg', 'image/al.jpg', 'image/wi.jpg'),
(919, 'Haas F1 Team', 'Haas Formula LLC, atualmente competindo como MoneyGram Haas F1 Team, é uma equipe de Fórmula 1 estabelecida por Gene Haas em abril de 2014. A equipe planejou sua estreia no início da temporada de 2015, mas optou por adiar a sua entrada para a temporada de 2016.', 'Kevin Magnussen', 'Nico Hulkenberg', 'image/haas.jpg', 'image/h.jpg', 'image/ha.jpg'),
(920, 'Alfa Romeo F1 Team', 'A marca Alfa Romeo retornou para a Fórmula 1 na temporada de 2018 como patrocinador título da equipe Sauber.', 'Valtteri Bottas', 'Zhou Guanyu', 'image/loalfa.jpg', 'image/bz.jpg', 'image/c43.jpg'),
(921, 'Alfa Tauri F1 Team', 'O Alpine F1 Team representa a Renault na Fórmula 1.', 'Daniel Ricciardo', 'Yuki Tsunoda', 'image/alfa.jpg', 'image/dt.jpg', 'image/alf.jpg'),
(922, 'Mercedes', 'A Equipe Mercedes é uma das equipes mais bem-sucedidas da Fórmula 1, com vários títulos mundiais.', 'Lewis Hamilton', 'George Russell', 'image/MR.jpg', 'image/LHGR.jpg', 'image/44.jpg'),
(923, 'Red Bull Racing', 'A Red Bull Racing é conhecida por sua abordagem agressiva nas corridas de Fórmula 1.', 'Max Verstappen', 'Sergio Pérez', 'image/Rb.jpg', 'image/du.jpg', 'image/rb18-1.jpg'),
(924, 'Scuderia Ferrari', 'A Scuderia Ferrari é uma das equipes mais icônicas e históricas da Fórmula 1.', 'Charles Leclerc', 'Carlos Sainz Jr.', 'image/ff.jpg', 'image/CC.jpg', 'image/f23.jpeg'),
(925, 'McLaren F1 Team', 'A McLaren F1 Team é conhecida por sua tradição e inovação no esporte.', 'Lando Norris', 'Oscar Piastri', 'image/ML.png', 'image/pl.jpg', 'image/ll.jpg'),
(926, 'Aston Martin Cognizant Formula One Team', 'A equipe Aston Martin retorna à Fórmula 1 com uma nova identidade.', 'Fernando Alonso', 'Lance Stroll', 'image/astom.jpg', 'image/FL.jpg', 'image/ast.jpeg'),
(927, 'Alpine F1 Team', 'O Alpine F1 Team representa a Renault na Fórmula 1.', 'Pierre Gasly', 'Esteban Ocon', 'image/alp.jpg', 'image/og.jpg', 'image/ap.jpg'),
(928, 'Willians F1 Team', 'A Williams Grand Prix Engineering Limited, competindo como Williams Racing, é uma equipe e construtor de Fórmula 1 fundada por Frank Williams e Patrick Head.', 'Alexandre Albon', 'Logan Sargento', 'image/w.jpg', 'image/al.jpg', 'image/wi.jpg'),
(929, 'Haas F1 Team', 'Haas Formula LLC, atualmente competindo como MoneyGram Haas F1 Team, é uma equipe de Fórmula 1 estabelecida por Gene Haas em abril de 2014. A equipe planejou sua estreia no início da temporada de 2015, mas optou por adiar a sua entrada para a temporada de 2016.', 'Kevin Magnussen', 'Nico Hulkenberg', 'image/haas.jpg', 'image/h.jpg', 'image/ha.jpg'),
(930, 'Alfa Romeo F1 Team', 'A marca Alfa Romeo retornou para a Fórmula 1 na temporada de 2018 como patrocinador título da equipe Sauber.', 'Valtteri Bottas', 'Zhou Guanyu', 'image/loalfa.jpg', 'image/bz.jpg', 'image/c43.jpg'),
(931, 'Alfa Tauri F1 Team', 'O Alpine F1 Team representa a Renault na Fórmula 1.', 'Daniel Ricciardo', 'Yuki Tsunoda', 'image/alfa.jpg', 'image/dt.jpg', 'image/alf.jpg'),
(932, 'Mercedes', 'A Equipe Mercedes é uma das equipes mais bem-sucedidas da Fórmula 1, com vários títulos mundiais.', 'Lewis Hamilton', 'George Russell', 'image/MR.jpg', 'image/LHGR.jpg', 'image/44.jpg'),
(933, 'Red Bull Racing', 'A Red Bull Racing é conhecida por sua abordagem agressiva nas corridas de Fórmula 1.', 'Max Verstappen', 'Sergio Pérez', 'image/Rb.jpg', 'image/du.jpg', 'image/rb18-1.jpg'),
(934, 'Scuderia Ferrari', 'A Scuderia Ferrari é uma das equipes mais icônicas e históricas da Fórmula 1.', 'Charles Leclerc', 'Carlos Sainz Jr.', 'image/ff.jpg', 'image/CC.jpg', 'image/f23.jpeg'),
(935, 'McLaren F1 Team', 'A McLaren F1 Team é conhecida por sua tradição e inovação no esporte.', 'Lando Norris', 'Oscar Piastri', 'image/ML.png', 'image/pl.jpg', 'image/ll.jpg'),
(936, 'Aston Martin Cognizant Formula One Team', 'A equipe Aston Martin retorna à Fórmula 1 com uma nova identidade.', 'Fernando Alonso', 'Lance Stroll', 'image/astom.jpg', 'image/FL.jpg', 'image/ast.jpeg'),
(937, 'Alpine F1 Team', 'O Alpine F1 Team representa a Renault na Fórmula 1.', 'Pierre Gasly', 'Esteban Ocon', 'image/alp.jpg', 'image/og.jpg', 'image/ap.jpg'),
(938, 'Willians F1 Team', 'A Williams Grand Prix Engineering Limited, competindo como Williams Racing, é uma equipe e construtor de Fórmula 1 fundada por Frank Williams e Patrick Head.', 'Alexandre Albon', 'Logan Sargento', 'image/w.jpg', 'image/al.jpg', 'image/wi.jpg'),
(939, 'Haas F1 Team', 'Haas Formula LLC, atualmente competindo como MoneyGram Haas F1 Team, é uma equipe de Fórmula 1 estabelecida por Gene Haas em abril de 2014. A equipe planejou sua estreia no início da temporada de 2015, mas optou por adiar a sua entrada para a temporada de 2016.', 'Kevin Magnussen', 'Nico Hulkenberg', 'image/haas.jpg', 'image/h.jpg', 'image/ha.jpg'),
(940, 'Alfa Romeo F1 Team', 'A marca Alfa Romeo retornou para a Fórmula 1 na temporada de 2018 como patrocinador título da equipe Sauber.', 'Valtteri Bottas', 'Zhou Guanyu', 'image/loalfa.jpg', 'image/bz.jpg', 'image/c43.jpg'),
(941, 'Alfa Tauri F1 Team', 'O Alpine F1 Team representa a Renault na Fórmula 1.', 'Daniel Ricciardo', 'Yuki Tsunoda', 'image/alfa.jpg', 'image/dt.jpg', 'image/alf.jpg'),
(942, 'Mercedes', 'A Equipe Mercedes é uma das equipes mais bem-sucedidas da Fórmula 1, com vários títulos mundiais.', 'Lewis Hamilton', 'George Russell', 'image/MR.jpg', 'image/LHGR.jpg', 'image/44.jpg'),
(943, 'Red Bull Racing', 'A Red Bull Racing é conhecida por sua abordagem agressiva nas corridas de Fórmula 1.', 'Max Verstappen', 'Sergio Pérez', 'image/Rb.jpg', 'image/du.jpg', 'image/rb18-1.jpg'),
(944, 'Scuderia Ferrari', 'A Scuderia Ferrari é uma das equipes mais icônicas e históricas da Fórmula 1.', 'Charles Leclerc', 'Carlos Sainz Jr.', 'image/ff.jpg', 'image/CC.jpg', 'image/f23.jpeg'),
(945, 'McLaren F1 Team', 'A McLaren F1 Team é conhecida por sua tradição e inovação no esporte.', 'Lando Norris', 'Oscar Piastri', 'image/ML.png', 'image/pl.jpg', 'image/ll.jpg'),
(946, 'Aston Martin Cognizant Formula One Team', 'A equipe Aston Martin retorna à Fórmula 1 com uma nova identidade.', 'Fernando Alonso', 'Lance Stroll', 'image/astom.jpg', 'image/FL.jpg', 'image/ast.jpeg'),
(947, 'Alpine F1 Team', 'O Alpine F1 Team representa a Renault na Fórmula 1.', 'Pierre Gasly', 'Esteban Ocon', 'image/alp.jpg', 'image/og.jpg', 'image/ap.jpg'),
(948, 'Willians F1 Team', 'A Williams Grand Prix Engineering Limited, competindo como Williams Racing, é uma equipe e construtor de Fórmula 1 fundada por Frank Williams e Patrick Head.', 'Alexandre Albon', 'Logan Sargento', 'image/w.jpg', 'image/al.jpg', 'image/wi.jpg'),
(949, 'Haas F1 Team', 'Haas Formula LLC, atualmente competindo como MoneyGram Haas F1 Team, é uma equipe de Fórmula 1 estabelecida por Gene Haas em abril de 2014. A equipe planejou sua estreia no início da temporada de 2015, mas optou por adiar a sua entrada para a temporada de 2016.', 'Kevin Magnussen', 'Nico Hulkenberg', 'image/haas.jpg', 'image/h.jpg', 'image/ha.jpg'),
(950, 'Alfa Romeo F1 Team', 'A marca Alfa Romeo retornou para a Fórmula 1 na temporada de 2018 como patrocinador título da equipe Sauber.', 'Valtteri Bottas', 'Zhou Guanyu', 'image/loalfa.jpg', 'image/bz.jpg', 'image/c43.jpg'),
(951, 'Alfa Tauri F1 Team', 'O Alpine F1 Team representa a Renault na Fórmula 1.', 'Daniel Ricciardo', 'Yuki Tsunoda', 'image/alfa.jpg', 'image/dt.jpg', 'image/alf.jpg'),
(952, 'Mercedes', 'A Equipe Mercedes é uma das equipes mais bem-sucedidas da Fórmula 1, com vários títulos mundiais.', 'Lewis Hamilton', 'George Russell', 'image/MR.jpg', 'image/LHGR.jpg', 'image/44.jpg'),
(953, 'Red Bull Racing', 'A Red Bull Racing é conhecida por sua abordagem agressiva nas corridas de Fórmula 1.', 'Max Verstappen', 'Sergio Pérez', 'image/Rb.jpg', 'image/du.jpg', 'image/rb18-1.jpg'),
(954, 'Scuderia Ferrari', 'A Scuderia Ferrari é uma das equipes mais icônicas e históricas da Fórmula 1.', 'Charles Leclerc', 'Carlos Sainz Jr.', 'image/ff.jpg', 'image/CC.jpg', 'image/f23.jpeg'),
(955, 'McLaren F1 Team', 'A McLaren F1 Team é conhecida por sua tradição e inovação no esporte.', 'Lando Norris', 'Oscar Piastri', 'image/ML.png', 'image/pl.jpg', 'image/ll.jpg'),
(956, 'Aston Martin Cognizant Formula One Team', 'A equipe Aston Martin retorna à Fórmula 1 com uma nova identidade.', 'Fernando Alonso', 'Lance Stroll', 'image/astom.jpg', 'image/FL.jpg', 'image/ast.jpeg'),
(957, 'Alpine F1 Team', 'O Alpine F1 Team representa a Renault na Fórmula 1.', 'Pierre Gasly', 'Esteban Ocon', 'image/alp.jpg', 'image/og.jpg', 'image/ap.jpg'),
(958, 'Willians F1 Team', 'A Williams Grand Prix Engineering Limited, competindo como Williams Racing, é uma equipe e construtor de Fórmula 1 fundada por Frank Williams e Patrick Head.', 'Alexandre Albon', 'Logan Sargento', 'image/w.jpg', 'image/al.jpg', 'image/wi.jpg'),
(959, 'Haas F1 Team', 'Haas Formula LLC, atualmente competindo como MoneyGram Haas F1 Team, é uma equipe de Fórmula 1 estabelecida por Gene Haas em abril de 2014. A equipe planejou sua estreia no início da temporada de 2015, mas optou por adiar a sua entrada para a temporada de 2016.', 'Kevin Magnussen', 'Nico Hulkenberg', 'image/haas.jpg', 'image/h.jpg', 'image/ha.jpg'),
(960, 'Alfa Romeo F1 Team', 'A marca Alfa Romeo retornou para a Fórmula 1 na temporada de 2018 como patrocinador título da equipe Sauber.', 'Valtteri Bottas', 'Zhou Guanyu', 'image/loalfa.jpg', 'image/bz.jpg', 'image/c43.jpg'),
(961, 'Alfa Tauri F1 Team', 'O Alpine F1 Team representa a Renault na Fórmula 1.', 'Daniel Ricciardo', 'Yuki Tsunoda', 'image/alfa.jpg', 'image/dt.jpg', 'image/alf.jpg'),
(962, 'Mercedes', 'A Equipe Mercedes é uma das equipes mais bem-sucedidas da Fórmula 1, com vários títulos mundiais.', 'Lewis Hamilton', 'George Russell', 'image/MR.jpg', 'image/LHGR.jpg', 'image/44.jpg'),
(963, 'Red Bull Racing', 'A Red Bull Racing é conhecida por sua abordagem agressiva nas corridas de Fórmula 1.', 'Max Verstappen', 'Sergio Pérez', 'image/Rb.jpg', 'image/du.jpg', 'image/rb18-1.jpg'),
(964, 'Scuderia Ferrari', 'A Scuderia Ferrari é uma das equipes mais icônicas e históricas da Fórmula 1.', 'Charles Leclerc', 'Carlos Sainz Jr.', 'image/ff.jpg', 'image/CC.jpg', 'image/f23.jpeg'),
(965, 'McLaren F1 Team', 'A McLaren F1 Team é conhecida por sua tradição e inovação no esporte.', 'Lando Norris', 'Oscar Piastri', 'image/ML.png', 'image/pl.jpg', 'image/ll.jpg'),
(966, 'Aston Martin Cognizant Formula One Team', 'A equipe Aston Martin retorna à Fórmula 1 com uma nova identidade.', 'Fernando Alonso', 'Lance Stroll', 'image/astom.jpg', 'image/FL.jpg', 'image/ast.jpeg'),
(967, 'Alpine F1 Team', 'O Alpine F1 Team representa a Renault na Fórmula 1.', 'Pierre Gasly', 'Esteban Ocon', 'image/alp.jpg', 'image/og.jpg', 'image/ap.jpg'),
(968, 'Willians F1 Team', 'A Williams Grand Prix Engineering Limited, competindo como Williams Racing, é uma equipe e construtor de Fórmula 1 fundada por Frank Williams e Patrick Head.', 'Alexandre Albon', 'Logan Sargento', 'image/w.jpg', 'image/al.jpg', 'image/wi.jpg'),
(969, 'Haas F1 Team', 'Haas Formula LLC, atualmente competindo como MoneyGram Haas F1 Team, é uma equipe de Fórmula 1 estabelecida por Gene Haas em abril de 2014. A equipe planejou sua estreia no início da temporada de 2015, mas optou por adiar a sua entrada para a temporada de 2016.', 'Kevin Magnussen', 'Nico Hulkenberg', 'image/haas.jpg', 'image/h.jpg', 'image/ha.jpg');
INSERT INTO `quipas` (`id_equipas`, `Equipa`, `Descricao`, `PilotoPrincipal`, `SegundoPiloto`, `Imagem1`, `Imagem2`, `Imagem3`) VALUES
(970, 'Alfa Romeo F1 Team', 'A marca Alfa Romeo retornou para a Fórmula 1 na temporada de 2018 como patrocinador título da equipe Sauber.', 'Valtteri Bottas', 'Zhou Guanyu', 'image/loalfa.jpg', 'image/bz.jpg', 'image/c43.jpg'),
(971, 'Alfa Tauri F1 Team', 'O Alpine F1 Team representa a Renault na Fórmula 1.', 'Daniel Ricciardo', 'Yuki Tsunoda', 'image/alfa.jpg', 'image/dt.jpg', 'image/alf.jpg'),
(972, 'Mercedes', 'A Equipe Mercedes é uma das equipes mais bem-sucedidas da Fórmula 1, com vários títulos mundiais.', 'Lewis Hamilton', 'George Russell', 'image/MR.jpg', 'image/LHGR.jpg', 'image/44.jpg'),
(973, 'Red Bull Racing', 'A Red Bull Racing é conhecida por sua abordagem agressiva nas corridas de Fórmula 1.', 'Max Verstappen', 'Sergio Pérez', 'image/Rb.jpg', 'image/du.jpg', 'image/rb18-1.jpg'),
(974, 'Scuderia Ferrari', 'A Scuderia Ferrari é uma das equipes mais icônicas e históricas da Fórmula 1.', 'Charles Leclerc', 'Carlos Sainz Jr.', 'image/ff.jpg', 'image/CC.jpg', 'image/f23.jpeg'),
(975, 'McLaren F1 Team', 'A McLaren F1 Team é conhecida por sua tradição e inovação no esporte.', 'Lando Norris', 'Oscar Piastri', 'image/ML.png', 'image/pl.jpg', 'image/ll.jpg'),
(976, 'Aston Martin Cognizant Formula One Team', 'A equipe Aston Martin retorna à Fórmula 1 com uma nova identidade.', 'Fernando Alonso', 'Lance Stroll', 'image/astom.jpg', 'image/FL.jpg', 'image/ast.jpeg'),
(977, 'Alpine F1 Team', 'O Alpine F1 Team representa a Renault na Fórmula 1.', 'Pierre Gasly', 'Esteban Ocon', 'image/alp.jpg', 'image/og.jpg', 'image/ap.jpg'),
(978, 'Willians F1 Team', 'A Williams Grand Prix Engineering Limited, competindo como Williams Racing, é uma equipe e construtor de Fórmula 1 fundada por Frank Williams e Patrick Head.', 'Alexandre Albon', 'Logan Sargento', 'image/w.jpg', 'image/al.jpg', 'image/wi.jpg'),
(979, 'Haas F1 Team', 'Haas Formula LLC, atualmente competindo como MoneyGram Haas F1 Team, é uma equipe de Fórmula 1 estabelecida por Gene Haas em abril de 2014. A equipe planejou sua estreia no início da temporada de 2015, mas optou por adiar a sua entrada para a temporada de 2016.', 'Kevin Magnussen', 'Nico Hulkenberg', 'image/haas.jpg', 'image/h.jpg', 'image/ha.jpg'),
(980, 'Alfa Romeo F1 Team', 'A marca Alfa Romeo retornou para a Fórmula 1 na temporada de 2018 como patrocinador título da equipe Sauber.', 'Valtteri Bottas', 'Zhou Guanyu', 'image/loalfa.jpg', 'image/bz.jpg', 'image/c43.jpg'),
(981, 'Alfa Tauri F1 Team', 'O Alpine F1 Team representa a Renault na Fórmula 1.', 'Daniel Ricciardo', 'Yuki Tsunoda', 'image/alfa.jpg', 'image/dt.jpg', 'image/alf.jpg'),
(982, 'Mercedes', 'A Equipe Mercedes é uma das equipes mais bem-sucedidas da Fórmula 1, com vários títulos mundiais.', 'Lewis Hamilton', 'George Russell', 'image/MR.jpg', 'image/LHGR.jpg', 'image/44.jpg'),
(983, 'Red Bull Racing', 'A Red Bull Racing é conhecida por sua abordagem agressiva nas corridas de Fórmula 1.', 'Max Verstappen', 'Sergio Pérez', 'image/Rb.jpg', 'image/du.jpg', 'image/rb18-1.jpg'),
(984, 'Scuderia Ferrari', 'A Scuderia Ferrari é uma das equipes mais icônicas e históricas da Fórmula 1.', 'Charles Leclerc', 'Carlos Sainz Jr.', 'image/ff.jpg', 'image/CC.jpg', 'image/f23.jpeg'),
(985, 'McLaren F1 Team', 'A McLaren F1 Team é conhecida por sua tradição e inovação no esporte.', 'Lando Norris', 'Oscar Piastri', 'image/ML.png', 'image/pl.jpg', 'image/ll.jpg'),
(986, 'Aston Martin Cognizant Formula One Team', 'A equipe Aston Martin retorna à Fórmula 1 com uma nova identidade.', 'Fernando Alonso', 'Lance Stroll', 'image/astom.jpg', 'image/FL.jpg', 'image/ast.jpeg'),
(987, 'Alpine F1 Team', 'O Alpine F1 Team representa a Renault na Fórmula 1.', 'Pierre Gasly', 'Esteban Ocon', 'image/alp.jpg', 'image/og.jpg', 'image/ap.jpg'),
(988, 'Willians F1 Team', 'A Williams Grand Prix Engineering Limited, competindo como Williams Racing, é uma equipe e construtor de Fórmula 1 fundada por Frank Williams e Patrick Head.', 'Alexandre Albon', 'Logan Sargento', 'image/w.jpg', 'image/al.jpg', 'image/wi.jpg'),
(989, 'Haas F1 Team', 'Haas Formula LLC, atualmente competindo como MoneyGram Haas F1 Team, é uma equipe de Fórmula 1 estabelecida por Gene Haas em abril de 2014. A equipe planejou sua estreia no início da temporada de 2015, mas optou por adiar a sua entrada para a temporada de 2016.', 'Kevin Magnussen', 'Nico Hulkenberg', 'image/haas.jpg', 'image/h.jpg', 'image/ha.jpg'),
(990, 'Alfa Romeo F1 Team', 'A marca Alfa Romeo retornou para a Fórmula 1 na temporada de 2018 como patrocinador título da equipe Sauber.', 'Valtteri Bottas', 'Zhou Guanyu', 'image/loalfa.jpg', 'image/bz.jpg', 'image/c43.jpg'),
(991, 'Alfa Tauri F1 Team', 'O Alpine F1 Team representa a Renault na Fórmula 1.', 'Daniel Ricciardo', 'Yuki Tsunoda', 'image/alfa.jpg', 'image/dt.jpg', 'image/alf.jpg'),
(992, 'Mercedes', 'A Equipe Mercedes é uma das equipes mais bem-sucedidas da Fórmula 1, com vários títulos mundiais.', 'Lewis Hamilton', 'George Russell', 'image/MR.jpg', 'image/LHGR.jpg', 'image/44.jpg'),
(993, 'Red Bull Racing', 'A Red Bull Racing é conhecida por sua abordagem agressiva nas corridas de Fórmula 1.', 'Max Verstappen', 'Sergio Pérez', 'image/Rb.jpg', 'image/du.jpg', 'image/rb18-1.jpg'),
(994, 'Scuderia Ferrari', 'A Scuderia Ferrari é uma das equipes mais icônicas e históricas da Fórmula 1.', 'Charles Leclerc', 'Carlos Sainz Jr.', 'image/ff.jpg', 'image/CC.jpg', 'image/f23.jpeg'),
(995, 'McLaren F1 Team', 'A McLaren F1 Team é conhecida por sua tradição e inovação no esporte.', 'Lando Norris', 'Oscar Piastri', 'image/ML.png', 'image/pl.jpg', 'image/ll.jpg'),
(996, 'Aston Martin Cognizant Formula One Team', 'A equipe Aston Martin retorna à Fórmula 1 com uma nova identidade.', 'Fernando Alonso', 'Lance Stroll', 'image/astom.jpg', 'image/FL.jpg', 'image/ast.jpeg'),
(997, 'Alpine F1 Team', 'O Alpine F1 Team representa a Renault na Fórmula 1.', 'Pierre Gasly', 'Esteban Ocon', 'image/alp.jpg', 'image/og.jpg', 'image/ap.jpg'),
(998, 'Willians F1 Team', 'A Williams Grand Prix Engineering Limited, competindo como Williams Racing, é uma equipe e construtor de Fórmula 1 fundada por Frank Williams e Patrick Head.', 'Alexandre Albon', 'Logan Sargento', 'image/w.jpg', 'image/al.jpg', 'image/wi.jpg'),
(999, 'Haas F1 Team', 'Haas Formula LLC, atualmente competindo como MoneyGram Haas F1 Team, é uma equipe de Fórmula 1 estabelecida por Gene Haas em abril de 2014. A equipe planejou sua estreia no início da temporada de 2015, mas optou por adiar a sua entrada para a temporada de 2016.', 'Kevin Magnussen', 'Nico Hulkenberg', 'image/haas.jpg', 'image/h.jpg', 'image/ha.jpg'),
(1000, 'Alfa Romeo F1 Team', 'A marca Alfa Romeo retornou para a Fórmula 1 na temporada de 2018 como patrocinador título da equipe Sauber.', 'Valtteri Bottas', 'Zhou Guanyu', 'image/loalfa.jpg', 'image/bz.jpg', 'image/c43.jpg'),
(1001, 'Alfa Tauri F1 Team', 'O Alpine F1 Team representa a Renault na Fórmula 1.', 'Daniel Ricciardo', 'Yuki Tsunoda', 'image/alfa.jpg', 'image/dt.jpg', 'image/alf.jpg'),
(1002, 'Mercedes', 'A Equipe Mercedes é uma das equipes mais bem-sucedidas da Fórmula 1, com vários títulos mundiais.', 'Lewis Hamilton', 'George Russell', 'image/MR.jpg', 'image/LHGR.jpg', 'image/44.jpg'),
(1003, 'Red Bull Racing', 'A Red Bull Racing é conhecida por sua abordagem agressiva nas corridas de Fórmula 1.', 'Max Verstappen', 'Sergio Pérez', 'image/Rb.jpg', 'image/du.jpg', 'image/rb18-1.jpg'),
(1004, 'Scuderia Ferrari', 'A Scuderia Ferrari é uma das equipes mais icônicas e históricas da Fórmula 1.', 'Charles Leclerc', 'Carlos Sainz Jr.', 'image/ff.jpg', 'image/CC.jpg', 'image/f23.jpeg'),
(1005, 'McLaren F1 Team', 'A McLaren F1 Team é conhecida por sua tradição e inovação no esporte.', 'Lando Norris', 'Oscar Piastri', 'image/ML.png', 'image/pl.jpg', 'image/ll.jpg'),
(1006, 'Aston Martin Cognizant Formula One Team', 'A equipe Aston Martin retorna à Fórmula 1 com uma nova identidade.', 'Fernando Alonso', 'Lance Stroll', 'image/astom.jpg', 'image/FL.jpg', 'image/ast.jpeg'),
(1007, 'Alpine F1 Team', 'O Alpine F1 Team representa a Renault na Fórmula 1.', 'Pierre Gasly', 'Esteban Ocon', 'image/alp.jpg', 'image/og.jpg', 'image/ap.jpg'),
(1008, 'Willians F1 Team', 'A Williams Grand Prix Engineering Limited, competindo como Williams Racing, é uma equipe e construtor de Fórmula 1 fundada por Frank Williams e Patrick Head.', 'Alexandre Albon', 'Logan Sargento', 'image/w.jpg', 'image/al.jpg', 'image/wi.jpg'),
(1009, 'Haas F1 Team', 'Haas Formula LLC, atualmente competindo como MoneyGram Haas F1 Team, é uma equipe de Fórmula 1 estabelecida por Gene Haas em abril de 2014. A equipe planejou sua estreia no início da temporada de 2015, mas optou por adiar a sua entrada para a temporada de 2016.', 'Kevin Magnussen', 'Nico Hulkenberg', 'image/haas.jpg', 'image/h.jpg', 'image/ha.jpg'),
(1010, 'Alfa Romeo F1 Team', 'A marca Alfa Romeo retornou para a Fórmula 1 na temporada de 2018 como patrocinador título da equipe Sauber.', 'Valtteri Bottas', 'Zhou Guanyu', 'image/loalfa.jpg', 'image/bz.jpg', 'image/c43.jpg'),
(1011, 'Alfa Tauri F1 Team', 'O Alpine F1 Team representa a Renault na Fórmula 1.', 'Daniel Ricciardo', 'Yuki Tsunoda', 'image/alfa.jpg', 'image/dt.jpg', 'image/alf.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int NOT NULL,
  `nome` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `senha` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `admin` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `senha`, `email`, `foto`, `created_at`, `admin`) VALUES
(1, 'Ronnie Coleman', '$2y$10$C3SHK7sDFzSHZZRW78pww.rHZd.uk50tliWOLiFSw0ItQD9.6nRFO', 'coleman@gmail.com', 'Ronnie-Dean-Coleman-4.jpg', '2023-11-22 18:44:36', 0),
(2, 'admin', '$2y$10$bsMa9WATsgzzJKHe9Wy4zOFAcHoqWALa0aA/zHX35DKYCLN501MTS', 'admin@gmail.com', NULL, '2023-11-22 18:47:17', 1),
(3, 'caca', '$2y$10$TBEL2H6iWQ2780egAV2w9eU2bfEa68LZT0/Xoi58z.MzFOW4AEOrC', 'caca@gmail.com', NULL, '2023-11-22 18:59:01', 0),
(4, 'wagner', '$2y$10$ejN2nkshczBmD3o95/pCwumcYO5iiHTxnH9LYJ5XBOfcivCxJksNe', 'wagnerbernardo440@gmail.com', NULL, '2023-11-29 10:45:42', 0),
(5, 'Robert', '$2y$10$Y4Qs1zpaBtgnJlfRsXVhMuJ3oHLWe1nqSTaDxtq1ING5R.h0Gab8C', 'roberto@gmail.com', NULL, '2023-12-06 09:35:25', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apostas`
--
ALTER TABLE `apostas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_utilizador` (`id_utilizador`);

--
-- Indexes for table `equipas`
--
ALTER TABLE `equipas`
  ADD PRIMARY KEY (`id_equipas`),
  ADD KEY `piloto_principal` (`piloto_principal`),
  ADD KEY `piloto_secundario` (`piloto_secundario`);

--
-- Indexes for table `equipa_premio`
--
ALTER TABLE `equipa_premio`
  ADD PRIMARY KEY (`id_equipas`,`id_premio`),
  ADD KEY `id_premio` (`id_premio`);

--
-- Indexes for table `pilotos`
--
ALTER TABLE `pilotos`
  ADD PRIMARY KEY (`id_pilotos`);

--
-- Indexes for table `premio`
--
ALTER TABLE `premio`
  ADD PRIMARY KEY (`id_premio`);

--
-- Indexes for table `premio_piloto`
--
ALTER TABLE `premio_piloto`
  ADD PRIMARY KEY (`id_pilotos`,`id_premio`),
  ADD KEY `id_premio` (`id_premio`);

--
-- Indexes for table `quipas`
--
ALTER TABLE `quipas`
  ADD PRIMARY KEY (`id_equipas`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apostas`
--
ALTER TABLE `apostas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `equipas`
--
ALTER TABLE `equipas`
  MODIFY `id_equipas` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `equipa_premio`
--
ALTER TABLE `equipa_premio`
  MODIFY `id_equipas` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `pilotos`
--
ALTER TABLE `pilotos`
  MODIFY `id_pilotos` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `quipas`
--
ALTER TABLE `quipas`
  MODIFY `id_equipas` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1012;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
