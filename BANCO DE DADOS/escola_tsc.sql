-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 26-Nov-2020 às 01:10
-- Versão do servidor: 10.4.14-MariaDB
-- versão do PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `escola_tsc`
--
CREATE DATABASE IF NOT EXISTS `escola_tsc` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `escola_tsc`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `autor`
--

CREATE TABLE `autor` (
  `id_autor` int(11) NOT NULL,
  `nome_autor` varchar(100) NOT NULL,
  `apelido_autor` varchar(50) NOT NULL,
  `senha_autor` varchar(50) NOT NULL,
  `criacao_autor` date NOT NULL,
  `ultimo_acesso_autor` date DEFAULT NULL,
  `status_autor` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `autor`
--

INSERT INTO `autor` (`id_autor`, `nome_autor`, `apelido_autor`, `senha_autor`, `criacao_autor`, `ultimo_acesso_autor`, `status_autor`) VALUES
(1, 'Antonio Walber', 'walberst', 'NzFiaW10eg==', '2019-10-01', NULL, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `nome_categoria` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `nome_categoria`) VALUES
(1, 'Noticias'),
(2, 'Projetos'),
(3, 'paginas');

-- --------------------------------------------------------

--
-- Estrutura da tabela `contato`
--

CREATE TABLE `contato` (
  `id_contato` int(11) NOT NULL,
  `nome_contato` varchar(150) COLLATE latin1_general_ci NOT NULL,
  `email_contato` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `fone_contato` varchar(15) COLLATE latin1_general_ci NOT NULL,
  `assunto_contato` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `msg_contato` text COLLATE latin1_general_ci NOT NULL,
  `data_contato` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `itens_mosaico`
--

CREATE TABLE `itens_mosaico` (
  `id` int(11) NOT NULL,
  `id_mosaic` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `title_mosaic` varchar(70) COLLATE latin1_general_ci NOT NULL,
  `desc_mosaic` text COLLATE latin1_general_ci NOT NULL,
  `img_mosaic` varchar(70) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Extraindo dados da tabela `itens_mosaico`
--

INSERT INTO `itens_mosaico` (`id`, `id_mosaic`, `title_mosaic`, `desc_mosaic`, `img_mosaic`) VALUES
(1, 'mosaico-ph', 'Aprendizagem por projetos', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras dapibus ut ipsum nec tincidunt. Etiam congue lorem quis libero consequat bibendum. Proin convallis ligula tincidunt urna consequat malesuada id sit.', NULL),
(2, 'mosaico-ph', 'Programa bilíngue', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras dapibus ut ipsum nec tincidunt. Etiam congue lorem quis libero consequat bibendum. Proin convallis ligula tincidunt urna consequat malesuada id sit.', NULL),
(3, 'mosaico-ph', 'Projetos sem temas e durabilidade preestabelecidos', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras dapibus ut ipsum nec tincidunt. Etiam congue lorem quis libero consequat bibendum. Proin convallis ligula tincidunt urna consequat malesuada id sit.', NULL),
(4, 'mosaico-ph', 'Conhecimento construído em parceria', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras dapibus ut ipsum nec tincidunt. Etiam congue lorem quis libero consequat bibendum. Proin convallis ligula tincidunt urna consequat malesuada id sit.', NULL),
(5, 'mosaico-ph', 'Criança em contato com a natureza', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras dapibus ut ipsum nec tincidunt. Etiam congue lorem quis libero consequat bibendum. Proin convallis ligula tincidunt urna consequat malesuada id sit.', NULL),
(6, 'mosaico-ph', 'Engenhocas Tecnológicas, Programação Digital e Jogos', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras dapibus ut ipsum nec tincidunt. Etiam congue lorem quis libero consequat bibendum. Proin convallis ligula tincidunt urna consequat malesuada id sit.', NULL),
(7, 'mosaico-ph', 'Diversidade', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras dapibus ut ipsum nec tincidunt. Etiam congue lorem quis libero consequat bibendum. Proin convallis ligula tincidunt urna consequat malesuada id sit.', NULL),
(23, 'infantil', 'Brincar', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec tempor rhoncus ante, id consequat nisi molestie et. Nullam erat justo, imperdiet tristique pretium ut, tempor sit amet tortor. Nunc sit amet maximus massa.', NULL),
(24, 'infantil', 'Investigar', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec tempor rhoncus ante, id consequat nisi molestie et. Nullam erat justo, imperdiet tristique pretium ut, tempor sit amet tortor. Nunc sit amet maximus massa.', NULL),
(25, 'infantil', 'Pesquisar', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec tempor rhoncus ante, id consequat nisi molestie et. Nullam erat justo, imperdiet tristique pretium ut, tempor sit amet tortor. Nunc sit amet maximus massa.', NULL),
(26, 'infantil', 'Linguagem Digital', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec tempor rhoncus ante, id consequat nisi molestie et. Nullam erat justo, imperdiet tristique pretium ut, tempor sit amet tortor. Nunc sit amet maximus massa.', NULL),
(27, 'infantil', 'Teia curricular', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec tempor rhoncus ante, id consequat nisi molestie et. Nullam erat justo, imperdiet tristique pretium ut, tempor sit amet tortor. Nunc sit amet maximus massa.', NULL),
(28, 'infantil', 'Criar relações e vínculos', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec tempor rhoncus ante, id consequat nisi molestie et. Nullam erat justo, imperdiet tristique pretium ut, tempor sit amet tortor. Nunc sit amet maximus massa.', NULL),
(29, 'infantil', 'Expressar sua singularidade', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec tempor rhoncus ante, id consequat nisi molestie et. Nullam erat justo, imperdiet tristique pretium ut, tempor sit amet tortor. Nunc sit amet maximus massa.', NULL),
(30, 'infantil', 'Acolher as famílias', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec tempor rhoncus ante, id consequat nisi molestie et. Nullam erat justo, imperdiet tristique pretium ut, tempor sit amet tortor. Nunc sit amet maximus massa.', NULL),
(31, 'fundamental', 'Aprendizagem por Projetos', 'Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover', NULL),
(32, 'fundamental', 'O que são os projetos?', 'Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover', NULL),
(33, 'fundamental', 'Currículo', 'Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover', NULL),
(34, 'fundamental', 'Aprofundar e sistematizar', 'Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover', NULL),
(35, 'fundamental', 'Marcenaria, Robótica, Jogos e Linguagem Digital', 'Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover', NULL),
(36, 'fundamental', 'Aluno ativo', 'Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover', NULL),
(37, 'fundamental', 'Avaliação', 'Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `menu_itens`
--

CREATE TABLE `menu_itens` (
  `id_menu` int(11) NOT NULL,
  `titulo_menu` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `url_menu` varchar(200) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Extraindo dados da tabela `menu_itens`
--

INSERT INTO `menu_itens` (`id_menu`, `titulo_menu`, `url_menu`) VALUES
(1, 'Sobre', 'sobre'),
(2, 'Educação Infantil', 'educacao-infantil'),
(3, 'Ensino Fundamental I', 'ensino-fundamental'),
(4, 'Inglês', 'ingles'),
(8, 'Notícias', 'noticias'),
(9, 'Contato', 'contato');

-- --------------------------------------------------------

--
-- Estrutura da tabela `midias`
--

CREATE TABLE `midias` (
  `id_midias` int(11) NOT NULL,
  `caminho_midia` varchar(200) NOT NULL,
  `caminho_thumb_midia` varchar(200) DEFAULT NULL,
  `desc_midia` text DEFAULT NULL,
  `tags_midia` varchar(100) DEFAULT NULL,
  `ch_autor_midia` int(11) NOT NULL,
  `status_midias` int(11) NOT NULL,
  `data_criacao` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `midias`
--

INSERT INTO `midias` (`id_midias`, `caminho_midia`, `caminho_thumb_midia`, `desc_midia`, `tags_midia`, `ch_autor_midia`, `status_midias`, `data_criacao`) VALUES
(407, 'img1.jpg', NULL, NULL, NULL, 1, 1, '2020-05-20'),
(408, 'img2.jpg', NULL, NULL, NULL, 1, 1, '2020-05-27'),
(409, 'img3.jpg', NULL, NULL, NULL, 1, 1, '2020-05-20'),
(410, 'img4.jpg', NULL, NULL, NULL, 1, 1, '2020-05-13'),
(411, 'C:\\fakepath\\Escola TSC - Home.png', 'C:\\fakepath\\Escola TSC - Home.png', 'C:\\fakepath\\Escola TSC - Home.png', 'padrao', 1, 1, '2020-11-24'),
(412, 'C:\\fakepath\\Escola TSC - Home.png', 'C:\\fakepath\\Escola TSC - Home.png', 'C:\\fakepath\\Escola TSC - Home.png', 'padrao', 1, 1, '2020-11-25'),
(413, 'C:\\fakepath\\Escola TSC - Home.png', 'C:\\fakepath\\Escola TSC - Home.png', 'C:\\fakepath\\Escola TSC - Home.png', 'padrao', 1, 1, '2020-11-25'),
(414, 'C:\\fakepath\\Escola TSC - Home.png', 'C:\\fakepath\\Escola TSC - Home.png', 'C:\\fakepath\\Escola TSC - Home.png', 'padrao', 1, 1, '2020-11-25'),
(415, 'C:\\fakepath\\Escola TSC - Home.png', 'C:\\fakepath\\Escola TSC - Home.png', 'C:\\fakepath\\Escola TSC - Home.png', 'padrao', 1, 1, '2020-11-25'),
(416, 'C:\\fakepath\\Escola TSC - Home.png', 'C:\\fakepath\\Escola TSC - Home.png', 'C:\\fakepath\\Escola TSC - Home.png', 'padrao', 1, 1, '2020-11-25'),
(417, 'C:\\fakepath\\Escola TSC - Home.png', 'C:\\fakepath\\Escola TSC - Home.png', 'C:\\fakepath\\Escola TSC - Home.png', 'padrao', 1, 1, '2020-11-25'),
(418, 'C:\\fakepath\\Escola TSC - Home.png', 'C:\\fakepath\\Escola TSC - Home.png', 'C:\\fakepath\\Escola TSC - Home.png', 'padrao', 1, 1, '2020-11-25'),
(419, 'C:\\fakepath\\Escola TSC - Home.png', 'C:\\fakepath\\Escola TSC - Home.png', 'C:\\fakepath\\Escola TSC - Home.png', 'padrao', 1, 1, '2020-11-25'),
(420, 'C:\\fakepath\\Escola TSC - Home.png', 'C:\\fakepath\\Escola TSC - Home.png', 'C:\\fakepath\\Escola TSC - Home.png', 'padrao', 1, 1, '2020-11-25'),
(421, 'C:\\fakepath\\Escola TSC - Home.png', 'C:\\fakepath\\Escola TSC - Home.png', 'C:\\fakepath\\Escola TSC - Home.png', 'padrao', 1, 1, '2020-11-25'),
(422, 'C:\\fakepath\\Escola TSC - Home.png', 'C:\\fakepath\\Escola TSC - Home.png', 'C:\\fakepath\\Escola TSC - Home.png', 'padrao', 1, 1, '2020-11-25'),
(423, 'C:\\fakepath\\Escola TSC - Home.png', 'C:\\fakepath\\Escola TSC - Home.png', 'C:\\fakepath\\Escola TSC - Home.png', 'padrao', 1, 1, '2020-11-25'),
(424, 'C:\\fakepath\\Escola TSC - Home.png', 'C:\\fakepath\\Escola TSC - Home.png', 'C:\\fakepath\\Escola TSC - Home.png', 'padrao', 1, 1, '2020-11-25'),
(425, 'C:\\fakepath\\Escola TSC - Home.png', 'C:\\fakepath\\Escola TSC - Home.png', 'C:\\fakepath\\Escola TSC - Home.png', 'padrao', 1, 1, '2020-11-25'),
(426, 'C:\\fakepath\\Escola TSC - Home.png', 'C:\\fakepath\\Escola TSC - Home.png', 'C:\\fakepath\\Escola TSC - Home.png', 'padrao', 1, 1, '2020-11-25'),
(427, 'C:\\fakepath\\Escola TSC - Home.png', 'C:\\fakepath\\Escola TSC - Home.png', 'C:\\fakepath\\Escola TSC - Home.png', 'padrao', 1, 1, '2020-11-25'),
(428, 'C:\\fakepath\\Escola TSC - Ensino fundamental I.png', 'C:\\fakepath\\Escola TSC - Ensino fundamental I.png', 'C:\\fakepath\\Escola TSC - Ensino fundamental I.png', 'padrao', 1, 1, '2020-11-25'),
(429, 'C:\\fakepath\\Escola TSC - Ensino fundamental I.png', 'C:\\fakepath\\Escola TSC - Ensino fundamental I.png', 'C:\\fakepath\\Escola TSC - Ensino fundamental I.png', 'padrao', 1, 1, '2020-11-25'),
(430, 'C:\\fakepath\\Escola TSC - Ensino fundamental I.png', 'C:\\fakepath\\Escola TSC - Ensino fundamental I.png', 'C:\\fakepath\\Escola TSC - Ensino fundamental I.png', 'padrao', 1, 1, '2020-11-25'),
(431, 'C:\\fakepath\\Escola TSC - Noticias.png', 'C:\\fakepath\\Escola TSC - Noticias.png', 'C:\\fakepath\\Escola TSC - Noticias.png', 'padrao', 1, 1, '2020-11-25'),
(432, 'C:\\fakepath\\Escola TSC - Ingles.png', 'C:\\fakepath\\Escola TSC - Ingles.png', 'C:\\fakepath\\Escola TSC - Ingles.png', 'padrao', 1, 1, '2020-11-25'),
(433, 'C:\\fakepath\\Escola TSC - Home.png', 'C:\\fakepath\\Escola TSC - Home.png', 'C:\\fakepath\\Escola TSC - Home.png', 'padrao', 1, 1, '2020-11-25'),
(434, 'C:\\fakepath\\Escola TSC - Ensino fundamental I.png', 'C:\\fakepath\\Escola TSC - Ensino fundamental I.png', 'C:\\fakepath\\Escola TSC - Ensino fundamental I.png', 'padrao', 1, 1, '2020-11-25'),
(435, 'C:\\fakepath\\Escola TSC - Admin.png', 'C:\\fakepath\\Escola TSC - Admin.png', 'C:\\fakepath\\Escola TSC - Admin.png', 'padrao', 1, 1, '2020-11-25'),
(436, 'C:\\fakepath\\Escola TSC - Ensino fundamental I.png', 'C:\\fakepath\\Escola TSC - Ensino fundamental I.png', 'C:\\fakepath\\Escola TSC - Ensino fundamental I.png', 'padrao', 1, 1, '2020-11-25'),
(437, 'C:\\fakepath\\Escola TSC - Home.png', 'C:\\fakepath\\Escola TSC - Home.png', 'C:\\fakepath\\Escola TSC - Home.png', 'padrao', 1, 1, '2020-11-25'),
(438, 'C:\\fakepath\\Escola TSC - Home.png', 'C:\\fakepath\\Escola TSC - Home.png', 'C:\\fakepath\\Escola TSC - Home.png', 'padrao', 1, 1, '2020-11-25'),
(439, '', '', '', 'padrao', 1, 1, '2020-11-25'),
(440, '', '', '', 'padrao', 1, 1, '2020-11-25'),
(441, '', '', '', 'padrao', 1, 1, '2020-11-25'),
(442, '', '', '', 'padrao', 1, 1, '2020-11-25'),
(443, '', '', '', 'padrao', 1, 1, '2020-11-25'),
(444, '', '', '', 'padrao', 1, 1, '2020-11-25');

-- --------------------------------------------------------

--
-- Estrutura da tabela `midias_te`
--

CREATE TABLE `midias_te` (
  `id_te` int(11) NOT NULL,
  `id_html` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tipo_te` varchar(5) COLLATE latin1_general_ci NOT NULL DEFAULT 'img',
  `titulo_te` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `desc_te` text COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Extraindo dados da tabela `midias_te`
--

INSERT INTO `midias_te` (`id_te`, `id_html`, `tipo_te`, `titulo_te`, `desc_te`) VALUES
(1, 'videoApresentacao', 'video', 'apresentacao', 'Video de apresentação da escola Primeira'),
(2, 'descPrimeira', 'video', 'menos_plastico', 'Apresentação do projeto do menos plastico na escola primeira'),
(3, 'descIngles', 'video', 'ingles', 'video de apresentação do programa bilingue');

-- --------------------------------------------------------

--
-- Estrutura da tabela `postagens`
--

CREATE TABLE `postagens` (
  `id_postagens` int(11) NOT NULL,
  `titulo_postagens` varchar(100) NOT NULL,
  `desc_postagens` text DEFAULT NULL,
  `conteudo_postagens` text NOT NULL,
  `tags_postagens` varchar(150) DEFAULT NULL,
  `data_criacao_postagens` date NOT NULL,
  `data_modificacao_postagens` date DEFAULT NULL,
  `total_visualizacao_postagens` int(11) DEFAULT 0,
  `ch_autor_postagens` int(11) NOT NULL,
  `status_postagens` int(11) NOT NULL,
  `url_postagens` varchar(200) NOT NULL,
  `categ_postagens` int(11) DEFAULT NULL,
  `capa_post` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `postagens`
--

INSERT INTO `postagens` (`id_postagens`, `titulo_postagens`, `desc_postagens`, `conteudo_postagens`, `tags_postagens`, `data_criacao_postagens`, `data_modificacao_postagens`, `total_visualizacao_postagens`, `ch_autor_postagens`, `status_postagens`, `url_postagens`, `categ_postagens`, `capa_post`) VALUES
(86, 'home', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vitae nisi enim. Cras tincidunt in massa eu sagittis. Suspendisse pharetra nisl eleifend cursus tempor. Nulla ligula ex, gravida vitae ornare vel, viverra vitae velit. Morbi ullamcorper orci eget neque convallis, at euismod quam lacinia. Donec sagittis maximus ultrices. Suspendisse ac magna mauris.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vitae nisi enim. Cras tincidunt in massa eu sagittis. Suspendisse pharetra nisl eleifend cursus tempor. Nulla ligula ex, gravida vitae ornare vel, viverra vitae velit. Morbi ullamcorper orci eget neque convallis, at euismod quam lacinia. Donec sagittis maximus ultrices. Suspendisse ac magna mauris.', NULL, '2020-05-29', NULL, 0, 1, 1, 'home', 3, NULL),
(87, 'Sobre', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vitae nisi enim. Cras tincidunt in massa eu sagittis. Suspendisse pharetra nisl eleifend cursus tempor. Nulla ligula ex, gravida vitae ornare vel, viverra vitae velit. Morbi ullamcorper orci eget neque convallis, at euismod quam lacinia. Donec sagittis maximus ultrices. Suspendisse ac magna mauris.', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet nulla varius, tempor risus sit amet, malesuada felis. Duis dapibus mattis aliquam. Phasellus vestibulum pulvinar egestas. Cras egestas sit amet purus in dapibus. Nunc sagittis velit a faucibus vestibulum. Nunc pharetra porta risus, commodo cursus velit ultricies et. Donec dolor mauris, sagittis sit amet justo non, tristique scelerisque nunc. Vivamus vestibulum ligula in consequat tempus. Mauris at vehicula diam.</p>\r\n\r\n<p>Nunc condimentum erat nulla, varius sagittis eros molestie quis. Maecenas pharetra ligula non metus finibus pretium. Suspendisse vestibulum semper enim, vel blandit nunc dignissim at. Aenean mollis ipsum ac nisl pharetra, sit amet scelerisque augue sodales. Vivamus consequat eros eros, ut euismod eros luctus vel. Quisque tempor, justo et sagittis tempus, urna massa imperdiet leo, eget pharetra massa nisl quis ex. Praesent suscipit sem ipsum, non consequat tellus facilisis a. Nulla sit amet magna nisi. Etiam egestas tortor quis ligula venenatis, ac porta neque sodales. Maecenas varius malesuada cursus. Quisque turpis quam, lobortis et mauris sit amet, mollis egestas augue.</p>\r\n\r\n<p>Interdum et malesuada fames ac ante ipsum primis in faucibus. Nam et rutrum erat. Etiam elementum magna in purus accumsan, et maximus justo blandit. Morbi sed est id magna malesuada convallis. Morbi accumsan lacus in sapien bibendum faucibus. Sed lorem massa, consectetur vel viverra non, varius vitae purus. Sed volutpat lectus id eros vehicula semper. Ut velit ante, porttitor id fringilla ac, pretium sit amet diam.</p>\r\n\r\n<p>Aliquam vehicula, odio aliquam facilisis eleifend, arcu nibh auctor nunc, at blandit odio magna at ex. Donec sed mattis ligula. Donec tristique ex eget ipsum consectetur, in pulvinar odio consequat. Mauris a arcu sodales, scelerisque nibh sit amet, sagittis enim. Integer non finibus nibh. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla bibendum accumsan massa vitae tristique.</p>\r\n\r\n<p>Ut ut porta nibh. Quisque consequat sollicitudin libero, nec hendrerit nisl finibus eu. Aliquam erat volutpat. Praesent aliquam massa vitae metus egestas aliquam. Etiam vestibulum dolor eu sem bibendum malesuada. Sed ac congue orci. Ut ut lorem sit amet lorem efficitur blandit id id elit. Duis ac dignissim dui. Aliquam erat volutpat. Phasellus dapibus condimentum dolor in placerat. Duis iaculis porttitor gravida.</p>\r\n\r\n<p>Aliquam luctus, orci eget malesuada blandit, metus leo rutrum ligula, in pharetra lorem nunc ac erat. Suspendisse potenti. Vestibulum rutrum efficitur diam eget bibendum. Aliquam at pellentesque tortor. Nulla fringilla felis et metus aliquam, ut euismod nisl tempor. Suspendisse sodales nisi nec neque blandit, ac vestibulum metus placerat. Suspendisse est urna, faucibus nec turpis eu, vehicula finibus nulla. Mauris blandit sollicitudin fringilla. Mauris eget ante sollicitudin, maximus libero at, dignissim est. Morbi quis vestibulum neque. Aenean et tincidunt augue, quis aliquet odio. Vivamus finibus ullamcorper erat, in feugiat metus maximus non. Aliquam sit amet dolor finibus, vehicula elit id, convallis purus. Aliquam vel augue vel ligula posuere venenatis non eget ex. Suspendisse ut mauris tellus. Nullam quis laoreet elit.</p>\r\n\r\n<p>Morbi eu neque neque. Aliquam erat volutpat. Nullam posuere orci faucibus sem suscipit rhoncus. Vivamus dapibus tellus ac odio eleifend, at tempor mi suscipit. Aliquam vel ornare nunc. Praesent in ex sagittis, auctor orci eget, facilisis mi. Fusce tempor eget urna eget tincidunt. Vivamus vitae vulputate risus, quis placerat massa. Etiam pretium dui eget libero finibus, quis euismod metus facilisis. Donec lacus enim, euismod nec auctor ac, porttitor in ex. Curabitur commodo, diam eu venenatis varius, turpis mauris lobortis augue, eu porta ipsum turpis et quam. Mauris vel felis condimentum, dictum ex nec, tincidunt ante.</p>\r\n\r\n<p>Duis porta elit sem, non blandit nulla cursus vel. Nam sagittis rhoncus est ac sagittis. Morbi non condimentum lacus, ut placerat lacus. Vivamus vel velit sit amet mi fermentum tristique sit amet a lorem. Quisque porttitor bibendum maximus. Pellentesque id tristique ante, et dictum leo. Aliquam eget diam posuere ipsum mollis aliquet. Pellentesque non est eros. Aliquam sit amet est ac urna rutrum aliquet vel venenatis erat. Morbi tempor magna eu nunc condimentum condimentum. Vivamus sed varius eros, ac feugiat odio.</p>\r\n\r\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Donec vitae risus consequat, iaculis turpis et, vestibulum leo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Praesent at felis vitae ipsum consequat efficitur. Phasellus aliquam lobortis nulla, at consectetur enim tristique nec. Mauris sodales eget lacus venenatis elementum. Donec at sem nisl. Phasellus posuere tristique nunc, vel iaculis dui ornare vitae. Vestibulum vitae dignissim orci, sit amet blandit dolor. Sed sit amet pretium erat. Integer convallis nisi eget lacinia posuere. Etiam gravida sagittis risus, imperdiet mollis massa fermentum in.</p>\r\n\r\n<p>Suspendisse elementum dui tincidunt odio laoreet, et gravida eros sodales. Curabitur tristique, odio nec feugiat hendrerit, purus neque sollicitudin massa, at convallis sem libero at odio. Suspendisse eget justo sit amet urna luctus ultricies nec in mi. Vestibulum nec erat vitae diam accumsan vehicula eu in elit. Cras non suscipit nisi, non euismod turpis. Cras velit magna, ullamcorper eu gravida nec, laoreet consequat mi. Mauris porttitor gravida ultricies. Integer venenatis, massa at volutpat fermentum, metus ex scelerisque mi, vel cursus augue lectus vel orci. Praesent vehicula enim non urna tristique viverra. Proin ligula risus, sodales quis erat vitae, sodales blandit libero. Aenean a ligula iaculis, lobortis tortor sed, facilisis nisl. Phasellus vestibulum metus eget quam elementum, et egestas justo suscipit. Aenean congue ipsum id lectus congue, nec tristique ipsum maximus. Aenean aliquam mattis nunc, non sagittis purus mattis et.</p>', NULL, '2020-05-29', NULL, 0, 1, 1, 'sobre', 3, NULL),
(88, 'Ingles', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi consectetur, mauris a aliquet varius, purus dolor eleifend velit, eu eleifend sem magna eget ipsum. Duis ac lectus lacus. Ut placerat condimentum justo, congue vehicula tortor porta id. Donec vel nulla at metus euismod elementum porttitor et odio. Sed ligula sapien, eleifend ut sapien ac, rutrum dignissim tellus. Aenean convallis fermentum odio vel faucibus. Integer venenatis, felis rhoncus efficitur semper, elit metus egestas nisi, eu feugiat magna urna in mauris. Aenean aliquet urna sit amet sodales lacinia. Aliquam erat volutpat. Nullam nec turpis metus. Vivamus vel scelerisque ex, vel facilisis eros. Duis vel orci in mi sagittis interdum. Morbi posuere purus vitae erat eleifend, sed feugiat neque vehicula. Interdum et malesuada fames ac ante ipsum primis in faucibus.', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet nulla varius, tempor risus sit amet, malesuada felis. Duis dapibus mattis aliquam. Phasellus vestibulum pulvinar egestas. Cras egestas sit amet purus in dapibus. Nunc sagittis velit a faucibus vestibulum. Nunc pharetra porta risus, commodo cursus velit ultricies et. Donec dolor mauris, sagittis sit amet justo non, tristique scelerisque nunc. Vivamus vestibulum ligula in consequat tempus. Mauris at vehicula diam.</p>\r\n\r\n<p>Nunc condimentum erat nulla, varius sagittis eros molestie quis. Maecenas pharetra ligula non metus finibus pretium. Suspendisse vestibulum semper enim, vel blandit nunc dignissim at. Aenean mollis ipsum ac nisl pharetra, sit amet scelerisque augue sodales. Vivamus consequat eros eros, ut euismod eros luctus vel. Quisque tempor, justo et sagittis tempus, urna massa imperdiet leo, eget pharetra massa nisl quis ex. Praesent suscipit sem ipsum, non consequat tellus facilisis a. Nulla sit amet magna nisi. Etiam egestas tortor quis ligula venenatis, ac porta neque sodales. Maecenas varius malesuada cursus. Quisque turpis quam, lobortis et mauris sit amet, mollis egestas augue.</p>\r\n\r\n<p>Interdum et malesuada fames ac ante ipsum primis in faucibus. Nam et rutrum erat. Etiam elementum magna in purus accumsan, et maximus justo blandit. Morbi sed est id magna malesuada convallis. Morbi accumsan lacus in sapien bibendum faucibus. Sed lorem massa, consectetur vel viverra non, varius vitae purus. Sed volutpat lectus id eros vehicula semper. Ut velit ante, porttitor id fringilla ac, pretium sit amet diam.</p>\r\n\r\n<p>Aliquam vehicula, odio aliquam facilisis eleifend, arcu nibh auctor nunc, at blandit odio magna at ex. Donec sed mattis ligula. Donec tristique ex eget ipsum consectetur, in pulvinar odio consequat. Mauris a arcu sodales, scelerisque nibh sit amet, sagittis enim. Integer non finibus nibh. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla bibendum accumsan massa vitae tristique.</p>\r\n\r\n<p>Ut ut porta nibh. Quisque consequat sollicitudin libero, nec hendrerit nisl finibus eu. Aliquam erat volutpat. Praesent aliquam massa vitae metus egestas aliquam. Etiam vestibulum dolor eu sem bibendum malesuada. Sed ac congue orci. Ut ut lorem sit amet lorem efficitur blandit id id elit. Duis ac dignissim dui. Aliquam erat volutpat. Phasellus dapibus condimentum dolor in placerat. Duis iaculis porttitor gravida.</p>\r\n\r\n<p>Aliquam luctus, orci eget malesuada blandit, metus leo rutrum ligula, in pharetra lorem nunc ac erat. Suspendisse potenti. Vestibulum rutrum efficitur diam eget bibendum. Aliquam at pellentesque tortor. Nulla fringilla felis et metus aliquam, ut euismod nisl tempor. Suspendisse sodales nisi nec neque blandit, ac vestibulum metus placerat. Suspendisse est urna, faucibus nec turpis eu, vehicula finibus nulla. Mauris blandit sollicitudin fringilla. Mauris eget ante sollicitudin, maximus libero at, dignissim est. Morbi quis vestibulum neque. Aenean et tincidunt augue, quis aliquet odio. Vivamus finibus ullamcorper erat, in feugiat metus maximus non. Aliquam sit amet dolor finibus, vehicula elit id, convallis purus. Aliquam vel augue vel ligula posuere venenatis non eget ex. Suspendisse ut mauris tellus. Nullam quis laoreet elit.</p>\r\n\r\n<p>Morbi eu neque neque. Aliquam erat volutpat. Nullam posuere orci faucibus sem suscipit rhoncus. Vivamus dapibus tellus ac odio eleifend, at tempor mi suscipit. Aliquam vel ornare nunc. Praesent in ex sagittis, auctor orci eget, facilisis mi. Fusce tempor eget urna eget tincidunt. Vivamus vitae vulputate risus, quis placerat massa. Etiam pretium dui eget libero finibus, quis euismod metus facilisis. Donec lacus enim, euismod nec auctor ac, porttitor in ex. Curabitur commodo, diam eu venenatis varius, turpis mauris lobortis augue, eu porta ipsum turpis et quam. Mauris vel felis condimentum, dictum ex nec, tincidunt ante.</p>\r\n\r\n<p>Duis porta elit sem, non blandit nulla cursus vel. Nam sagittis rhoncus est ac sagittis. Morbi non condimentum lacus, ut placerat lacus. Vivamus vel velit sit amet mi fermentum tristique sit amet a lorem. Quisque porttitor bibendum maximus. Pellentesque id tristique ante, et dictum leo. Aliquam eget diam posuere ipsum mollis aliquet. Pellentesque non est eros. Aliquam sit amet est ac urna rutrum aliquet vel venenatis erat. Morbi tempor magna eu nunc condimentum condimentum. Vivamus sed varius eros, ac feugiat odio.</p>\r\n\r\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Donec vitae risus consequat, iaculis turpis et, vestibulum leo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Praesent at felis vitae ipsum consequat efficitur. Phasellus aliquam lobortis nulla, at consectetur enim tristique nec. Mauris sodales eget lacus venenatis elementum. Donec at sem nisl. Phasellus posuere tristique nunc, vel iaculis dui ornare vitae. Vestibulum vitae dignissim orci, sit amet blandit dolor. Sed sit amet pretium erat. Integer convallis nisi eget lacinia posuere. Etiam gravida sagittis risus, imperdiet mollis massa fermentum in.</p>\r\n\r\n<p>Suspendisse elementum dui tincidunt odio laoreet, et gravida eros sodales. Curabitur tristique, odio nec feugiat hendrerit, purus neque sollicitudin massa, at convallis sem libero at odio. Suspendisse eget justo sit amet urna luctus ultricies nec in mi. Vestibulum nec erat vitae diam accumsan vehicula eu in elit. Cras non suscipit nisi, non euismod turpis. Cras velit magna, ullamcorper eu gravida nec, laoreet consequat mi. Mauris porttitor gravida ultricies. Integer venenatis, massa at volutpat fermentum, metus ex scelerisque mi, vel cursus augue lectus vel orci. Praesent vehicula enim non urna tristique viverra. Proin ligula risus, sodales quis erat vitae, sodales blandit libero. Aenean a ligula iaculis, lobortis tortor sed, facilisis nisl. Phasellus vestibulum metus eget quam elementum, et egestas justo suscipit. Aenean congue ipsum id lectus congue, nec tristique ipsum maximus. Aenean aliquam mattis nunc, non sagittis purus mattis et.</p>', NULL, '2020-05-29', NULL, 0, 1, 1, 'ingles', 3, NULL),
(89, 'Neque porro quisquam est qui dolorem ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus urna purus, suscipit eu efficitur sit amet, faucibus quis nisi. Pellentesque commodo, eros et commodo elementum, lectus augue interdum felis, at hendrerit erat arcu vel dolor. Aenean tellus sem, volutpat a dapibus semper, tempus at sem. Pellentesque vitae molestie leo. Sed malesuada risus et gravida semper. Fusce tincidunt semper libero ut bibendum. Ut vel fringilla nunc. Sed et ipsum tellus. Vestibulum dictum mi eget nisi bibendum imperdiet. Etiam nec faucibus ex.', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet nulla varius, tempor risus sit amet, malesuada felis. Duis dapibus mattis aliquam. Phasellus vestibulum pulvinar egestas. Cras egestas sit amet purus in dapibus. Nunc sagittis velit a faucibus vestibulum. Nunc pharetra porta risus, commodo cursus velit ultricies et. Donec dolor mauris, sagittis sit amet justo non, tristique scelerisque nunc. Vivamus vestibulum ligula in consequat tempus. Mauris at vehicula diam.</p>\r\n\r\n<p>Nunc condimentum erat nulla, varius sagittis eros molestie quis. Maecenas pharetra ligula non metus finibus pretium. Suspendisse vestibulum semper enim, vel blandit nunc dignissim at. Aenean mollis ipsum ac nisl pharetra, sit amet scelerisque augue sodales. Vivamus consequat eros eros, ut euismod eros luctus vel. Quisque tempor, justo et sagittis tempus, urna massa imperdiet leo, eget pharetra massa nisl quis ex. Praesent suscipit sem ipsum, non consequat tellus facilisis a. Nulla sit amet magna nisi. Etiam egestas tortor quis ligula venenatis, ac porta neque sodales. Maecenas varius malesuada cursus. Quisque turpis quam, lobortis et mauris sit amet, mollis egestas augue.</p>\r\n\r\n<p>Interdum et malesuada fames ac ante ipsum primis in faucibus. Nam et rutrum erat. Etiam elementum magna in purus accumsan, et maximus justo blandit. Morbi sed est id magna malesuada convallis. Morbi accumsan lacus in sapien bibendum faucibus. Sed lorem massa, consectetur vel viverra non, varius vitae purus. Sed volutpat lectus id eros vehicula semper. Ut velit ante, porttitor id fringilla ac, pretium sit amet diam.</p>\r\n\r\n<p>Aliquam vehicula, odio aliquam facilisis eleifend, arcu nibh auctor nunc, at blandit odio magna at ex. Donec sed mattis ligula. Donec tristique ex eget ipsum consectetur, in pulvinar odio consequat. Mauris a arcu sodales, scelerisque nibh sit amet, sagittis enim. Integer non finibus nibh. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla bibendum accumsan massa vitae tristique.</p>\r\n\r\n<p>Ut ut porta nibh. Quisque consequat sollicitudin libero, nec hendrerit nisl finibus eu. Aliquam erat volutpat. Praesent aliquam massa vitae metus egestas aliquam. Etiam vestibulum dolor eu sem bibendum malesuada. Sed ac congue orci. Ut ut lorem sit amet lorem efficitur blandit id id elit. Duis ac dignissim dui. Aliquam erat volutpat. Phasellus dapibus condimentum dolor in placerat. Duis iaculis porttitor gravida.</p>\r\n\r\n<p>Aliquam luctus, orci eget malesuada blandit, metus leo rutrum ligula, in pharetra lorem nunc ac erat. Suspendisse potenti. Vestibulum rutrum efficitur diam eget bibendum. Aliquam at pellentesque tortor. Nulla fringilla felis et metus aliquam, ut euismod nisl tempor. Suspendisse sodales nisi nec neque blandit, ac vestibulum metus placerat. Suspendisse est urna, faucibus nec turpis eu, vehicula finibus nulla. Mauris blandit sollicitudin fringilla. Mauris eget ante sollicitudin, maximus libero at, dignissim est. Morbi quis vestibulum neque. Aenean et tincidunt augue, quis aliquet odio. Vivamus finibus ullamcorper erat, in feugiat metus maximus non. Aliquam sit amet dolor finibus, vehicula elit id, convallis purus. Aliquam vel augue vel ligula posuere venenatis non eget ex. Suspendisse ut mauris tellus. Nullam quis laoreet elit.</p>\r\n\r\n<p>Morbi eu neque neque. Aliquam erat volutpat. Nullam posuere orci faucibus sem suscipit rhoncus. Vivamus dapibus tellus ac odio eleifend, at tempor mi suscipit. Aliquam vel ornare nunc. Praesent in ex sagittis, auctor orci eget, facilisis mi. Fusce tempor eget urna eget tincidunt. Vivamus vitae vulputate risus, quis placerat massa. Etiam pretium dui eget libero finibus, quis euismod metus facilisis. Donec lacus enim, euismod nec auctor ac, porttitor in ex. Curabitur commodo, diam eu venenatis varius, turpis mauris lobortis augue, eu porta ipsum turpis et quam. Mauris vel felis condimentum, dictum ex nec, tincidunt ante.</p>\r\n\r\n<p>Duis porta elit sem, non blandit nulla cursus vel. Nam sagittis rhoncus est ac sagittis. Morbi non condimentum lacus, ut placerat lacus. Vivamus vel velit sit amet mi fermentum tristique sit amet a lorem. Quisque porttitor bibendum maximus. Pellentesque id tristique ante, et dictum leo. Aliquam eget diam posuere ipsum mollis aliquet. Pellentesque non est eros. Aliquam sit amet est ac urna rutrum aliquet vel venenatis erat. Morbi tempor magna eu nunc condimentum condimentum. Vivamus sed varius eros, ac feugiat odio.</p>\r\n\r\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Donec vitae risus consequat, iaculis turpis et, vestibulum leo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Praesent at felis vitae ipsum consequat efficitur. Phasellus aliquam lobortis nulla, at consectetur enim tristique nec. Mauris sodales eget lacus venenatis elementum. Donec at sem nisl. Phasellus posuere tristique nunc, vel iaculis dui ornare vitae. Vestibulum vitae dignissim orci, sit amet blandit dolor. Sed sit amet pretium erat. Integer convallis nisi eget lacinia posuere. Etiam gravida sagittis risus, imperdiet mollis massa fermentum in.</p>\r\n\r\n<p>Suspendisse elementum dui tincidunt odio laoreet, et gravida eros sodales. Curabitur tristique, odio nec feugiat hendrerit, purus neque sollicitudin massa, at convallis sem libero at odio. Suspendisse eget justo sit amet urna luctus ultricies nec in mi. Vestibulum nec erat vitae diam accumsan vehicula eu in elit. Cras non suscipit nisi, non euismod turpis. Cras velit magna, ullamcorper eu gravida nec, laoreet consequat mi. Mauris porttitor gravida ultricies. Integer venenatis, massa at volutpat fermentum, metus ex scelerisque mi, vel cursus augue lectus vel orci. Praesent vehicula enim non urna tristique viverra. Proin ligula risus, sodales quis erat vitae, sodales blandit libero. Aenean a ligula iaculis, lobortis tortor sed, facilisis nisl. Phasellus vestibulum metus eget quam elementum, et egestas justo suscipit. Aenean congue ipsum id lectus congue, nec tristique ipsum maximus. Aenean aliquam mattis nunc, non sagittis purus mattis et.</p>', NULL, '2020-05-29', NULL, 0, 1, 1, 'noticias/post1', 1, NULL),
(91, 'Sed malesuada risus et gravida semper', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus urna purus, suscipit eu efficitur sit amet, faucibus quis nisi. Pellentesque commodo, eros et commodo elementum, lectus augue interdum felis, at hendrerit erat arcu vel dolor. Aenean tellus sem, volutpat a dapibus semper, tempus at sem. Pellentesque vitae molestie leo. Sed malesuada risus et gravida semper. Fusce tincidunt semper libero ut bibendum. Ut vel fringilla nunc. Sed et ipsum tellus. Vestibulum dictum mi eget nisi bibendum imperdiet. Etiam nec faucibus ex.', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet nulla varius, tempor risus sit amet, malesuada felis. Duis dapibus mattis aliquam. Phasellus vestibulum pulvinar egestas. Cras egestas sit amet purus in dapibus. Nunc sagittis velit a faucibus vestibulum. Nunc pharetra porta risus, commodo cursus velit ultricies et. Donec dolor mauris, sagittis sit amet justo non, tristique scelerisque nunc. Vivamus vestibulum ligula in consequat tempus. Mauris at vehicula diam.</p>\r\n\r\n<p>Nunc condimentum erat nulla, varius sagittis eros molestie quis. Maecenas pharetra ligula non metus finibus pretium. Suspendisse vestibulum semper enim, vel blandit nunc dignissim at. Aenean mollis ipsum ac nisl pharetra, sit amet scelerisque augue sodales. Vivamus consequat eros eros, ut euismod eros luctus vel. Quisque tempor, justo et sagittis tempus, urna massa imperdiet leo, eget pharetra massa nisl quis ex. Praesent suscipit sem ipsum, non consequat tellus facilisis a. Nulla sit amet magna nisi. Etiam egestas tortor quis ligula venenatis, ac porta neque sodales. Maecenas varius malesuada cursus. Quisque turpis quam, lobortis et mauris sit amet, mollis egestas augue.</p>\r\n\r\n<p>Interdum et malesuada fames ac ante ipsum primis in faucibus. Nam et rutrum erat. Etiam elementum magna in purus accumsan, et maximus justo blandit. Morbi sed est id magna malesuada convallis. Morbi accumsan lacus in sapien bibendum faucibus. Sed lorem massa, consectetur vel viverra non, varius vitae purus. Sed volutpat lectus id eros vehicula semper. Ut velit ante, porttitor id fringilla ac, pretium sit amet diam.</p>\r\n\r\n<p>Aliquam vehicula, odio aliquam facilisis eleifend, arcu nibh auctor nunc, at blandit odio magna at ex. Donec sed mattis ligula. Donec tristique ex eget ipsum consectetur, in pulvinar odio consequat. Mauris a arcu sodales, scelerisque nibh sit amet, sagittis enim. Integer non finibus nibh. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla bibendum accumsan massa vitae tristique.</p>\r\n\r\n<p>Ut ut porta nibh. Quisque consequat sollicitudin libero, nec hendrerit nisl finibus eu. Aliquam erat volutpat. Praesent aliquam massa vitae metus egestas aliquam. Etiam vestibulum dolor eu sem bibendum malesuada. Sed ac congue orci. Ut ut lorem sit amet lorem efficitur blandit id id elit. Duis ac dignissim dui. Aliquam erat volutpat. Phasellus dapibus condimentum dolor in placerat. Duis iaculis porttitor gravida.</p>\r\n\r\n<p>Aliquam luctus, orci eget malesuada blandit, metus leo rutrum ligula, in pharetra lorem nunc ac erat. Suspendisse potenti. Vestibulum rutrum efficitur diam eget bibendum. Aliquam at pellentesque tortor. Nulla fringilla felis et metus aliquam, ut euismod nisl tempor. Suspendisse sodales nisi nec neque blandit, ac vestibulum metus placerat. Suspendisse est urna, faucibus nec turpis eu, vehicula finibus nulla. Mauris blandit sollicitudin fringilla. Mauris eget ante sollicitudin, maximus libero at, dignissim est. Morbi quis vestibulum neque. Aenean et tincidunt augue, quis aliquet odio. Vivamus finibus ullamcorper erat, in feugiat metus maximus non. Aliquam sit amet dolor finibus, vehicula elit id, convallis purus. Aliquam vel augue vel ligula posuere venenatis non eget ex. Suspendisse ut mauris tellus. Nullam quis laoreet elit.</p>\r\n\r\n<p>Morbi eu neque neque. Aliquam erat volutpat. Nullam posuere orci faucibus sem suscipit rhoncus. Vivamus dapibus tellus ac odio eleifend, at tempor mi suscipit. Aliquam vel ornare nunc. Praesent in ex sagittis, auctor orci eget, facilisis mi. Fusce tempor eget urna eget tincidunt. Vivamus vitae vulputate risus, quis placerat massa. Etiam pretium dui eget libero finibus, quis euismod metus facilisis. Donec lacus enim, euismod nec auctor ac, porttitor in ex. Curabitur commodo, diam eu venenatis varius, turpis mauris lobortis augue, eu porta ipsum turpis et quam. Mauris vel felis condimentum, dictum ex nec, tincidunt ante.</p>\r\n\r\n<p>Duis porta elit sem, non blandit nulla cursus vel. Nam sagittis rhoncus est ac sagittis. Morbi non condimentum lacus, ut placerat lacus. Vivamus vel velit sit amet mi fermentum tristique sit amet a lorem. Quisque porttitor bibendum maximus. Pellentesque id tristique ante, et dictum leo. Aliquam eget diam posuere ipsum mollis aliquet. Pellentesque non est eros. Aliquam sit amet est ac urna rutrum aliquet vel venenatis erat. Morbi tempor magna eu nunc condimentum condimentum. Vivamus sed varius eros, ac feugiat odio.</p>\r\n\r\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Donec vitae risus consequat, iaculis turpis et, vestibulum leo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Praesent at felis vitae ipsum consequat efficitur. Phasellus aliquam lobortis nulla, at consectetur enim tristique nec. Mauris sodales eget lacus venenatis elementum. Donec at sem nisl. Phasellus posuere tristique nunc, vel iaculis dui ornare vitae. Vestibulum vitae dignissim orci, sit amet blandit dolor. Sed sit amet pretium erat. Integer convallis nisi eget lacinia posuere. Etiam gravida sagittis risus, imperdiet mollis massa fermentum in.</p>\r\n\r\n<p>Suspendisse elementum dui tincidunt odio laoreet, et gravida eros sodales. Curabitur tristique, odio nec feugiat hendrerit, purus neque sollicitudin massa, at convallis sem libero at odio. Suspendisse eget justo sit amet urna luctus ultricies nec in mi. Vestibulum nec erat vitae diam accumsan vehicula eu in elit. Cras non suscipit nisi, non euismod turpis. Cras velit magna, ullamcorper eu gravida nec, laoreet consequat mi. Mauris porttitor gravida ultricies. Integer venenatis, massa at volutpat fermentum, metus ex scelerisque mi, vel cursus augue lectus vel orci. Praesent vehicula enim non urna tristique viverra. Proin ligula risus, sodales quis erat vitae, sodales blandit libero. Aenean a ligula iaculis, lobortis tortor sed, facilisis nisl. Phasellus vestibulum metus eget quam elementum, et egestas justo suscipit. Aenean congue ipsum id lectus congue, nec tristique ipsum maximus. Aenean aliquam mattis nunc, non sagittis purus mattis et.</p>', NULL, '2020-05-20', NULL, 0, 1, 1, 'noticias/post3', 1, NULL),
(92, ' Phasellus urna purus', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus urna purus, suscipit eu efficitur sit amet, faucibus quis nisi. Pellentesque commodo, eros et commodo elementum, lectus augue interdum felis, at hendrerit erat arcu vel dolor. Aenean tellus sem, volutpat a dapibus semper, tempus at sem. Pellentesque vitae molestie leo. Sed malesuada risus et gravida semper. Fusce tincidunt semper libero ut bibendum. Ut vel fringilla nunc. Sed et ipsum tellus. Vestibulum dictum mi eget nisi bibendum imperdiet. Etiam nec faucibus ex.', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet nulla varius, tempor risus sit amet, malesuada felis. Duis dapibus mattis aliquam. Phasellus vestibulum pulvinar egestas. Cras egestas sit amet purus in dapibus. Nunc sagittis velit a faucibus vestibulum. Nunc pharetra porta risus, commodo cursus velit ultricies et. Donec dolor mauris, sagittis sit amet justo non, tristique scelerisque nunc. Vivamus vestibulum ligula in consequat tempus. Mauris at vehicula diam.</p>\r\n\r\n<p>Nunc condimentum erat nulla, varius sagittis eros molestie quis. Maecenas pharetra ligula non metus finibus pretium. Suspendisse vestibulum semper enim, vel blandit nunc dignissim at. Aenean mollis ipsum ac nisl pharetra, sit amet scelerisque augue sodales. Vivamus consequat eros eros, ut euismod eros luctus vel. Quisque tempor, justo et sagittis tempus, urna massa imperdiet leo, eget pharetra massa nisl quis ex. Praesent suscipit sem ipsum, non consequat tellus facilisis a. Nulla sit amet magna nisi. Etiam egestas tortor quis ligula venenatis, ac porta neque sodales. Maecenas varius malesuada cursus. Quisque turpis quam, lobortis et mauris sit amet, mollis egestas augue.</p>\r\n\r\n<p>Interdum et malesuada fames ac ante ipsum primis in faucibus. Nam et rutrum erat. Etiam elementum magna in purus accumsan, et maximus justo blandit. Morbi sed est id magna malesuada convallis. Morbi accumsan lacus in sapien bibendum faucibus. Sed lorem massa, consectetur vel viverra non, varius vitae purus. Sed volutpat lectus id eros vehicula semper. Ut velit ante, porttitor id fringilla ac, pretium sit amet diam.</p>\r\n\r\n<p>Aliquam vehicula, odio aliquam facilisis eleifend, arcu nibh auctor nunc, at blandit odio magna at ex. Donec sed mattis ligula. Donec tristique ex eget ipsum consectetur, in pulvinar odio consequat. Mauris a arcu sodales, scelerisque nibh sit amet, sagittis enim. Integer non finibus nibh. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla bibendum accumsan massa vitae tristique.</p>\r\n\r\n<p>Ut ut porta nibh. Quisque consequat sollicitudin libero, nec hendrerit nisl finibus eu. Aliquam erat volutpat. Praesent aliquam massa vitae metus egestas aliquam. Etiam vestibulum dolor eu sem bibendum malesuada. Sed ac congue orci. Ut ut lorem sit amet lorem efficitur blandit id id elit. Duis ac dignissim dui. Aliquam erat volutpat. Phasellus dapibus condimentum dolor in placerat. Duis iaculis porttitor gravida.</p>\r\n\r\n<p>Aliquam luctus, orci eget malesuada blandit, metus leo rutrum ligula, in pharetra lorem nunc ac erat. Suspendisse potenti. Vestibulum rutrum efficitur diam eget bibendum. Aliquam at pellentesque tortor. Nulla fringilla felis et metus aliquam, ut euismod nisl tempor. Suspendisse sodales nisi nec neque blandit, ac vestibulum metus placerat. Suspendisse est urna, faucibus nec turpis eu, vehicula finibus nulla. Mauris blandit sollicitudin fringilla. Mauris eget ante sollicitudin, maximus libero at, dignissim est. Morbi quis vestibulum neque. Aenean et tincidunt augue, quis aliquet odio. Vivamus finibus ullamcorper erat, in feugiat metus maximus non. Aliquam sit amet dolor finibus, vehicula elit id, convallis purus. Aliquam vel augue vel ligula posuere venenatis non eget ex. Suspendisse ut mauris tellus. Nullam quis laoreet elit.</p>\r\n\r\n<p>Morbi eu neque neque. Aliquam erat volutpat. Nullam posuere orci faucibus sem suscipit rhoncus. Vivamus dapibus tellus ac odio eleifend, at tempor mi suscipit. Aliquam vel ornare nunc. Praesent in ex sagittis, auctor orci eget, facilisis mi. Fusce tempor eget urna eget tincidunt. Vivamus vitae vulputate risus, quis placerat massa. Etiam pretium dui eget libero finibus, quis euismod metus facilisis. Donec lacus enim, euismod nec auctor ac, porttitor in ex. Curabitur commodo, diam eu venenatis varius, turpis mauris lobortis augue, eu porta ipsum turpis et quam. Mauris vel felis condimentum, dictum ex nec, tincidunt ante.</p>\r\n\r\n<p>Duis porta elit sem, non blandit nulla cursus vel. Nam sagittis rhoncus est ac sagittis. Morbi non condimentum lacus, ut placerat lacus. Vivamus vel velit sit amet mi fermentum tristique sit amet a lorem. Quisque porttitor bibendum maximus. Pellentesque id tristique ante, et dictum leo. Aliquam eget diam posuere ipsum mollis aliquet. Pellentesque non est eros. Aliquam sit amet est ac urna rutrum aliquet vel venenatis erat. Morbi tempor magna eu nunc condimentum condimentum. Vivamus sed varius eros, ac feugiat odio.</p>\r\n\r\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Donec vitae risus consequat, iaculis turpis et, vestibulum leo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Praesent at felis vitae ipsum consequat efficitur. Phasellus aliquam lobortis nulla, at consectetur enim tristique nec. Mauris sodales eget lacus venenatis elementum. Donec at sem nisl. Phasellus posuere tristique nunc, vel iaculis dui ornare vitae. Vestibulum vitae dignissim orci, sit amet blandit dolor. Sed sit amet pretium erat. Integer convallis nisi eget lacinia posuere. Etiam gravida sagittis risus, imperdiet mollis massa fermentum in.</p>\r\n\r\n<p>Suspendisse elementum dui tincidunt odio laoreet, et gravida eros sodales. Curabitur tristique, odio nec feugiat hendrerit, purus neque sollicitudin massa, at convallis sem libero at odio. Suspendisse eget justo sit amet urna luctus ultricies nec in mi. Vestibulum nec erat vitae diam accumsan vehicula eu in elit. Cras non suscipit nisi, non euismod turpis. Cras velit magna, ullamcorper eu gravida nec, laoreet consequat mi. Mauris porttitor gravida ultricies. Integer venenatis, massa at volutpat fermentum, metus ex scelerisque mi, vel cursus augue lectus vel orci. Praesent vehicula enim non urna tristique viverra. Proin ligula risus, sodales quis erat vitae, sodales blandit libero. Aenean a ligula iaculis, lobortis tortor sed, facilisis nisl. Phasellus vestibulum metus eget quam elementum, et egestas justo suscipit. Aenean congue ipsum id lectus congue, nec tristique ipsum maximus. Aenean aliquam mattis nunc, non sagittis purus mattis et.</p>', NULL, '2020-05-19', NULL, 0, 1, 1, 'post4', 2, NULL),
(93, 'Aenean tellus sem', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus urna purus, suscipit eu efficitur sit amet, faucibus quis nisi. Pellentesque commodo, eros et commodo elementum, lectus augue interdum felis, at hendrerit erat arcu vel dolor. Aenean tellus sem, volutpat a dapibus semper, tempus at sem. Pellentesque vitae molestie leo. Sed malesuada risus et gravida semper. Fusce tincidunt semper libero ut bibendum. Ut vel fringilla nunc. Sed et ipsum tellus. Vestibulum dictum mi eget nisi bibendum imperdiet. Etiam nec faucibus ex.', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet nulla varius, tempor risus sit amet, malesuada felis. Duis dapibus mattis aliquam. Phasellus vestibulum pulvinar egestas. Cras egestas sit amet purus in dapibus. Nunc sagittis velit a faucibus vestibulum. Nunc pharetra porta risus, commodo cursus velit ultricies et. Donec dolor mauris, sagittis sit amet justo non, tristique scelerisque nunc. Vivamus vestibulum ligula in consequat tempus. Mauris at vehicula diam.</p>\r\n\r\n<p>Nunc condimentum erat nulla, varius sagittis eros molestie quis. Maecenas pharetra ligula non metus finibus pretium. Suspendisse vestibulum semper enim, vel blandit nunc dignissim at. Aenean mollis ipsum ac nisl pharetra, sit amet scelerisque augue sodales. Vivamus consequat eros eros, ut euismod eros luctus vel. Quisque tempor, justo et sagittis tempus, urna massa imperdiet leo, eget pharetra massa nisl quis ex. Praesent suscipit sem ipsum, non consequat tellus facilisis a. Nulla sit amet magna nisi. Etiam egestas tortor quis ligula venenatis, ac porta neque sodales. Maecenas varius malesuada cursus. Quisque turpis quam, lobortis et mauris sit amet, mollis egestas augue.</p>\r\n\r\n<p>Interdum et malesuada fames ac ante ipsum primis in faucibus. Nam et rutrum erat. Etiam elementum magna in purus accumsan, et maximus justo blandit. Morbi sed est id magna malesuada convallis. Morbi accumsan lacus in sapien bibendum faucibus. Sed lorem massa, consectetur vel viverra non, varius vitae purus. Sed volutpat lectus id eros vehicula semper. Ut velit ante, porttitor id fringilla ac, pretium sit amet diam.</p>\r\n\r\n<p>Aliquam vehicula, odio aliquam facilisis eleifend, arcu nibh auctor nunc, at blandit odio magna at ex. Donec sed mattis ligula. Donec tristique ex eget ipsum consectetur, in pulvinar odio consequat. Mauris a arcu sodales, scelerisque nibh sit amet, sagittis enim. Integer non finibus nibh. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla bibendum accumsan massa vitae tristique.</p>\r\n\r\n<p>Ut ut porta nibh. Quisque consequat sollicitudin libero, nec hendrerit nisl finibus eu. Aliquam erat volutpat. Praesent aliquam massa vitae metus egestas aliquam. Etiam vestibulum dolor eu sem bibendum malesuada. Sed ac congue orci. Ut ut lorem sit amet lorem efficitur blandit id id elit. Duis ac dignissim dui. Aliquam erat volutpat. Phasellus dapibus condimentum dolor in placerat. Duis iaculis porttitor gravida.</p>\r\n\r\n<p>Aliquam luctus, orci eget malesuada blandit, metus leo rutrum ligula, in pharetra lorem nunc ac erat. Suspendisse potenti. Vestibulum rutrum efficitur diam eget bibendum. Aliquam at pellentesque tortor. Nulla fringilla felis et metus aliquam, ut euismod nisl tempor. Suspendisse sodales nisi nec neque blandit, ac vestibulum metus placerat. Suspendisse est urna, faucibus nec turpis eu, vehicula finibus nulla. Mauris blandit sollicitudin fringilla. Mauris eget ante sollicitudin, maximus libero at, dignissim est. Morbi quis vestibulum neque. Aenean et tincidunt augue, quis aliquet odio. Vivamus finibus ullamcorper erat, in feugiat metus maximus non. Aliquam sit amet dolor finibus, vehicula elit id, convallis purus. Aliquam vel augue vel ligula posuere venenatis non eget ex. Suspendisse ut mauris tellus. Nullam quis laoreet elit.</p>\r\n\r\n<p>Morbi eu neque neque. Aliquam erat volutpat. Nullam posuere orci faucibus sem suscipit rhoncus. Vivamus dapibus tellus ac odio eleifend, at tempor mi suscipit. Aliquam vel ornare nunc. Praesent in ex sagittis, auctor orci eget, facilisis mi. Fusce tempor eget urna eget tincidunt. Vivamus vitae vulputate risus, quis placerat massa. Etiam pretium dui eget libero finibus, quis euismod metus facilisis. Donec lacus enim, euismod nec auctor ac, porttitor in ex. Curabitur commodo, diam eu venenatis varius, turpis mauris lobortis augue, eu porta ipsum turpis et quam. Mauris vel felis condimentum, dictum ex nec, tincidunt ante.</p>\r\n\r\n<p>Duis porta elit sem, non blandit nulla cursus vel. Nam sagittis rhoncus est ac sagittis. Morbi non condimentum lacus, ut placerat lacus. Vivamus vel velit sit amet mi fermentum tristique sit amet a lorem. Quisque porttitor bibendum maximus. Pellentesque id tristique ante, et dictum leo. Aliquam eget diam posuere ipsum mollis aliquet. Pellentesque non est eros. Aliquam sit amet est ac urna rutrum aliquet vel venenatis erat. Morbi tempor magna eu nunc condimentum condimentum. Vivamus sed varius eros, ac feugiat odio.</p>\r\n\r\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Donec vitae risus consequat, iaculis turpis et, vestibulum leo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Praesent at felis vitae ipsum consequat efficitur. Phasellus aliquam lobortis nulla, at consectetur enim tristique nec. Mauris sodales eget lacus venenatis elementum. Donec at sem nisl. Phasellus posuere tristique nunc, vel iaculis dui ornare vitae. Vestibulum vitae dignissim orci, sit amet blandit dolor. Sed sit amet pretium erat. Integer convallis nisi eget lacinia posuere. Etiam gravida sagittis risus, imperdiet mollis massa fermentum in.</p>\r\n\r\n<p>Suspendisse elementum dui tincidunt odio laoreet, et gravida eros sodales. Curabitur tristique, odio nec feugiat hendrerit, purus neque sollicitudin massa, at convallis sem libero at odio. Suspendisse eget justo sit amet urna luctus ultricies nec in mi. Vestibulum nec erat vitae diam accumsan vehicula eu in elit. Cras non suscipit nisi, non euismod turpis. Cras velit magna, ullamcorper eu gravida nec, laoreet consequat mi. Mauris porttitor gravida ultricies. Integer venenatis, massa at volutpat fermentum, metus ex scelerisque mi, vel cursus augue lectus vel orci. Praesent vehicula enim non urna tristique viverra. Proin ligula risus, sodales quis erat vitae, sodales blandit libero. Aenean a ligula iaculis, lobortis tortor sed, facilisis nisl. Phasellus vestibulum metus eget quam elementum, et egestas justo suscipit. Aenean congue ipsum id lectus congue, nec tristique ipsum maximus. Aenean aliquam mattis nunc, non sagittis purus mattis et.</p>', NULL, '2020-05-13', NULL, 0, 1, 1, 'post5', 2, NULL),
(95, 'Vestibulum dictum mi eget', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus urna purus, suscipit eu efficitur sit amet, faucibus quis nisi. Pellentesque commodo, eros et commodo elementum, lectus augue interdum felis, at hendrerit erat arcu vel dolor. Aenean tellus sem, volutpat a dapibus semper, tempus at sem. Pellentesque vitae molestie leo. Sed malesuada risus et gravida semper. Fusce tincidunt semper libero ut bibendum. Ut vel fringilla nunc. Sed et ipsum tellus. Vestibulum dictum mi eget nisi bibendum imperdiet. Etiam nec faucibus ex.', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet nulla varius, tempor risus sit amet, malesuada felis. Duis dapibus mattis aliquam. Phasellus vestibulum pulvinar egestas. Cras egestas sit amet purus in dapibus. Nunc sagittis velit a faucibus vestibulum. Nunc pharetra porta risus, commodo cursus velit ultricies et. Donec dolor mauris, sagittis sit amet justo non, tristique scelerisque nunc. Vivamus vestibulum ligula in consequat tempus. Mauris at vehicula diam.</p>\r\n\r\n<p>Nunc condimentum erat nulla, varius sagittis eros molestie quis. Maecenas pharetra ligula non metus finibus pretium. Suspendisse vestibulum semper enim, vel blandit nunc dignissim at. Aenean mollis ipsum ac nisl pharetra, sit amet scelerisque augue sodales. Vivamus consequat eros eros, ut euismod eros luctus vel. Quisque tempor, justo et sagittis tempus, urna massa imperdiet leo, eget pharetra massa nisl quis ex. Praesent suscipit sem ipsum, non consequat tellus facilisis a. Nulla sit amet magna nisi. Etiam egestas tortor quis ligula venenatis, ac porta neque sodales. Maecenas varius malesuada cursus. Quisque turpis quam, lobortis et mauris sit amet, mollis egestas augue.</p>\r\n\r\n<p>Interdum et malesuada fames ac ante ipsum primis in faucibus. Nam et rutrum erat. Etiam elementum magna in purus accumsan, et maximus justo blandit. Morbi sed est id magna malesuada convallis. Morbi accumsan lacus in sapien bibendum faucibus. Sed lorem massa, consectetur vel viverra non, varius vitae purus. Sed volutpat lectus id eros vehicula semper. Ut velit ante, porttitor id fringilla ac, pretium sit amet diam.</p>\r\n\r\n<p>Aliquam vehicula, odio aliquam facilisis eleifend, arcu nibh auctor nunc, at blandit odio magna at ex. Donec sed mattis ligula. Donec tristique ex eget ipsum consectetur, in pulvinar odio consequat. Mauris a arcu sodales, scelerisque nibh sit amet, sagittis enim. Integer non finibus nibh. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla bibendum accumsan massa vitae tristique.</p>\r\n\r\n<p>Ut ut porta nibh. Quisque consequat sollicitudin libero, nec hendrerit nisl finibus eu. Aliquam erat volutpat. Praesent aliquam massa vitae metus egestas aliquam. Etiam vestibulum dolor eu sem bibendum malesuada. Sed ac congue orci. Ut ut lorem sit amet lorem efficitur blandit id id elit. Duis ac dignissim dui. Aliquam erat volutpat. Phasellus dapibus condimentum dolor in placerat. Duis iaculis porttitor gravida.</p>\r\n\r\n<p>Aliquam luctus, orci eget malesuada blandit, metus leo rutrum ligula, in pharetra lorem nunc ac erat. Suspendisse potenti. Vestibulum rutrum efficitur diam eget bibendum. Aliquam at pellentesque tortor. Nulla fringilla felis et metus aliquam, ut euismod nisl tempor. Suspendisse sodales nisi nec neque blandit, ac vestibulum metus placerat. Suspendisse est urna, faucibus nec turpis eu, vehicula finibus nulla. Mauris blandit sollicitudin fringilla. Mauris eget ante sollicitudin, maximus libero at, dignissim est. Morbi quis vestibulum neque. Aenean et tincidunt augue, quis aliquet odio. Vivamus finibus ullamcorper erat, in feugiat metus maximus non. Aliquam sit amet dolor finibus, vehicula elit id, convallis purus. Aliquam vel augue vel ligula posuere venenatis non eget ex. Suspendisse ut mauris tellus. Nullam quis laoreet elit.</p>\r\n\r\n<p>Morbi eu neque neque. Aliquam erat volutpat. Nullam posuere orci faucibus sem suscipit rhoncus. Vivamus dapibus tellus ac odio eleifend, at tempor mi suscipit. Aliquam vel ornare nunc. Praesent in ex sagittis, auctor orci eget, facilisis mi. Fusce tempor eget urna eget tincidunt. Vivamus vitae vulputate risus, quis placerat massa. Etiam pretium dui eget libero finibus, quis euismod metus facilisis. Donec lacus enim, euismod nec auctor ac, porttitor in ex. Curabitur commodo, diam eu venenatis varius, turpis mauris lobortis augue, eu porta ipsum turpis et quam. Mauris vel felis condimentum, dictum ex nec, tincidunt ante.</p>\r\n\r\n<p>Duis porta elit sem, non blandit nulla cursus vel. Nam sagittis rhoncus est ac sagittis. Morbi non condimentum lacus, ut placerat lacus. Vivamus vel velit sit amet mi fermentum tristique sit amet a lorem. Quisque porttitor bibendum maximus. Pellentesque id tristique ante, et dictum leo. Aliquam eget diam posuere ipsum mollis aliquet. Pellentesque non est eros. Aliquam sit amet est ac urna rutrum aliquet vel venenatis erat. Morbi tempor magna eu nunc condimentum condimentum. Vivamus sed varius eros, ac feugiat odio.</p>\r\n\r\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Donec vitae risus consequat, iaculis turpis et, vestibulum leo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Praesent at felis vitae ipsum consequat efficitur. Phasellus aliquam lobortis nulla, at consectetur enim tristique nec. Mauris sodales eget lacus venenatis elementum. Donec at sem nisl. Phasellus posuere tristique nunc, vel iaculis dui ornare vitae. Vestibulum vitae dignissim orci, sit amet blandit dolor. Sed sit amet pretium erat. Integer convallis nisi eget lacinia posuere. Etiam gravida sagittis risus, imperdiet mollis massa fermentum in.</p>\r\n\r\n<p>Suspendisse elementum dui tincidunt odio laoreet, et gravida eros sodales. Curabitur tristique, odio nec feugiat hendrerit, purus neque sollicitudin massa, at convallis sem libero at odio. Suspendisse eget justo sit amet urna luctus ultricies nec in mi. Vestibulum nec erat vitae diam accumsan vehicula eu in elit. Cras non suscipit nisi, non euismod turpis. Cras velit magna, ullamcorper eu gravida nec, laoreet consequat mi. Mauris porttitor gravida ultricies. Integer venenatis, massa at volutpat fermentum, metus ex scelerisque mi, vel cursus augue lectus vel orci. Praesent vehicula enim non urna tristique viverra. Proin ligula risus, sodales quis erat vitae, sodales blandit libero. Aenean a ligula iaculis, lobortis tortor sed, facilisis nisl. Phasellus vestibulum metus eget quam elementum, et egestas justo suscipit. Aenean congue ipsum id lectus congue, nec tristique ipsum maximus. Aenean aliquam mattis nunc, non sagittis purus mattis et.</p>', NULL, '2020-05-25', NULL, 0, 1, 1, 'noticias/post7', 1, NULL);
INSERT INTO `postagens` (`id_postagens`, `titulo_postagens`, `desc_postagens`, `conteudo_postagens`, `tags_postagens`, `data_criacao_postagens`, `data_modificacao_postagens`, `total_visualizacao_postagens`, `ch_autor_postagens`, `status_postagens`, `url_postagens`, `categ_postagens`, `capa_post`) VALUES
(96, 'Eros et commodo elementum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus urna purus, suscipit eu efficitur sit amet, faucibus quis nisi. Pellentesque commodo, eros et commodo elementum, lectus augue interdum felis, at hendrerit erat arcu vel dolor. Aenean tellus sem, volutpat a dapibus semper, tempus at sem. Pellentesque vitae molestie leo. Sed malesuada risus et gravida semper. Fusce tincidunt semper libero ut bibendum. Ut vel fringilla nunc. Sed et ipsum tellus. Vestibulum dictum mi eget nisi bibendum imperdiet. Etiam nec faucibus ex.', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet nulla varius, tempor risus sit amet, malesuada felis. Duis dapibus mattis aliquam. Phasellus vestibulum pulvinar egestas. Cras egestas sit amet purus in dapibus. Nunc sagittis velit a faucibus vestibulum. Nunc pharetra porta risus, commodo cursus velit ultricies et. Donec dolor mauris, sagittis sit amet justo non, tristique scelerisque nunc. Vivamus vestibulum ligula in consequat tempus. Mauris at vehicula diam.</p>\r\n\r\n<p>Nunc condimentum erat nulla, varius sagittis eros molestie quis. Maecenas pharetra ligula non metus finibus pretium. Suspendisse vestibulum semper enim, vel blandit nunc dignissim at. Aenean mollis ipsum ac nisl pharetra, sit amet scelerisque augue sodales. Vivamus consequat eros eros, ut euismod eros luctus vel. Quisque tempor, justo et sagittis tempus, urna massa imperdiet leo, eget pharetra massa nisl quis ex. Praesent suscipit sem ipsum, non consequat tellus facilisis a. Nulla sit amet magna nisi. Etiam egestas tortor quis ligula venenatis, ac porta neque sodales. Maecenas varius malesuada cursus. Quisque turpis quam, lobortis et mauris sit amet, mollis egestas augue.</p>\r\n\r\n<p>Interdum et malesuada fames ac ante ipsum primis in faucibus. Nam et rutrum erat. Etiam elementum magna in purus accumsan, et maximus justo blandit. Morbi sed est id magna malesuada convallis. Morbi accumsan lacus in sapien bibendum faucibus. Sed lorem massa, consectetur vel viverra non, varius vitae purus. Sed volutpat lectus id eros vehicula semper. Ut velit ante, porttitor id fringilla ac, pretium sit amet diam.</p>\r\n\r\n<p>Aliquam vehicula, odio aliquam facilisis eleifend, arcu nibh auctor nunc, at blandit odio magna at ex. Donec sed mattis ligula. Donec tristique ex eget ipsum consectetur, in pulvinar odio consequat. Mauris a arcu sodales, scelerisque nibh sit amet, sagittis enim. Integer non finibus nibh. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla bibendum accumsan massa vitae tristique.</p>\r\n\r\n<p>Ut ut porta nibh. Quisque consequat sollicitudin libero, nec hendrerit nisl finibus eu. Aliquam erat volutpat. Praesent aliquam massa vitae metus egestas aliquam. Etiam vestibulum dolor eu sem bibendum malesuada. Sed ac congue orci. Ut ut lorem sit amet lorem efficitur blandit id id elit. Duis ac dignissim dui. Aliquam erat volutpat. Phasellus dapibus condimentum dolor in placerat. Duis iaculis porttitor gravida.</p>\r\n\r\n<p>Aliquam luctus, orci eget malesuada blandit, metus leo rutrum ligula, in pharetra lorem nunc ac erat. Suspendisse potenti. Vestibulum rutrum efficitur diam eget bibendum. Aliquam at pellentesque tortor. Nulla fringilla felis et metus aliquam, ut euismod nisl tempor. Suspendisse sodales nisi nec neque blandit, ac vestibulum metus placerat. Suspendisse est urna, faucibus nec turpis eu, vehicula finibus nulla. Mauris blandit sollicitudin fringilla. Mauris eget ante sollicitudin, maximus libero at, dignissim est. Morbi quis vestibulum neque. Aenean et tincidunt augue, quis aliquet odio. Vivamus finibus ullamcorper erat, in feugiat metus maximus non. Aliquam sit amet dolor finibus, vehicula elit id, convallis purus. Aliquam vel augue vel ligula posuere venenatis non eget ex. Suspendisse ut mauris tellus. Nullam quis laoreet elit.</p>\r\n\r\n<p>Morbi eu neque neque. Aliquam erat volutpat. Nullam posuere orci faucibus sem suscipit rhoncus. Vivamus dapibus tellus ac odio eleifend, at tempor mi suscipit. Aliquam vel ornare nunc. Praesent in ex sagittis, auctor orci eget, facilisis mi. Fusce tempor eget urna eget tincidunt. Vivamus vitae vulputate risus, quis placerat massa. Etiam pretium dui eget libero finibus, quis euismod metus facilisis. Donec lacus enim, euismod nec auctor ac, porttitor in ex. Curabitur commodo, diam eu venenatis varius, turpis mauris lobortis augue, eu porta ipsum turpis et quam. Mauris vel felis condimentum, dictum ex nec, tincidunt ante.</p>\r\n\r\n<p>Duis porta elit sem, non blandit nulla cursus vel. Nam sagittis rhoncus est ac sagittis. Morbi non condimentum lacus, ut placerat lacus. Vivamus vel velit sit amet mi fermentum tristique sit amet a lorem. Quisque porttitor bibendum maximus. Pellentesque id tristique ante, et dictum leo. Aliquam eget diam posuere ipsum mollis aliquet. Pellentesque non est eros. Aliquam sit amet est ac urna rutrum aliquet vel venenatis erat. Morbi tempor magna eu nunc condimentum condimentum. Vivamus sed varius eros, ac feugiat odio.</p>\r\n\r\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Donec vitae risus consequat, iaculis turpis et, vestibulum leo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Praesent at felis vitae ipsum consequat efficitur. Phasellus aliquam lobortis nulla, at consectetur enim tristique nec. Mauris sodales eget lacus venenatis elementum. Donec at sem nisl. Phasellus posuere tristique nunc, vel iaculis dui ornare vitae. Vestibulum vitae dignissim orci, sit amet blandit dolor. Sed sit amet pretium erat. Integer convallis nisi eget lacinia posuere. Etiam gravida sagittis risus, imperdiet mollis massa fermentum in.</p>\r\n\r\n<p>Suspendisse elementum dui tincidunt odio laoreet, et gravida eros sodales. Curabitur tristique, odio nec feugiat hendrerit, purus neque sollicitudin massa, at convallis sem libero at odio. Suspendisse eget justo sit amet urna luctus ultricies nec in mi. Vestibulum nec erat vitae diam accumsan vehicula eu in elit. Cras non suscipit nisi, non euismod turpis. Cras velit magna, ullamcorper eu gravida nec, laoreet consequat mi. Mauris porttitor gravida ultricies. Integer venenatis, massa at volutpat fermentum, metus ex scelerisque mi, vel cursus augue lectus vel orci. Praesent vehicula enim non urna tristique viverra. Proin ligula risus, sodales quis erat vitae, sodales blandit libero. Aenean a ligula iaculis, lobortis tortor sed, facilisis nisl. Phasellus vestibulum metus eget quam elementum, et egestas justo suscipit. Aenean congue ipsum id lectus congue, nec tristique ipsum maximus. Aenean aliquam mattis nunc, non sagittis purus mattis et.</p>', NULL, '2020-05-31', NULL, 0, 1, 1, 'post8', 2, NULL),
(97, 'noticias', NULL, '', '', '2020-11-26', NULL, 0, 1, 1, 'noticias', NULL, NULL),
(98, 'projetos', NULL, 'projetos', NULL, '2020-11-18', NULL, 0, 1, 1, 'projetos', NULL, NULL),
(99, 'Educacao infantil', NULL, 'educacao-infantil', NULL, '2020-11-14', NULL, 0, 1, 1, 'educacao-infantil', NULL, NULL),
(100, 'Ensino fundamental I', NULL, 'ensino-fundamental', NULL, '2020-11-13', NULL, 0, 1, 1, 'ensino-fundamental', NULL, NULL),
(102, 'Ut vel fringilla nunc', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus urna purus, suscipit eu efficitur sit amet, faucibus quis nisi. Pellentesque commodo, eros et commodo elementum, lectus augue interdum felis, at hendrerit erat arcu vel dolor. Aenean tellus sem, volutpat a dapibus semper, tempus at sem. Pellentesque vitae molestie leo. Sed malesuada risus et gravida semper. Fusce tincidunt semper libero ut bibendum. Ut vel fringilla nunc. Sed et ipsum tellus. Vestibulum dictum mi eget nisi bibendum imperdiet. Etiam nec faucibus ex.', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet nulla varius, tempor risus sit amet, malesuada felis. Duis dapibus mattis aliquam. Phasellus vestibulum pulvinar egestas. Cras egestas sit amet purus in dapibus. Nunc sagittis velit a faucibus vestibulum. Nunc pharetra porta risus, commodo cursus velit ultricies et. Donec dolor mauris, sagittis sit amet justo non, tristique scelerisque nunc. Vivamus vestibulum ligula in consequat tempus. Mauris at vehicula diam.</p>\r\n\r\n<p>Nunc condimentum erat nulla, varius sagittis eros molestie quis. Maecenas pharetra ligula non metus finibus pretium. Suspendisse vestibulum semper enim, vel blandit nunc dignissim at. Aenean mollis ipsum ac nisl pharetra, sit amet scelerisque augue sodales. Vivamus consequat eros eros, ut euismod eros luctus vel. Quisque tempor, justo et sagittis tempus, urna massa imperdiet leo, eget pharetra massa nisl quis ex. Praesent suscipit sem ipsum, non consequat tellus facilisis a. Nulla sit amet magna nisi. Etiam egestas tortor quis ligula venenatis, ac porta neque sodales. Maecenas varius malesuada cursus. Quisque turpis quam, lobortis et mauris sit amet, mollis egestas augue.</p>\r\n\r\n<p>Interdum et malesuada fames ac ante ipsum primis in faucibus. Nam et rutrum erat. Etiam elementum magna in purus accumsan, et maximus justo blandit. Morbi sed est id magna malesuada convallis. Morbi accumsan lacus in sapien bibendum faucibus. Sed lorem massa, consectetur vel viverra non, varius vitae purus. Sed volutpat lectus id eros vehicula semper. Ut velit ante, porttitor id fringilla ac, pretium sit amet diam.</p>\r\n\r\n<p>Aliquam vehicula, odio aliquam facilisis eleifend, arcu nibh auctor nunc, at blandit odio magna at ex. Donec sed mattis ligula. Donec tristique ex eget ipsum consectetur, in pulvinar odio consequat. Mauris a arcu sodales, scelerisque nibh sit amet, sagittis enim. Integer non finibus nibh. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla bibendum accumsan massa vitae tristique.</p>\r\n\r\n<p>Ut ut porta nibh. Quisque consequat sollicitudin libero, nec hendrerit nisl finibus eu. Aliquam erat volutpat. Praesent aliquam massa vitae metus egestas aliquam. Etiam vestibulum dolor eu sem bibendum malesuada. Sed ac congue orci. Ut ut lorem sit amet lorem efficitur blandit id id elit. Duis ac dignissim dui. Aliquam erat volutpat. Phasellus dapibus condimentum dolor in placerat. Duis iaculis porttitor gravida.</p>\r\n\r\n<p>Aliquam luctus, orci eget malesuada blandit, metus leo rutrum ligula, in pharetra lorem nunc ac erat. Suspendisse potenti. Vestibulum rutrum efficitur diam eget bibendum. Aliquam at pellentesque tortor. Nulla fringilla felis et metus aliquam, ut euismod nisl tempor. Suspendisse sodales nisi nec neque blandit, ac vestibulum metus placerat. Suspendisse est urna, faucibus nec turpis eu, vehicula finibus nulla. Mauris blandit sollicitudin fringilla. Mauris eget ante sollicitudin, maximus libero at, dignissim est. Morbi quis vestibulum neque. Aenean et tincidunt augue, quis aliquet odio. Vivamus finibus ullamcorper erat, in feugiat metus maximus non. Aliquam sit amet dolor finibus, vehicula elit id, convallis purus. Aliquam vel augue vel ligula posuere venenatis non eget ex. Suspendisse ut mauris tellus. Nullam quis laoreet elit.</p>\r\n\r\n<p>Morbi eu neque neque. Aliquam erat volutpat. Nullam posuere orci faucibus sem suscipit rhoncus. Vivamus dapibus tellus ac odio eleifend, at tempor mi suscipit. Aliquam vel ornare nunc. Praesent in ex sagittis, auctor orci eget, facilisis mi. Fusce tempor eget urna eget tincidunt. Vivamus vitae vulputate risus, quis placerat massa. Etiam pretium dui eget libero finibus, quis euismod metus facilisis. Donec lacus enim, euismod nec auctor ac, porttitor in ex. Curabitur commodo, diam eu venenatis varius, turpis mauris lobortis augue, eu porta ipsum turpis et quam. Mauris vel felis condimentum, dictum ex nec, tincidunt ante.</p>\r\n\r\n<p>Duis porta elit sem, non blandit nulla cursus vel. Nam sagittis rhoncus est ac sagittis. Morbi non condimentum lacus, ut placerat lacus. Vivamus vel velit sit amet mi fermentum tristique sit amet a lorem. Quisque porttitor bibendum maximus. Pellentesque id tristique ante, et dictum leo. Aliquam eget diam posuere ipsum mollis aliquet. Pellentesque non est eros. Aliquam sit amet est ac urna rutrum aliquet vel venenatis erat. Morbi tempor magna eu nunc condimentum condimentum. Vivamus sed varius eros, ac feugiat odio.</p>\r\n\r\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Donec vitae risus consequat, iaculis turpis et, vestibulum leo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Praesent at felis vitae ipsum consequat efficitur. Phasellus aliquam lobortis nulla, at consectetur enim tristique nec. Mauris sodales eget lacus venenatis elementum. Donec at sem nisl. Phasellus posuere tristique nunc, vel iaculis dui ornare vitae. Vestibulum vitae dignissim orci, sit amet blandit dolor. Sed sit amet pretium erat. Integer convallis nisi eget lacinia posuere. Etiam gravida sagittis risus, imperdiet mollis massa fermentum in.</p>\r\n\r\n<p>Suspendisse elementum dui tincidunt odio laoreet, et gravida eros sodales. Curabitur tristique, odio nec feugiat hendrerit, purus neque sollicitudin massa, at convallis sem libero at odio. Suspendisse eget justo sit amet urna luctus ultricies nec in mi. Vestibulum nec erat vitae diam accumsan vehicula eu in elit. Cras non suscipit nisi, non euismod turpis. Cras velit magna, ullamcorper eu gravida nec, laoreet consequat mi. Mauris porttitor gravida ultricies. Integer venenatis, massa at volutpat fermentum, metus ex scelerisque mi, vel cursus augue lectus vel orci. Praesent vehicula enim non urna tristique viverra. Proin ligula risus, sodales quis erat vitae, sodales blandit libero. Aenean a ligula iaculis, lobortis tortor sed, facilisis nisl. Phasellus vestibulum metus eget quam elementum, et egestas justo suscipit. Aenean congue ipsum id lectus congue, nec tristique ipsum maximus. Aenean aliquam mattis nunc, non sagittis purus mattis et.</p>', NULL, '2020-11-02', NULL, 0, 1, 1, 'noticias/posdsd', 1, NULL),
(103, 'Sed malesuada risus et gravida semper', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus urna purus, suscipit eu efficitur sit amet, faucibus quis nisi. Pellentesque commodo, eros et commodo elementum, lectus augue interdum felis, at hendrerit erat arcu vel dolor. Aenean tellus sem, volutpat a dapibus semper, tempus at sem. Pellentesque vitae molestie leo. Sed malesuada risus et gravida semper. Fusce tincidunt semper libero ut bibendum. Ut vel fringilla nunc. Sed et ipsum tellus. Vestibulum dictum mi eget nisi bibendum imperdiet. Etiam nec faucibus ex.', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet nulla varius, tempor risus sit amet, malesuada felis. Duis dapibus mattis aliquam. Phasellus vestibulum pulvinar egestas. Cras egestas sit amet purus in dapibus. Nunc sagittis velit a faucibus vestibulum. Nunc pharetra porta risus, commodo cursus velit ultricies et. Donec dolor mauris, sagittis sit amet justo non, tristique scelerisque nunc. Vivamus vestibulum ligula in consequat tempus. Mauris at vehicula diam.</p>\r\n\r\n<p>Nunc condimentum erat nulla, varius sagittis eros molestie quis. Maecenas pharetra ligula non metus finibus pretium. Suspendisse vestibulum semper enim, vel blandit nunc dignissim at. Aenean mollis ipsum ac nisl pharetra, sit amet scelerisque augue sodales. Vivamus consequat eros eros, ut euismod eros luctus vel. Quisque tempor, justo et sagittis tempus, urna massa imperdiet leo, eget pharetra massa nisl quis ex. Praesent suscipit sem ipsum, non consequat tellus facilisis a. Nulla sit amet magna nisi. Etiam egestas tortor quis ligula venenatis, ac porta neque sodales. Maecenas varius malesuada cursus. Quisque turpis quam, lobortis et mauris sit amet, mollis egestas augue.</p>\r\n\r\n<p>Interdum et malesuada fames ac ante ipsum primis in faucibus. Nam et rutrum erat. Etiam elementum magna in purus accumsan, et maximus justo blandit. Morbi sed est id magna malesuada convallis. Morbi accumsan lacus in sapien bibendum faucibus. Sed lorem massa, consectetur vel viverra non, varius vitae purus. Sed volutpat lectus id eros vehicula semper. Ut velit ante, porttitor id fringilla ac, pretium sit amet diam.</p>\r\n\r\n<p>Aliquam vehicula, odio aliquam facilisis eleifend, arcu nibh auctor nunc, at blandit odio magna at ex. Donec sed mattis ligula. Donec tristique ex eget ipsum consectetur, in pulvinar odio consequat. Mauris a arcu sodales, scelerisque nibh sit amet, sagittis enim. Integer non finibus nibh. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla bibendum accumsan massa vitae tristique.</p>\r\n\r\n<p>Ut ut porta nibh. Quisque consequat sollicitudin libero, nec hendrerit nisl finibus eu. Aliquam erat volutpat. Praesent aliquam massa vitae metus egestas aliquam. Etiam vestibulum dolor eu sem bibendum malesuada. Sed ac congue orci. Ut ut lorem sit amet lorem efficitur blandit id id elit. Duis ac dignissim dui. Aliquam erat volutpat. Phasellus dapibus condimentum dolor in placerat. Duis iaculis porttitor gravida.</p>\r\n\r\n<p>Aliquam luctus, orci eget malesuada blandit, metus leo rutrum ligula, in pharetra lorem nunc ac erat. Suspendisse potenti. Vestibulum rutrum efficitur diam eget bibendum. Aliquam at pellentesque tortor. Nulla fringilla felis et metus aliquam, ut euismod nisl tempor. Suspendisse sodales nisi nec neque blandit, ac vestibulum metus placerat. Suspendisse est urna, faucibus nec turpis eu, vehicula finibus nulla. Mauris blandit sollicitudin fringilla. Mauris eget ante sollicitudin, maximus libero at, dignissim est. Morbi quis vestibulum neque. Aenean et tincidunt augue, quis aliquet odio. Vivamus finibus ullamcorper erat, in feugiat metus maximus non. Aliquam sit amet dolor finibus, vehicula elit id, convallis purus. Aliquam vel augue vel ligula posuere venenatis non eget ex. Suspendisse ut mauris tellus. Nullam quis laoreet elit.</p>\r\n\r\n<p>Morbi eu neque neque. Aliquam erat volutpat. Nullam posuere orci faucibus sem suscipit rhoncus. Vivamus dapibus tellus ac odio eleifend, at tempor mi suscipit. Aliquam vel ornare nunc. Praesent in ex sagittis, auctor orci eget, facilisis mi. Fusce tempor eget urna eget tincidunt. Vivamus vitae vulputate risus, quis placerat massa. Etiam pretium dui eget libero finibus, quis euismod metus facilisis. Donec lacus enim, euismod nec auctor ac, porttitor in ex. Curabitur commodo, diam eu venenatis varius, turpis mauris lobortis augue, eu porta ipsum turpis et quam. Mauris vel felis condimentum, dictum ex nec, tincidunt ante.</p>\r\n\r\n<p>Duis porta elit sem, non blandit nulla cursus vel. Nam sagittis rhoncus est ac sagittis. Morbi non condimentum lacus, ut placerat lacus. Vivamus vel velit sit amet mi fermentum tristique sit amet a lorem. Quisque porttitor bibendum maximus. Pellentesque id tristique ante, et dictum leo. Aliquam eget diam posuere ipsum mollis aliquet. Pellentesque non est eros. Aliquam sit amet est ac urna rutrum aliquet vel venenatis erat. Morbi tempor magna eu nunc condimentum condimentum. Vivamus sed varius eros, ac feugiat odio.</p>\r\n\r\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Donec vitae risus consequat, iaculis turpis et, vestibulum leo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Praesent at felis vitae ipsum consequat efficitur. Phasellus aliquam lobortis nulla, at consectetur enim tristique nec. Mauris sodales eget lacus venenatis elementum. Donec at sem nisl. Phasellus posuere tristique nunc, vel iaculis dui ornare vitae. Vestibulum vitae dignissim orci, sit amet blandit dolor. Sed sit amet pretium erat. Integer convallis nisi eget lacinia posuere. Etiam gravida sagittis risus, imperdiet mollis massa fermentum in.</p>\r\n\r\n<p>Suspendisse elementum dui tincidunt odio laoreet, et gravida eros sodales. Curabitur tristique, odio nec feugiat hendrerit, purus neque sollicitudin massa, at convallis sem libero at odio. Suspendisse eget justo sit amet urna luctus ultricies nec in mi. Vestibulum nec erat vitae diam accumsan vehicula eu in elit. Cras non suscipit nisi, non euismod turpis. Cras velit magna, ullamcorper eu gravida nec, laoreet consequat mi. Mauris porttitor gravida ultricies. Integer venenatis, massa at volutpat fermentum, metus ex scelerisque mi, vel cursus augue lectus vel orci. Praesent vehicula enim non urna tristique viverra. Proin ligula risus, sodales quis erat vitae, sodales blandit libero. Aenean a ligula iaculis, lobortis tortor sed, facilisis nisl. Phasellus vestibulum metus eget quam elementum, et egestas justo suscipit. Aenean congue ipsum id lectus congue, nec tristique ipsum maximus. Aenean aliquam mattis nunc, non sagittis purus mattis et.</p>', NULL, '2020-06-05', NULL, 0, 1, 1, 'noticias/post34', 1, NULL),
(104, ' Phasellus urna purus', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus urna purus, suscipit eu efficitur sit amet, faucibus quis nisi. Pellentesque commodo, eros et commodo elementum, lectus augue interdum felis, at hendrerit erat arcu vel dolor. Aenean tellus sem, volutpat a dapibus semper, tempus at sem. Pellentesque vitae molestie leo. Sed malesuada risus et gravida semper. Fusce tincidunt semper libero ut bibendum. Ut vel fringilla nunc. Sed et ipsum tellus. Vestibulum dictum mi eget nisi bibendum imperdiet. Etiam nec faucibus ex.', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet nulla varius, tempor risus sit amet, malesuada felis. Duis dapibus mattis aliquam. Phasellus vestibulum pulvinar egestas. Cras egestas sit amet purus in dapibus. Nunc sagittis velit a faucibus vestibulum. Nunc pharetra porta risus, commodo cursus velit ultricies et. Donec dolor mauris, sagittis sit amet justo non, tristique scelerisque nunc. Vivamus vestibulum ligula in consequat tempus. Mauris at vehicula diam.</p>\r\n\r\n<p>Nunc condimentum erat nulla, varius sagittis eros molestie quis. Maecenas pharetra ligula non metus finibus pretium. Suspendisse vestibulum semper enim, vel blandit nunc dignissim at. Aenean mollis ipsum ac nisl pharetra, sit amet scelerisque augue sodales. Vivamus consequat eros eros, ut euismod eros luctus vel. Quisque tempor, justo et sagittis tempus, urna massa imperdiet leo, eget pharetra massa nisl quis ex. Praesent suscipit sem ipsum, non consequat tellus facilisis a. Nulla sit amet magna nisi. Etiam egestas tortor quis ligula venenatis, ac porta neque sodales. Maecenas varius malesuada cursus. Quisque turpis quam, lobortis et mauris sit amet, mollis egestas augue.</p>\r\n\r\n<p>Interdum et malesuada fames ac ante ipsum primis in faucibus. Nam et rutrum erat. Etiam elementum magna in purus accumsan, et maximus justo blandit. Morbi sed est id magna malesuada convallis. Morbi accumsan lacus in sapien bibendum faucibus. Sed lorem massa, consectetur vel viverra non, varius vitae purus. Sed volutpat lectus id eros vehicula semper. Ut velit ante, porttitor id fringilla ac, pretium sit amet diam.</p>\r\n\r\n<p>Aliquam vehicula, odio aliquam facilisis eleifend, arcu nibh auctor nunc, at blandit odio magna at ex. Donec sed mattis ligula. Donec tristique ex eget ipsum consectetur, in pulvinar odio consequat. Mauris a arcu sodales, scelerisque nibh sit amet, sagittis enim. Integer non finibus nibh. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla bibendum accumsan massa vitae tristique.</p>\r\n\r\n<p>Ut ut porta nibh. Quisque consequat sollicitudin libero, nec hendrerit nisl finibus eu. Aliquam erat volutpat. Praesent aliquam massa vitae metus egestas aliquam. Etiam vestibulum dolor eu sem bibendum malesuada. Sed ac congue orci. Ut ut lorem sit amet lorem efficitur blandit id id elit. Duis ac dignissim dui. Aliquam erat volutpat. Phasellus dapibus condimentum dolor in placerat. Duis iaculis porttitor gravida.</p>\r\n\r\n<p>Aliquam luctus, orci eget malesuada blandit, metus leo rutrum ligula, in pharetra lorem nunc ac erat. Suspendisse potenti. Vestibulum rutrum efficitur diam eget bibendum. Aliquam at pellentesque tortor. Nulla fringilla felis et metus aliquam, ut euismod nisl tempor. Suspendisse sodales nisi nec neque blandit, ac vestibulum metus placerat. Suspendisse est urna, faucibus nec turpis eu, vehicula finibus nulla. Mauris blandit sollicitudin fringilla. Mauris eget ante sollicitudin, maximus libero at, dignissim est. Morbi quis vestibulum neque. Aenean et tincidunt augue, quis aliquet odio. Vivamus finibus ullamcorper erat, in feugiat metus maximus non. Aliquam sit amet dolor finibus, vehicula elit id, convallis purus. Aliquam vel augue vel ligula posuere venenatis non eget ex. Suspendisse ut mauris tellus. Nullam quis laoreet elit.</p>\r\n\r\n<p>Morbi eu neque neque. Aliquam erat volutpat. Nullam posuere orci faucibus sem suscipit rhoncus. Vivamus dapibus tellus ac odio eleifend, at tempor mi suscipit. Aliquam vel ornare nunc. Praesent in ex sagittis, auctor orci eget, facilisis mi. Fusce tempor eget urna eget tincidunt. Vivamus vitae vulputate risus, quis placerat massa. Etiam pretium dui eget libero finibus, quis euismod metus facilisis. Donec lacus enim, euismod nec auctor ac, porttitor in ex. Curabitur commodo, diam eu venenatis varius, turpis mauris lobortis augue, eu porta ipsum turpis et quam. Mauris vel felis condimentum, dictum ex nec, tincidunt ante.</p>\r\n\r\n<p>Duis porta elit sem, non blandit nulla cursus vel. Nam sagittis rhoncus est ac sagittis. Morbi non condimentum lacus, ut placerat lacus. Vivamus vel velit sit amet mi fermentum tristique sit amet a lorem. Quisque porttitor bibendum maximus. Pellentesque id tristique ante, et dictum leo. Aliquam eget diam posuere ipsum mollis aliquet. Pellentesque non est eros. Aliquam sit amet est ac urna rutrum aliquet vel venenatis erat. Morbi tempor magna eu nunc condimentum condimentum. Vivamus sed varius eros, ac feugiat odio.</p>\r\n\r\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Donec vitae risus consequat, iaculis turpis et, vestibulum leo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Praesent at felis vitae ipsum consequat efficitur. Phasellus aliquam lobortis nulla, at consectetur enim tristique nec. Mauris sodales eget lacus venenatis elementum. Donec at sem nisl. Phasellus posuere tristique nunc, vel iaculis dui ornare vitae. Vestibulum vitae dignissim orci, sit amet blandit dolor. Sed sit amet pretium erat. Integer convallis nisi eget lacinia posuere. Etiam gravida sagittis risus, imperdiet mollis massa fermentum in.</p>\r\n\r\n<p>Suspendisse elementum dui tincidunt odio laoreet, et gravida eros sodales. Curabitur tristique, odio nec feugiat hendrerit, purus neque sollicitudin massa, at convallis sem libero at odio. Suspendisse eget justo sit amet urna luctus ultricies nec in mi. Vestibulum nec erat vitae diam accumsan vehicula eu in elit. Cras non suscipit nisi, non euismod turpis. Cras velit magna, ullamcorper eu gravida nec, laoreet consequat mi. Mauris porttitor gravida ultricies. Integer venenatis, massa at volutpat fermentum, metus ex scelerisque mi, vel cursus augue lectus vel orci. Praesent vehicula enim non urna tristique viverra. Proin ligula risus, sodales quis erat vitae, sodales blandit libero. Aenean a ligula iaculis, lobortis tortor sed, facilisis nisl. Phasellus vestibulum metus eget quam elementum, et egestas justo suscipit. Aenean congue ipsum id lectus congue, nec tristique ipsum maximus. Aenean aliquam mattis nunc, non sagittis purus mattis et.</p>', NULL, '2020-08-12', NULL, 0, 1, 1, 'dkpost4', 2, NULL),
(105, 'Aenean tellus semkjnhj', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus urna purus, suscipit eu efficitur sit amet, faucibus quis nisi. Pellentesque commodo, eros et commodo elementum, lectus augue interdum felis, at hendrerit erat arcu vel dolor. Aenean tellus sem, volutpat a dapibus semper, tempus at sem. Pellentesque vitae molestie leo. Sed malesuada risus et gravida semper. Fusce tincidunt semper libero ut bibendum. Ut vel fringilla nunc. Sed et ipsum tellus.  jbnkjkVestibulum dictum mi eget nisi bibendum imperdiet. Etiam nec faucibus ex.', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet nulla varius, tempor risus sit amet, malesuada felis. Duis dapibus mattis aliquam. Phasellus vestibulum pulvinar egestas. Cras egestas sit amet purus in dapibus. Nunc sagittis velit a faucibus vestibulum. Nunc pharetra porta risus, commodo cursus velit ultricies et. Donec dolor mauriuyububs, sagittis sit amet justo non, tristique scelerisque nunc. Vivamus vestibulum ligula in consequat tempus. Mauris at vehicula diam.</p>\r\n\r\n<p>Nunc condimentum erat nulla, varius sagittis eros molestie quis. Maecenas pharetra ligula non metus finibus pretium. Suspendisse vestibulum semper enim, vel blandit nunc dignissim at. Aenean mollis ipsum ac nisl pharetra, sit amet scelerisque augue sodales. Vivamus consequat eros eros, ut euismod eros luctus vel. Quisque tempor, justo et sagittis tempus, urna massa imperdiet leo, eget pharetra massa nisl quis ex. Praesent suscipit sem ipsum, non consequat tellus facilisis a. Nulla sit amet magna nisi. Etiam egestas tortor quis ligula venenatis, ac porta neque sodales. Maecenas varius malesuada cursus. Quisque turpis quam, lobortis et mauris sit amet, mollis egestas augue.</p>\r\n\r\n<p>Interdum et malesuada fames ac ante ipsum primis in faucibus. Nam et rutrum erat. Etiam elementum magna in purus accumsan, et maximus justo blandit. Morbi sed est id magna malesuada convallis. Morbi accumsan lacus in sapien bibendum faucibus. Sed lorem massa, consectetur vel viverra non, varius vitae purus. Sed volutpat lectus id eros vehicula semper. Ut velit ante, porttitor id fringilla ac, pretium sit amet diam.</p>\r\n\r\n<p>Aliquam vehicula, odio aliquam facilisis eleifend, arcu nibh auctor nunc, at blandit odio magna at ex. Donec sed mattis ligula. Donec tristique ex eget ipsum consectetur, in pulvinar odio consequat. Mauris a arcu sodales, scelerisque nibh sit amet, sagittis enim. Integer non finibus nibh. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla bibendum accumsan massa vitae tristique.</p>\r\n\r\n<p>Ut ut porta nibh. Quisque consequat sollicitudin libero, nec hendrerit nisl finibus eu. Aliquam erat volutpat. Praesent aliquam massa vitae metus egestas aliquam. Etiam vestibulum dolor eu sem bibendum malesuada. Sed ac congue orci. Ut ut lorem sit amet lorem efficitur blandit id id elit. Duis ac dignissim dui. Aliquam erat volutpat. Phasellus dapibus condimentum dolor in placerat. Duis iaculis porttitor gravida.</p>\r\n\r\n<p>Aliquam luctus, orci eget malesuada blandit, metus leo rutrum ligula, in pharetra lorem nunc ac erat. Suspendisse potenti. Vestibulum rutrum efficitur diam eget bibendum. Aliquam at pellentesque tortor. Nulla fringilla felis et metus aliquam, ut euismod nisl tempor. Suspendisse sodales nisi nec neque blandit, ac vestibulum metus placerat. Suspendisse est urna, faucibus nec turpis eu, vehicula finibus nulla. Mauris blandit sollicitudin fringilla. Mauris eget ante sollicitudin, maximus libero at, dignissim est. Morbi quis vestibulum neque. Aenean et tincidunt augue, quis aliquet odio. Vivamus finibus ullamcorper erat, in feugiat metus maximus non. Aliquam sit amet dolor finibus, vehicula elit id, convallis purus. Aliquam vel augue vel ligula posuere venenatis non eget ex. Suspendisse ut mauris tellus. Nullam quis laoreet elit.</p>\r\n\r\n<p>Morbi eu neque neque. Aliquam erat volutpat. Nullam posuere orci faucibus sem suscipit rhoncus. Vivamus dapibus tellus ac odio eleifend, at tempor mi suscipit. Aliquam vel ornare nunc. Praesent in ex sagittis, auctor orci eget, facilisis mi. Fusce tempor eget urna eget tincidunt. Vivamus vitae vulputate risus, quis placerat massa. Etiam pretium dui eget libero finibus, quis euismod metus facilisis. Donec lacus enim, euismod nec auctor ac, porttitor in ex. Curabitur commodo, diam eu venenatis varius, turpis mauris lobortis augue, eu porta ipsum turpis et quam. Mauris vel felis condimentum, dictum ex nec, tincidunt ante.</p>\r\n\r\n<p>Duis porta elit sem, non blandit nulla cursus vel. Nam sagittis rhoncus est ac sagittis. Morbi non condimentum lacus, ut placerat lacus. Vivamus vel velit sit amet mi fermentum tristique sit amet a lorem. Quisque porttitor bibendum maximus. Pellentesque id tristique ante, et dictum leo. Aliquam eget diam posuere ipsum mollis aliquet. Pellentesque non est eros. Aliquam sit amet est ac urna rutrum aliquet vel venenatis erat. Morbi tempor magna eu nunc condimentum condimentum. Vivamus sed varius eros, ac feugiat odio.</p>\r\n\r\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Donec vitae risus consequat, iaculis turpis et, vestibulum leo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Praesent at felis vitae ipsum consequat efficitur. Phasellus aliquam lobortis nulla, at consectetur enim tristique nec. Mauris sodales eget lacus venenatis elementum. Donec at sem nisl. Phasellus posuere tristique nunc, vel iaculis dui ornare vitae. Vestibulum vitae dignissim orci, sit amet blandit dolor. Sed sit amet pretium erat. Integer convallis nisi eget lacinia posuere. Etiam gravida sagittis risus, imperdiet mollis massa fermentum in.</p>\r\n\r\n<p>Suspendisse elementum dui tincidunt odio laoreet, et gravida eros sodales. Curabitur tristique, odio nec feugiat hendrerit, purus neque sollicitudin massa, at convallis sem libero at odio. Suspendisse eget justo sit amet urna luctus ultricies nec in mi. Vestibulum nec erat vitae diam accumsan vehicula eu in elit. Cras non suscipit nisi, non euismod turpis. Cras velit magna, ullamcorper eu gravida nec, laoreet consequat mi. Mauris porttitor gravida ultricies. Integer venenatis, massa at volutpat fermentum, metus ex scelerisque mi, vel cursus augue lectus vel orci. Praesent vehicula enim non urna tristique viverra. Proin ligula risus, sodales quis erat vitae, sodales blandit libero. Aenean a ligula iaculis, lobortis tortor sed, facilisis nisl. Phasellus vestibulum metus eget quam elementum, et egestas justo suscipit. Aenean congue ipsum id lectus congue, nec tristique ipsum maximus. Aenean aliquam mattis nunc, non sagittis purus mattis et.</p>', 'iuhiui', '2020-09-15', NULL, 0, 1, 1, 'fdfdst5', 2, NULL),
(106, 'Pellentesque vitae molestie leo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus urna purus, suscipit eu efficitur sit amet, faucibus quis nisi. Pellentesque commodo, eros et commodo elementum, lectus augue interdum felis, at hendrerit erat arcu vel dolor. Aenean tellus sem, volutpat a dapibus semper, tempus at sem. Pellentesque vitae molestie leo. Sed malesuada risus et gravida semper. Fusce tincidunt semper libero ut bibendum. Ut vel fringilla nunc. Sed et ipsum tellus. Vestibulum dictum mi eget nisi bibendum imperdiet. Etiam nec faucibus ex.', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet nulla varius, tempor risus sit amet, malesuada felis. Duis dapibus mattis aliquam. Phasellus vestibulum pulvinar egestas. Cras egestas sit amet purus in dapibus. Nunc sagittis velit a faucibus vestibulum. Nunc pharetra porta risus, commodo cursus velit ultricies et. Donec dolor mauris, sagittis sit amet justo non, tristique scelerisque nunc. Vivamus vestibulum ligula in consequat tempus. Mauris at vehicula diam.</p>\r\n\r\n<p>Nunc condimentum erat nulla, varius sagittis eros molestie quis. Maecenas pharetra ligula non metus finibus pretium. Suspendisse vestibulum semper enim, vel blandit nunc dignissim at. Aenean mollis ipsum ac nisl pharetra, sit amet scelerisque augue sodales. Vivamus consequat eros eros, ut euismod eros luctus vel. Quisque tempor, justo et sagittis tempus, urna massa imperdiet leo, eget pharetra massa nisl quis ex. Praesent suscipit sem ipsum, non consequat tellus facilisis a. Nulla sit amet magna nisi. Etiam egestas tortor quis ligula venenatis, ac porta neque sodales. Maecenas varius malesuada cursus. Quisque turpis quam, lobortis et mauris sit amet, mollis egestas augue.</p>\r\n\r\n<p>Interdum et malesuada fames ac ante ipsum primis in faucibus. Nam et rutrum erat. Etiam elementum magna in purus accumsan, et maximus justo blandit. Morbi sed est id magna malesuada convallis. Morbi accumsan lacus in sapien bibendum faucibus. Sed lorem massa, consectetur vel viverra non, varius vitae purus. Sed volutpat lectus id eros vehicula semper. Ut velit ante, porttitor id fringilla ac, pretium sit amet diam.</p>\r\n\r\n<p>Aliquam vehicula, odio aliquam facilisis eleifend, arcu nibh auctor nunc, at blandit odio magna at ex. Donec sed mattis ligula. Donec tristique ex eget ipsum consectetur, in pulvinar odio consequat. Mauris a arcu sodales, scelerisque nibh sit amet, sagittis enim. Integer non finibus nibh. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla bibendum accumsan massa vitae tristique.</p>\r\n\r\n<p>Ut ut porta nibh. Quisque consequat sollicitudin libero, nec hendrerit nisl finibus eu. Aliquam erat volutpat. Praesent aliquam massa vitae metus egestas aliquam. Etiam vestibulum dolor eu sem bibendum malesuada. Sed ac congue orci. Ut ut lorem sit amet lorem efficitur blandit id id elit. Duis ac dignissim dui. Aliquam erat volutpat. Phasellus dapibus condimentum dolor in placerat. Duis iaculis porttitor gravida.</p>\r\n\r\n<p>Aliquam luctus, orci eget malesuada blandit, metus leo rutrum ligula, in pharetra lorem nunc ac erat. Suspendisse potenti. Vestibulum rutrum efficitur diam eget bibendum. Aliquam at pellentesque tortor. Nulla fringilla felis et metus aliquam, ut euismod nisl tempor. Suspendisse sodales nisi nec neque blandit, ac vestibulum metus placerat. Suspendisse est urna, faucibus nec turpis eu, vehicula finibus nulla. Mauris blandit sollicitudin fringilla. Mauris eget ante sollicitudin, maximus libero at, dignissim est. Morbi quis vestibulum neque. Aenean et tincidunt augue, quis aliquet odio. Vivamus finibus ullamcorper erat, in feugiat metus maximus non. Aliquam sit amet dolor finibus, vehicula elit id, convallis purus. Aliquam vel augue vel ligula posuere venenatis non eget ex. Suspendisse ut mauris tellus. Nullam quis laoreet elit.</p>\r\n\r\n<p>Morbi eu neque neque. Aliquam erat volutpat. Nullam posuere orci faucibus sem suscipit rhoncus. Vivamus dapibus tellus ac odio eleifend, at tempor mi suscipit. Aliquam vel ornare nunc. Praesent in ex sagittis, auctor orci eget, facilisis mi. Fusce tempor eget urna eget tincidunt. Vivamus vitae vulputate risus, quis placerat massa. Etiam pretium dui eget libero finibus, quis euismod metus facilisis. Donec lacus enim, euismod nec auctor ac, porttitor in ex. Curabitur commodo, diam eu venenatis varius, turpis mauris lobortis augue, eu porta ipsum turpis et quam. Mauris vel felis condimentum, dictum ex nec, tincidunt ante.</p>\r\n\r\n<p>Duis porta elit sem, non blandit nulla cursus vel. Nam sagittis rhoncus est ac sagittis. Morbi non condimentum lacus, ut placerat lacus. Vivamus vel velit sit amet mi fermentum tristique sit amet a lorem. Quisque porttitor bibendum maximus. Pellentesque id tristique ante, et dictum leo. Aliquam eget diam posuere ipsum mollis aliquet. Pellentesque non est eros. Aliquam sit amet est ac urna rutrum aliquet vel venenatis erat. Morbi tempor magna eu nunc condimentum condimentum. Vivamus sed varius eros, ac feugiat odio.</p>\r\n\r\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Donec vitae risus consequat, iaculis turpis et, vestibulum leo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Praesent at felis vitae ipsum consequat efficitur. Phasellus aliquam lobortis nulla, at consectetur enim tristique nec. Mauris sodales eget lacus venenatis elementum. Donec at sem nisl. Phasellus posuere tristique nunc, vel iaculis dui ornare vitae. Vestibulum vitae dignissim orci, sit amet blandit dolor. Sed sit amet pretium erat. Integer convallis nisi eget lacinia posuere. Etiam gravida sagittis risus, imperdiet mollis massa fermentum in.</p>\r\n\r\n<p>Suspendisse elementum dui tincidunt odio laoreet, et gravida eros sodales. Curabitur tristique, odio nec feugiat hendrerit, purus neque sollicitudin massa, at convallis sem libero at odio. Suspendisse eget justo sit amet urna luctus ultricies nec in mi. Vestibulum nec erat vitae diam accumsan vehicula eu in elit. Cras non suscipit nisi, non euismod turpis. Cras velit magna, ullamcorper eu gravida nec, laoreet consequat mi. Mauris porttitor gravida ultricies. Integer venenatis, massa at volutpat fermentum, metus ex scelerisque mi, vel cursus augue lectus vel orci. Praesent vehicula enim non urna tristique viverra. Proin ligula risus, sodales quis erat vitae, sodales blandit libero. Aenean a ligula iaculis, lobortis tortor sed, facilisis nisl. Phasellus vestibulum metus eget quam elementum, et egestas justo suscipit. Aenean congue ipsum id lectus congue, nec tristique ipsum maximus. Aenean aliquam mattis nunc, non sagittis purus mattis et.</p>', NULL, '2020-10-18', NULL, 0, 1, 1, 'post6dsad', 2, NULL),
(107, 'Vestibulum dictum mi eget', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus urna purus, suscipit eu efficitur sit amet, faucibus quis nisi. Pellentesque commodo, eros et commodo elementum, lectus augue interdum felis, at hendrerit erat arcu vel dolor. Aenean tellus sem, volutpat a dapibus semper, tempus at sem. Pellentesque vitae molestie leo. Sed malesuada risus et gravida semper. Fusce tincidunt semper libero ut bibendum. Ut vel fringilla nunc. Sed et ipsum tellus. Vestibulum dictum mi eget nisi bibendum imperdiet. Etiam nec faucibus ex.', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet nulla varius, tempor risus sit amet, malesuada felis. Duis dapibus mattis aliquam. Phasellus vestibulum pulvinar egestas. Cras egestas sit amet purus in dapibus. Nunc sagittis velit a faucibus vestibulum. Nunc pharetra porta risus, commodo cursus velit ultricies et. Donec dolor mauris, sagittis sit amet justo non, tristique scelerisque nunc. Vivamus vestibulum ligula in consequat tempus. Mauris at vehicula diam.</p>\r\n\r\n<p>Nunc condimentum erat nulla, varius sagittis eros molestie quis. Maecenas pharetra ligula non metus finibus pretium. Suspendisse vestibulum semper enim, vel blandit nunc dignissim at. Aenean mollis ipsum ac nisl pharetra, sit amet scelerisque augue sodales. Vivamus consequat eros eros, ut euismod eros luctus vel. Quisque tempor, justo et sagittis tempus, urna massa imperdiet leo, eget pharetra massa nisl quis ex. Praesent suscipit sem ipsum, non consequat tellus facilisis a. Nulla sit amet magna nisi. Etiam egestas tortor quis ligula venenatis, ac porta neque sodales. Maecenas varius malesuada cursus. Quisque turpis quam, lobortis et mauris sit amet, mollis egestas augue.</p>\r\n\r\n<p>Interdum et malesuada fames ac ante ipsum primis in faucibus. Nam et rutrum erat. Etiam elementum magna in purus accumsan, et maximus justo blandit. Morbi sed est id magna malesuada convallis. Morbi accumsan lacus in sapien bibendum faucibus. Sed lorem massa, consectetur vel viverra non, varius vitae purus. Sed volutpat lectus id eros vehicula semper. Ut velit ante, porttitor id fringilla ac, pretium sit amet diam.</p>\r\n\r\n<p>Aliquam vehicula, odio aliquam facilisis eleifend, arcu nibh auctor nunc, at blandit odio magna at ex. Donec sed mattis ligula. Donec tristique ex eget ipsum consectetur, in pulvinar odio consequat. Mauris a arcu sodales, scelerisque nibh sit amet, sagittis enim. Integer non finibus nibh. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla bibendum accumsan massa vitae tristique.</p>\r\n\r\n<p>Ut ut porta nibh. Quisque consequat sollicitudin libero, nec hendrerit nisl finibus eu. Aliquam erat volutpat. Praesent aliquam massa vitae metus egestas aliquam. Etiam vestibulum dolor eu sem bibendum malesuada. Sed ac congue orci. Ut ut lorem sit amet lorem efficitur blandit id id elit. Duis ac dignissim dui. Aliquam erat volutpat. Phasellus dapibus condimentum dolor in placerat. Duis iaculis porttitor gravida.</p>\r\n\r\n<p>Aliquam luctus, orci eget malesuada blandit, metus leo rutrum ligula, in pharetra lorem nunc ac erat. Suspendisse potenti. Vestibulum rutrum efficitur diam eget bibendum. Aliquam at pellentesque tortor. Nulla fringilla felis et metus aliquam, ut euismod nisl tempor. Suspendisse sodales nisi nec neque blandit, ac vestibulum metus placerat. Suspendisse est urna, faucibus nec turpis eu, vehicula finibus nulla. Mauris blandit sollicitudin fringilla. Mauris eget ante sollicitudin, maximus libero at, dignissim est. Morbi quis vestibulum neque. Aenean et tincidunt augue, quis aliquet odio. Vivamus finibus ullamcorper erat, in feugiat metus maximus non. Aliquam sit amet dolor finibus, vehicula elit id, convallis purus. Aliquam vel augue vel ligula posuere venenatis non eget ex. Suspendisse ut mauris tellus. Nullam quis laoreet elit.</p>\r\n\r\n<p>Morbi eu neque neque. Aliquam erat volutpat. Nullam posuere orci faucibus sem suscipit rhoncus. Vivamus dapibus tellus ac odio eleifend, at tempor mi suscipit. Aliquam vel ornare nunc. Praesent in ex sagittis, auctor orci eget, facilisis mi. Fusce tempor eget urna eget tincidunt. Vivamus vitae vulputate risus, quis placerat massa. Etiam pretium dui eget libero finibus, quis euismod metus facilisis. Donec lacus enim, euismod nec auctor ac, porttitor in ex. Curabitur commodo, diam eu venenatis varius, turpis mauris lobortis augue, eu porta ipsum turpis et quam. Mauris vel felis condimentum, dictum ex nec, tincidunt ante.</p>\r\n\r\n<p>Duis porta elit sem, non blandit nulla cursus vel. Nam sagittis rhoncus est ac sagittis. Morbi non condimentum lacus, ut placerat lacus. Vivamus vel velit sit amet mi fermentum tristique sit amet a lorem. Quisque porttitor bibendum maximus. Pellentesque id tristique ante, et dictum leo. Aliquam eget diam posuere ipsum mollis aliquet. Pellentesque non est eros. Aliquam sit amet est ac urna rutrum aliquet vel venenatis erat. Morbi tempor magna eu nunc condimentum condimentum. Vivamus sed varius eros, ac feugiat odio.</p>\r\n\r\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Donec vitae risus consequat, iaculis turpis et, vestibulum leo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Praesent at felis vitae ipsum consequat efficitur. Phasellus aliquam lobortis nulla, at consectetur enim tristique nec. Mauris sodales eget lacus venenatis elementum. Donec at sem nisl. Phasellus posuere tristique nunc, vel iaculis dui ornare vitae. Vestibulum vitae dignissim orci, sit amet blandit dolor. Sed sit amet pretium erat. Integer convallis nisi eget lacinia posuere. Etiam gravida sagittis risus, imperdiet mollis massa fermentum in.</p>\r\n\r\n<p>Suspendisse elementum dui tincidunt odio laoreet, et gravida eros sodales. Curabitur tristique, odio nec feugiat hendrerit, purus neque sollicitudin massa, at convallis sem libero at odio. Suspendisse eget justo sit amet urna luctus ultricies nec in mi. Vestibulum nec erat vitae diam accumsan vehicula eu in elit. Cras non suscipit nisi, non euismod turpis. Cras velit magna, ullamcorper eu gravida nec, laoreet consequat mi. Mauris porttitor gravida ultricies. Integer venenatis, massa at volutpat fermentum, metus ex scelerisque mi, vel cursus augue lectus vel orci. Praesent vehicula enim non urna tristique viverra. Proin ligula risus, sodales quis erat vitae, sodales blandit libero. Aenean a ligula iaculis, lobortis tortor sed, facilisis nisl. Phasellus vestibulum metus eget quam elementum, et egestas justo suscipit. Aenean congue ipsum id lectus congue, nec tristique ipsum maximus. Aenean aliquam mattis nunc, non sagittis purus mattis et.</p>', NULL, '2020-09-01', NULL, 0, 1, 1, 'noticias/post7kd', 1, NULL),
(110, 'contato', NULL, 'contato', NULL, '2020-11-20', NULL, 0, 1, 1, 'contato', 3, NULL),
(111, 'admin', NULL, 'admin', NULL, '2020-11-23', NULL, 0, 1, 1, 'admin', 3, NULL),
(115, 'lorem ipsun home', 'hgfdjhkl,çmjbhugyvftr', 'fgvhbvyfcyvguhijoknobivcy', 'bla bla', '2020-11-25', NULL, 0, 1, 0, 'lorem-ipsun-home', 2, NULL),
(116, 'lorem ipsun home', 'hgfdjhkl,çmjbhugyvftr', 'fgvhbvyfcyvguhijoknobivcy', 'bla bla', '2020-11-25', NULL, 0, 1, 0, 'lorem-ipsun-home', 2, NULL),
(117, 'lorem ipsun homedwewe', 'hgfdjhkl,çmjbhugyvftr', 'fgvhbvyfcyvguhijoknobivcy', 'bla bla', '2020-11-25', NULL, 0, 1, 0, 'lorem-ipsun-home', 2, NULL),
(118, 'lorem ipsun home', 'hgfdjhkl,çmjbhugyvftr', 'fgvhbvyfcyvguhijoknobivcy', 'bla bla', '2020-11-25', NULL, 0, 1, 0, 'lorem-ipsun-home', 2, NULL),
(119, 'lorem ipsun home', 'hgfdjhkl,çmjbhugyvftr', 'fgvhbvyfcyvguhijoknobivcy', 'bla bla', '2020-11-25', NULL, 0, 1, 0, 'lorem-ipsun-home', 2, NULL),
(142, '', '', '', '', '2020-11-25', NULL, 0, 1, 1, '', NULL, 439);
INSERT INTO `postagens` (`id_postagens`, `titulo_postagens`, `desc_postagens`, `conteudo_postagens`, `tags_postagens`, `data_criacao_postagens`, `data_modificacao_postagens`, `total_visualizacao_postagens`, `ch_autor_postagens`, `status_postagens`, `url_postagens`, `categ_postagens`, `capa_post`) VALUES
(145, 'walber', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus urna purus, suscipit eu efficitur sit amet, faucibus quis nisi. Pellentesque commodo, eros et commodo elementum, lectus augue interdum felis, at hendrerit erat arcu vel dolor. Aenean tellus sem, volutpat a dapibus semper, tempus at sem. Pellentesque vitae molestie leo. Sed malesuada risus et gravida semper. Fusce tincidunt semper libero ut bibendum. Ut vel fringilla nunc. Sed et ipsum tellus. Vestibulum dictum mi eget nisi bibendum imperdiet. Etiam nec faucibus ex.', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet nulla varius, tempor risus sit amet, malesuada felis. Duis dapibus mattis aliquam. Phasellus vestibulum pulvinar egestas. Cras egestas sit amet purus in dapibus. Nunc sagittis velit a faucibus vestibulum. Nunc pharetra porta risus, commodo cursus velit ultricies et. Donec dolor mauris, sagittis sit amet justo non, tristique scelerisque nunc. Vivamus vestibulum ligula in consequat tempus. Mauris at vehicula diam.</p>\n\n<p>Nunc condimentum erat nulla, varius sagittis eros molestie quis. Maecenas pharetra ligula non metus finibus pretium. Suspendisse vestibulum semper enim, vel blandit nunc dignissim at. Aenean mollis ipsum ac nisl pharetra, sit amet scelerisque augue sodales. Vivamus consequat eros eros, ut euismod eros luctus vel. Quisque tempor, justo et sagittis tempus, urna massa imperdiet leo, eget pharetra massa nisl quis ex. Praesent suscipit sem ipsum, non consequat tellus facilisis a. Nulla sit amet magna nisi. Etiam egestas tortor quis ligula venenatis, ac porta neque sodales. Maecenas varius malesuada cursus. Quisque turpis quam, lobortis et mauris sit amet, mollis egestas augue.</p>\n\n<p>Interdum et malesuada fames ac ante ipsum primis in faucibus. Nam et rutrum erat. Etiam elementum magna in purus accumsan, et maximus justo blandit. Morbi sed est id magna malesuada convallis. Morbi accumsan lacus in sapien bibendum faucibus. Sed lorem massa, consectetur vel viverra non, varius vitae purus. Sed volutpat lectus id eros vehicula semper. Ut velit ante, porttitor id fringilla ac, pretium sit amet diam.</p>\n\n<p>Aliquam vehicula, odio aliquam facilisis eleifend, arcu nibh auctor nunc, at blandit odio magna at ex. Donec sed mattis ligula. Donec tristique ex eget ipsum consectetur, in pulvinar odio consequat. Mauris a arcu sodales, scelerisque nibh sit amet, sagittis enim. Integer non finibus nibh. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla bibendum accumsan massa vitae tristique.</p>\n\n<p>Ut ut porta nibh. Quisque consequat sollicitudin libero, nec hendrerit nisl finibus eu. Aliquam erat volutpat. Praesent aliquam massa vitae metus egestas aliquam. Etiam vestibulum dolor eu sem bibendum malesuada. Sed ac congue orci. Ut ut lorem sit amet lorem efficitur blandit id id elit. Duis ac dignissim dui. Aliquam erat volutpat. Phasellus dapibus condimentum dolor in placerat. Duis iaculis porttitor gravida.</p>\n\n<p>Aliquam luctus, orci eget malesuada blandit, metus leo rutrum ligula, in pharetra lorem nunc ac erat. Suspendisse potenti. Vestibulum rutrum efficitur diam eget bibendum. Aliquam at pellentesque tortor. Nulla fringilla felis et metus aliquam, ut euismod nisl tempor. Suspendisse sodales nisi nec neque blandit, ac vestibulum metus placerat. Suspendisse est urna, faucibus nec turpis eu, vehicula finibus nulla. Mauris blandit sollicitudin fringilla. Mauris eget ante sollicitudin, maximus libero at, dignissim est. Morbi quis vestibulum neque. Aenean et tincidunt augue, quis aliquet odio. Vivamus finibus ullamcorper erat, in feugiat metus maximus non. Aliquam sit amet dolor finibus, vehicula elit id, convallis purus. Aliquam vel augue vel ligula posuere venenatis non eget ex. Suspendisse ut mauris tellus. Nullam quis laoreet elit.</p>\n\n<p>Morbi eu neque neque. Aliquam erat volutpat. Nullam posuere orci faucibus sem suscipit rhoncus. Vivamus dapibus tellus ac odio eleifend, at tempor mi suscipit. Aliquam vel ornare nunc. Praesent in ex sagittis, auctor orci eget, facilisis mi. Fusce tempor eget urna eget tincidunt. Vivamus vitae vulputate risus, quis placerat massa. Etiam pretium dui eget libero finibus, quis euismod metus facilisis. Donec lacus enim, euismod nec auctor ac, porttitor in ex. Curabitur commodo, diam eu venenatis varius, turpis mauris lobortis augue, eu porta ipsum turpis et quam. Mauris vel felis condimentum, dictum ex nec, tincidunt ante.</p>\n\n<p>Duis porta elit sem, non blandit nulla cursus vel. Nam sagittis rhoncus est ac sagittis. Morbi non condimentum lacus, ut placerat lacus. Vivamus vel velit sit amet mi fermentum tristique sit amet a lorem. Quisque porttitor bibendum maximus. Pellentesque id tristique ante, et dictum leo. Aliquam eget diam posuere ipsum mollis aliquet. Pellentesque non est eros. Aliquam sit amet est ac urna rutrum aliquet vel venenatis erat. Morbi tempor magna eu nunc condimentum condimentum. Vivamus sed varius eros, ac feugiat odio.</p>\n\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Donec vitae risus consequat, iaculis turpis et, vestibulum leo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Praesent at felis vitae ipsum consequat efficitur. Phasellus aliquam lobortis nulla, at consectetur enim tristique nec. Mauris sodales eget lacus venenatis elementum. Donec at sem nisl. Phasellus posuere tristique nunc, vel iaculis dui ornare vitae. Vestibulum vitae dignissim orci, sit amet blandit dolor. Sed sit amet pretium erat. Integer convallis nisi eget lacinia posuere. Etiam gravida sagittis risus, imperdiet mollis massa fermentum in.</p>\n\n<p>Suspendisse elementum dui tincidunt odio laoreet, et gravida eros sodales. Curabitur tristique, odio nec feugiat hendrerit, purus neque sollicitudin massa, at convallis sem libero at odio. Suspendisse eget justo sit amet urna luctus ultricies nec in mi. Vestibulum nec erat vitae diam accumsan vehicula eu in elit. Cras non suscipit nisi, non euismod turpis. Cras velit magna, ullamcorper eu gravida nec, laoreet consequat mi. Mauris porttitor gravida ultricies. Integer venenatis, massa at volutpat fermentum, metus ex scelerisque mi, vel cursus augue lectus vel orci. Praesent vehicula enim non urna tristique viverra. Proin ligula risus, sodales quis erat vitae, sodales blandit libero. Aenean a ligula iaculis, lobortis tortor sed, facilisis nisl. Phasellus vestibulum metus eget quam elementum, et egestas justo suscipit. Aenean congue ipsum id lectus congue, nec tristique ipsum maximus. Aenean aliquam mattis nunc, non sagittis purus mattis et.</p>', '', '2020-11-25', NULL, 0, 1, 1, 'walber', NULL, 440),
(146, 'walber', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus urna purus, suscipit eu efficitur sit amet, faucibus quis nisi. Pellentesque commodo, eros et commodo elementum, lectus augue interdum felis, at hendrerit erat arcu vel dolor. Aenean tellus sem, volutpat a dapibus semper, tempus at sem. Pellentesque vitae molestie leo. Sed malesuada risus et gravida semper. Fusce tincidunt semper libero ut bibendum. Ut vel fringilla nunc. Sed et ipsum tellus. Vestibulum dictum mi eget nisi bibendum imperdiet. Etiam nec faucibus ex.', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet nulla varius, tempor risus sit amet, malesuada felis. Duis dapibus mattis aliquam. Phasellus vestibulum pulvinar egestas. Cras egestas sit amet purus in dapibus. Nunc sagittis velit a faucibus vestibulum. Nunc pharetra porta risus, commodo cursus velit ultricies et. Donec dolor mauris, sagittis sit amet justo non, tristique scelerisque nunc. Vivamus vestibulum ligula in consequat tempus. Mauris at vehicula diam.</p>\n\n<p>Nunc condimentum erat nulla, varius sagittis eros molestie quis. Maecenas pharetra ligula non metus finibus pretium. Suspendisse vestibulum semper enim, vel blandit nunc dignissim at. Aenean mollis ipsum ac nisl pharetra, sit amet scelerisque augue sodales. Vivamus consequat eros eros, ut euismod eros luctus vel. Quisque tempor, justo et sagittis tempus, urna massa imperdiet leo, eget pharetra massa nisl quis ex. Praesent suscipit sem ipsum, non consequat tellus facilisis a. Nulla sit amet magna nisi. Etiam egestas tortor quis ligula venenatis, ac porta neque sodales. Maecenas varius malesuada cursus. Quisque turpis quam, lobortis et mauris sit amet, mollis egestas augue.</p>\n\n<p>Interdum et malesuada fames ac ante ipsum primis in faucibus. Nam et rutrum erat. Etiam elementum magna in purus accumsan, et maximus justo blandit. Morbi sed est id magna malesuada convallis. Morbi accumsan lacus in sapien bibendum faucibus. Sed lorem massa, consectetur vel viverra non, varius vitae purus. Sed volutpat lectus id eros vehicula semper. Ut velit ante, porttitor id fringilla ac, pretium sit amet diam.</p>\n\n<p>Aliquam vehicula, odio aliquam facilisis eleifend, arcu nibh auctor nunc, at blandit odio magna at ex. Donec sed mattis ligula. Donec tristique ex eget ipsum consectetur, in pulvinar odio consequat. Mauris a arcu sodales, scelerisque nibh sit amet, sagittis enim. Integer non finibus nibh. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla bibendum accumsan massa vitae tristique.</p>\n\n<p>Ut ut porta nibh. Quisque consequat sollicitudin libero, nec hendrerit nisl finibus eu. Aliquam erat volutpat. Praesent aliquam massa vitae metus egestas aliquam. Etiam vestibulum dolor eu sem bibendum malesuada. Sed ac congue orci. Ut ut lorem sit amet lorem efficitur blandit id id elit. Duis ac dignissim dui. Aliquam erat volutpat. Phasellus dapibus condimentum dolor in placerat. Duis iaculis porttitor gravida.</p>\n\n<p>Aliquam luctus, orci eget malesuada blandit, metus leo rutrum ligula, in pharetra lorem nunc ac erat. Suspendisse potenti. Vestibulum rutrum efficitur diam eget bibendum. Aliquam at pellentesque tortor. Nulla fringilla felis et metus aliquam, ut euismod nisl tempor. Suspendisse sodales nisi nec neque blandit, ac vestibulum metus placerat. Suspendisse est urna, faucibus nec turpis eu, vehicula finibus nulla. Mauris blandit sollicitudin fringilla. Mauris eget ante sollicitudin, maximus libero at, dignissim est. Morbi quis vestibulum neque. Aenean et tincidunt augue, quis aliquet odio. Vivamus finibus ullamcorper erat, in feugiat metus maximus non. Aliquam sit amet dolor finibus, vehicula elit id, convallis purus. Aliquam vel augue vel ligula posuere venenatis non eget ex. Suspendisse ut mauris tellus. Nullam quis laoreet elit.</p>\n\n<p>Morbi eu neque neque. Aliquam erat volutpat. Nullam posuere orci faucibus sem suscipit rhoncus. Vivamus dapibus tellus ac odio eleifend, at tempor mi suscipit. Aliquam vel ornare nunc. Praesent in ex sagittis, auctor orci eget, facilisis mi. Fusce tempor eget urna eget tincidunt. Vivamus vitae vulputate risus, quis placerat massa. Etiam pretium dui eget libero finibus, quis euismod metus facilisis. Donec lacus enim, euismod nec auctor ac, porttitor in ex. Curabitur commodo, diam eu venenatis varius, turpis mauris lobortis augue, eu porta ipsum turpis et quam. Mauris vel felis condimentum, dictum ex nec, tincidunt ante.</p>\n\n<p>Duis porta elit sem, non blandit nulla cursus vel. Nam sagittis rhoncus est ac sagittis. Morbi non condimentum lacus, ut placerat lacus. Vivamus vel velit sit amet mi fermentum tristique sit amet a lorem. Quisque porttitor bibendum maximus. Pellentesque id tristique ante, et dictum leo. Aliquam eget diam posuere ipsum mollis aliquet. Pellentesque non est eros. Aliquam sit amet est ac urna rutrum aliquet vel venenatis erat. Morbi tempor magna eu nunc condimentum condimentum. Vivamus sed varius eros, ac feugiat odio.</p>\n\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Donec vitae risus consequat, iaculis turpis et, vestibulum leo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Praesent at felis vitae ipsum consequat efficitur. Phasellus aliquam lobortis nulla, at consectetur enim tristique nec. Mauris sodales eget lacus venenatis elementum. Donec at sem nisl. Phasellus posuere tristique nunc, vel iaculis dui ornare vitae. Vestibulum vitae dignissim orci, sit amet blandit dolor. Sed sit amet pretium erat. Integer convallis nisi eget lacinia posuere. Etiam gravida sagittis risus, imperdiet mollis massa fermentum in.</p>\n\n<p>Suspendisse elementum dui tincidunt odio laoreet, et gravida eros sodales. Curabitur tristique, odio nec feugiat hendrerit, purus neque sollicitudin massa, at convallis sem libero at odio. Suspendisse eget justo sit amet urna luctus ultricies nec in mi. Vestibulum nec erat vitae diam accumsan vehicula eu in elit. Cras non suscipit nisi, non euismod turpis. Cras velit magna, ullamcorper eu gravida nec, laoreet consequat mi. Mauris porttitor gravida ultricies. Integer venenatis, massa at volutpat fermentum, metus ex scelerisque mi, vel cursus augue lectus vel orci. Praesent vehicula enim non urna tristique viverra. Proin ligula risus, sodales quis erat vitae, sodales blandit libero. Aenean a ligula iaculis, lobortis tortor sed, facilisis nisl. Phasellus vestibulum metus eget quam elementum, et egestas justo suscipit. Aenean congue ipsum id lectus congue, nec tristique ipsum maximus. Aenean aliquam mattis nunc, non sagittis purus mattis et.</p>', '', '2020-11-25', NULL, 0, 1, 1, 'walber', NULL, 443);

-- --------------------------------------------------------

--
-- Estrutura da tabela `postagens_midias`
--

CREATE TABLE `postagens_midias` (
  `id_postagens_midias` int(11) NOT NULL,
  `fk_postagens` int(11) DEFAULT NULL,
  `fk_midias` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `postagens_midias`
--

INSERT INTO `postagens_midias` (`id_postagens_midias`, `fk_postagens`, `fk_midias`) VALUES
(408, 89, 407),
(410, 91, 410),
(411, 92, 409),
(412, 93, 407),
(414, 95, 409),
(415, 96, 410),
(416, NULL, NULL),
(418, NULL, NULL),
(419, NULL, NULL),
(420, NULL, NULL),
(421, NULL, NULL),
(422, 119, 416),
(445, 142, 439),
(446, 145, 440),
(447, 146, 441),
(448, 146, 442),
(449, 146, 443);

-- --------------------------------------------------------

--
-- Estrutura da tabela `slides`
--

CREATE TABLE `slides` (
  `id_slide` int(11) NOT NULL,
  `titulo_slide` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `texto_slide` text COLLATE latin1_general_ci DEFAULT NULL,
  `data_slide` date NOT NULL,
  `status_slide` int(11) NOT NULL,
  `imagem_slide` int(11) NOT NULL,
  `url_post` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `visualizacao`
--

CREATE TABLE `visualizacao` (
  `id_visual` int(11) NOT NULL,
  `data_visual` date NOT NULL,
  `qnt_visual` int(11) NOT NULL,
  `post_visual` int(11) NOT NULL,
  `ip` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`id_autor`);

--
-- Índices para tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Índices para tabela `contato`
--
ALTER TABLE `contato`
  ADD PRIMARY KEY (`id_contato`);

--
-- Índices para tabela `itens_mosaico`
--
ALTER TABLE `itens_mosaico`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `menu_itens`
--
ALTER TABLE `menu_itens`
  ADD PRIMARY KEY (`id_menu`);

--
-- Índices para tabela `midias`
--
ALTER TABLE `midias`
  ADD PRIMARY KEY (`id_midias`),
  ADD KEY `fk_autor_midia` (`ch_autor_midia`);

--
-- Índices para tabela `midias_te`
--
ALTER TABLE `midias_te`
  ADD PRIMARY KEY (`id_te`);

--
-- Índices para tabela `postagens`
--
ALTER TABLE `postagens`
  ADD PRIMARY KEY (`id_postagens`),
  ADD KEY `fk_autor_post` (`ch_autor_postagens`),
  ADD KEY `fk_categ_post` (`categ_postagens`),
  ADD KEY `capa_midia` (`capa_post`);

--
-- Índices para tabela `postagens_midias`
--
ALTER TABLE `postagens_midias`
  ADD PRIMARY KEY (`id_postagens_midias`),
  ADD KEY `fk_publication` (`fk_postagens`),
  ADD KEY `fk_multimidia` (`fk_midias`);

--
-- Índices para tabela `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id_slide`),
  ADD KEY `fk_midia_slide` (`imagem_slide`),
  ADD KEY `fk_sld_pst` (`url_post`);

--
-- Índices para tabela `visualizacao`
--
ALTER TABLE `visualizacao`
  ADD PRIMARY KEY (`id_visual`),
  ADD KEY `fk_url_visual` (`post_visual`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `autor`
--
ALTER TABLE `autor`
  MODIFY `id_autor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `contato`
--
ALTER TABLE `contato`
  MODIFY `id_contato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de tabela `itens_mosaico`
--
ALTER TABLE `itens_mosaico`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de tabela `menu_itens`
--
ALTER TABLE `menu_itens`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `midias`
--
ALTER TABLE `midias`
  MODIFY `id_midias` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=445;

--
-- AUTO_INCREMENT de tabela `midias_te`
--
ALTER TABLE `midias_te`
  MODIFY `id_te` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `postagens`
--
ALTER TABLE `postagens`
  MODIFY `id_postagens` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT de tabela `postagens_midias`
--
ALTER TABLE `postagens_midias`
  MODIFY `id_postagens_midias` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=450;

--
-- AUTO_INCREMENT de tabela `slides`
--
ALTER TABLE `slides`
  MODIFY `id_slide` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `visualizacao`
--
ALTER TABLE `visualizacao`
  MODIFY `id_visual` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26737;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `midias`
--
ALTER TABLE `midias`
  ADD CONSTRAINT `fk_autor_midia` FOREIGN KEY (`ch_autor_midia`) REFERENCES `autor` (`id_autor`);

--
-- Limitadores para a tabela `postagens`
--
ALTER TABLE `postagens`
  ADD CONSTRAINT `capa_midia` FOREIGN KEY (`capa_post`) REFERENCES `midias` (`id_midias`),
  ADD CONSTRAINT `fk_autor_post` FOREIGN KEY (`ch_autor_postagens`) REFERENCES `autor` (`id_autor`),
  ADD CONSTRAINT `fk_categ_post` FOREIGN KEY (`categ_postagens`) REFERENCES `categoria` (`id_categoria`);

--
-- Limitadores para a tabela `postagens_midias`
--
ALTER TABLE `postagens_midias`
  ADD CONSTRAINT `fk_multimidia` FOREIGN KEY (`fk_midias`) REFERENCES `midias` (`id_midias`),
  ADD CONSTRAINT `fk_publication` FOREIGN KEY (`fk_postagens`) REFERENCES `postagens` (`id_postagens`);

--
-- Limitadores para a tabela `slides`
--
ALTER TABLE `slides`
  ADD CONSTRAINT `fk_midia_slide` FOREIGN KEY (`imagem_slide`) REFERENCES `midias` (`id_midias`),
  ADD CONSTRAINT `fk_sld_pst` FOREIGN KEY (`url_post`) REFERENCES `postagens` (`id_postagens`);

--
-- Limitadores para a tabela `visualizacao`
--
ALTER TABLE `visualizacao`
  ADD CONSTRAINT `fk_url_visual` FOREIGN KEY (`post_visual`) REFERENCES `postagens` (`id_postagens`);
--
-- Banco de dados: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Extraindo dados da tabela `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"escola_tsc\",\"table\":\"postagens\"},{\"db\":\"escola_tsc\",\"table\":\"midias\"},{\"db\":\"escola_tsc\",\"table\":\"postagens_midias\"},{\"db\":\"escola_tsc\",\"table\":\"categoria\"},{\"db\":\"escola_tsc\",\"table\":\"autor\"},{\"db\":\"escola_tsc\",\"table\":\"itens_mosaico\"},{\"db\":\"testes\",\"table\":\"compras\"},{\"db\":\"testes\",\"table\":\"tipoproduto\"},{\"db\":\"testes\",\"table\":\"produtos\"}]');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Extraindo dados da tabela `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2020-11-26 00:09:52', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"pt\"}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Índices para tabela `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Índices para tabela `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Índices para tabela `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Índices para tabela `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Índices para tabela `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Índices para tabela `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Índices para tabela `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Índices para tabela `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Índices para tabela `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Índices para tabela `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Índices para tabela `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Índices para tabela `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Índices para tabela `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Índices para tabela `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Índices para tabela `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Índices para tabela `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Índices para tabela `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Banco de dados: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Banco de dados: `testes`
--
CREATE DATABASE IF NOT EXISTS `testes` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `testes`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `compras`
--

CREATE TABLE `compras` (
  `id_compra` int(11) NOT NULL,
  `cod_fornecedor` int(11) DEFAULT NULL,
  `id_produto` int(11) NOT NULL,
  `qtd_comprada` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `compras`
--

INSERT INTO `compras` (`id_compra`, `cod_fornecedor`, `id_produto`, `qtd_comprada`) VALUES
(1, 1, 1, 5),
(2, 2, 2, 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `codigo_produto` int(11) NOT NULL,
  `descricao_produto` varchar(50) DEFAULT NULL,
  `preco_produto` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`codigo_produto`, `descricao_produto`, `preco_produto`) VALUES
(1, 'noteboook', 25000),
(2, 'celular', 12000);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipoproduto`
--

CREATE TABLE `tipoproduto` (
  `id` int(11) NOT NULL,
  `descricao_tipo_produto` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tipoproduto`
--

INSERT INTO `tipoproduto` (`id`, `descricao_tipo_produto`) VALUES
(1, 'celular'),
(2, 'notebook');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id_compra`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`codigo_produto`);

--
-- Índices para tabela `tipoproduto`
--
ALTER TABLE `tipoproduto`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `compras`
--
ALTER TABLE `compras`
  MODIFY `id_compra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `codigo_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tipoproduto`
--
ALTER TABLE `tipoproduto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
