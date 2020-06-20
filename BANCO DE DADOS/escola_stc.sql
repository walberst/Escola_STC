-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 20-Jun-2020 às 02:22
-- Versão do servidor: 10.3.16-MariaDB
-- versão do PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
(1, 'Antonio Walber', 'walberst', '71bimtz', '2019-10-01', NULL, 1);

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
(7, 'mosaico-ph', 'Diversidade', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras dapibus ut ipsum nec tincidunt. Etiam congue lorem quis libero consequat bibendum. Proin convallis ligula tincidunt urna consequat malesuada id sit.', NULL);

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
(410, 'img4.jpg', NULL, NULL, NULL, 1, 1, '2020-05-13');

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
(87, 'Sobre', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vitae nisi enim. Cras tincidunt in massa eu sagittis. Suspendisse pharetra nisl eleifend cursus tempor. Nulla ligula ex, gravida vitae ornare vel, viverra vitae velit. Morbi ullamcorper orci eget neque convallis, at euismod quam lacinia. Donec sagittis maximus ultrices. Suspendisse ac magna mauris.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vitae nisi enim. Cras tincidunt in massa eu sagittis. Suspendisse pharetra nisl eleifend cursus tempor. Nulla ligula ex, gravida vitae ornare vel, viverra vitae velit. Morbi ullamcorper orci eget neque convallis, at euismod quam lacinia. Donec sagittis maximus ultrices. Suspendisse ac magna mauris.', NULL, '2020-05-29', NULL, 0, 1, 1, 'sobre', 3, NULL),
(88, 'Ingles', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi consectetur, mauris a aliquet varius, purus dolor eleifend velit, eu eleifend sem magna eget ipsum. Duis ac lectus lacus. Ut placerat condimentum justo, congue vehicula tortor porta id. Donec vel nulla at metus euismod elementum porttitor et odio. Sed ligula sapien, eleifend ut sapien ac, rutrum dignissim tellus. Aenean convallis fermentum odio vel faucibus. Integer venenatis, felis rhoncus efficitur semper, elit metus egestas nisi, eu feugiat magna urna in mauris. Aenean aliquet urna sit amet sodales lacinia. Aliquam erat volutpat. Nullam nec turpis metus. Vivamus vel scelerisque ex, vel facilisis eros. Duis vel orci in mi sagittis interdum. Morbi posuere purus vitae erat eleifend, sed feugiat neque vehicula. Interdum et malesuada fames ac ante ipsum primis in faucibus.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi consectetur, mauris a aliquet varius, purus dolor eleifend velit, eu eleifend sem magna eget ipsum. Duis ac lectus lacus. Ut placerat condimentum justo, congue vehicula tortor porta id. Donec vel nulla at metus euismod elementum porttitor et odio. Sed ligula sapien, eleifend ut sapien ac, rutrum dignissim tellus. Aenean convallis fermentum odio vel faucibus. Integer venenatis, felis rhoncus efficitur semper, elit metus egestas nisi, eu feugiat magna urna in mauris. Aenean aliquet urna sit amet sodales lacinia. Aliquam erat volutpat. Nullam nec turpis metus. Vivamus vel scelerisque ex, vel facilisis eros. Duis vel orci in mi sagittis interdum. Morbi posuere purus vitae erat eleifend, sed feugiat neque vehicula. Interdum et malesuada fames ac ante ipsum primis in faucibus.', NULL, '2020-05-29', NULL, 0, 1, 1, 'ingles', 3, NULL),
(89, 'Neque porro quisquam est qui dolorem ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus urna purus, suscipit eu efficitur sit amet, faucibus quis nisi. Pellentesque commodo, eros et commodo elementum, lectus augue interdum felis, at hendrerit erat arcu vel dolor. Aenean tellus sem, volutpat a dapibus semper, tempus at sem. Pellentesque vitae molestie leo. Sed malesuada risus et gravida semper. Fusce tincidunt semper libero ut bibendum. Ut vel fringilla nunc. Sed et ipsum tellus. Vestibulum dictum mi eget nisi bibendum imperdiet. Etiam nec faucibus ex.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus urna purus, suscipit eu efficitur sit amet, faucibus quis nisi. Pellentesque commodo, eros et commodo elementum, lectus augue interdum felis, at hendrerit erat arcu vel dolor. Aenean tellus sem, volutpat a dapibus semper, tempus at sem. Pellentesque vitae molestie leo. Sed malesuada risus et gravida semper. Fusce tincidunt semper libero ut bibendum. Ut vel fringilla nunc. Sed et ipsum tellus. Vestibulum dictum mi eget nisi bibendum imperdiet. Etiam nec faucibus ex.', NULL, '2020-05-29', NULL, 0, 1, 1, 'post1', 1, NULL),
(90, 'Ut vel fringilla nunc', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus urna purus, suscipit eu efficitur sit amet, faucibus quis nisi. Pellentesque commodo, eros et commodo elementum, lectus augue interdum felis, at hendrerit erat arcu vel dolor. Aenean tellus sem, volutpat a dapibus semper, tempus at sem. Pellentesque vitae molestie leo. Sed malesuada risus et gravida semper. Fusce tincidunt semper libero ut bibendum. Ut vel fringilla nunc. Sed et ipsum tellus. Vestibulum dictum mi eget nisi bibendum imperdiet. Etiam nec faucibus ex.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus urna purus, suscipit eu efficitur sit amet, faucibus quis nisi. Pellentesque commodo, eros et commodo elementum, lectus augue interdum felis, at hendrerit erat arcu vel dolor. Aenean tellus sem, volutpat a dapibus semper, tempus at sem. Pellentesque vitae molestie leo. Sed malesuada risus et gravida semper. Fusce tincidunt semper libero ut bibendum. Ut vel fringilla nunc. Sed et ipsum tellus. Vestibulum dictum mi eget nisi bibendum imperdiet. Etiam nec faucibus ex.', NULL, '2020-05-07', NULL, 0, 1, 1, 'post2', 1, NULL),
(91, 'Sed malesuada risus et gravida semper', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus urna purus, suscipit eu efficitur sit amet, faucibus quis nisi. Pellentesque commodo, eros et commodo elementum, lectus augue interdum felis, at hendrerit erat arcu vel dolor. Aenean tellus sem, volutpat a dapibus semper, tempus at sem. Pellentesque vitae molestie leo. Sed malesuada risus et gravida semper. Fusce tincidunt semper libero ut bibendum. Ut vel fringilla nunc. Sed et ipsum tellus. Vestibulum dictum mi eget nisi bibendum imperdiet. Etiam nec faucibus ex.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus urna purus, suscipit eu efficitur sit amet, faucibus quis nisi. Pellentesque commodo, eros et commodo elementum, lectus augue interdum felis, at hendrerit erat arcu vel dolor. Aenean tellus sem, volutpat a dapibus semper, tempus at sem. Pellentesque vitae molestie leo. Sed malesuada risus et gravida semper. Fusce tincidunt semper libero ut bibendum. Ut vel fringilla nunc. Sed et ipsum tellus. Vestibulum dictum mi eget nisi bibendum imperdiet. Etiam nec faucibus ex.', NULL, '2020-05-20', NULL, 0, 1, 1, 'post3', 1, NULL),
(92, ' Phasellus urna purus', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus urna purus, suscipit eu efficitur sit amet, faucibus quis nisi. Pellentesque commodo, eros et commodo elementum, lectus augue interdum felis, at hendrerit erat arcu vel dolor. Aenean tellus sem, volutpat a dapibus semper, tempus at sem. Pellentesque vitae molestie leo. Sed malesuada risus et gravida semper. Fusce tincidunt semper libero ut bibendum. Ut vel fringilla nunc. Sed et ipsum tellus. Vestibulum dictum mi eget nisi bibendum imperdiet. Etiam nec faucibus ex.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus urna purus, suscipit eu efficitur sit amet, faucibus quis nisi. Pellentesque commodo, eros et commodo elementum, lectus augue interdum felis, at hendrerit erat arcu vel dolor. Aenean tellus sem, volutpat a dapibus semper, tempus at sem. Pellentesque vitae molestie leo. Sed malesuada risus et gravida semper. Fusce tincidunt semper libero ut bibendum. Ut vel fringilla nunc. Sed et ipsum tellus. Vestibulum dictum mi eget nisi bibendum imperdiet. Etiam nec faucibus ex.', NULL, '2020-05-19', NULL, 0, 1, 1, 'post4', 2, NULL),
(93, 'Aenean tellus sem', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus urna purus, suscipit eu efficitur sit amet, faucibus quis nisi. Pellentesque commodo, eros et commodo elementum, lectus augue interdum felis, at hendrerit erat arcu vel dolor. Aenean tellus sem, volutpat a dapibus semper, tempus at sem. Pellentesque vitae molestie leo. Sed malesuada risus et gravida semper. Fusce tincidunt semper libero ut bibendum. Ut vel fringilla nunc. Sed et ipsum tellus. Vestibulum dictum mi eget nisi bibendum imperdiet. Etiam nec faucibus ex.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus urna purus, suscipit eu efficitur sit amet, faucibus quis nisi. Pellentesque commodo, eros et commodo elementum, lectus augue interdum felis, at hendrerit erat arcu vel dolor. Aenean tellus sem, volutpat a dapibus semper, tempus at sem. Pellentesque vitae molestie leo. Sed malesuada risus et gravida semper. Fusce tincidunt semper libero ut bibendum. Ut vel fringilla nunc. Sed et ipsum tellus. Vestibulum dictum mi eget nisi bibendum imperdiet. Etiam nec faucibus ex.', NULL, '2020-05-13', NULL, 0, 1, 1, 'post5', 2, NULL),
(94, 'Pellentesque vitae molestie leo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus urna purus, suscipit eu efficitur sit amet, faucibus quis nisi. Pellentesque commodo, eros et commodo elementum, lectus augue interdum felis, at hendrerit erat arcu vel dolor. Aenean tellus sem, volutpat a dapibus semper, tempus at sem. Pellentesque vitae molestie leo. Sed malesuada risus et gravida semper. Fusce tincidunt semper libero ut bibendum. Ut vel fringilla nunc. Sed et ipsum tellus. Vestibulum dictum mi eget nisi bibendum imperdiet. Etiam nec faucibus ex.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus urna purus, suscipit eu efficitur sit amet, faucibus quis nisi. Pellentesque commodo, eros et commodo elementum, lectus augue interdum felis, at hendrerit erat arcu vel dolor. Aenean tellus sem, volutpat a dapibus semper, tempus at sem. Pellentesque vitae molestie leo. Sed malesuada risus et gravida semper. Fusce tincidunt semper libero ut bibendum. Ut vel fringilla nunc. Sed et ipsum tellus. Vestibulum dictum mi eget nisi bibendum imperdiet. Etiam nec faucibus ex.', NULL, '2020-05-29', NULL, 0, 1, 1, 'post6', 2, NULL),
(95, 'Vestibulum dictum mi eget', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus urna purus, suscipit eu efficitur sit amet, faucibus quis nisi. Pellentesque commodo, eros et commodo elementum, lectus augue interdum felis, at hendrerit erat arcu vel dolor. Aenean tellus sem, volutpat a dapibus semper, tempus at sem. Pellentesque vitae molestie leo. Sed malesuada risus et gravida semper. Fusce tincidunt semper libero ut bibendum. Ut vel fringilla nunc. Sed et ipsum tellus. Vestibulum dictum mi eget nisi bibendum imperdiet. Etiam nec faucibus ex.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus urna purus, suscipit eu efficitur sit amet, faucibus quis nisi. Pellentesque commodo, eros et commodo elementum, lectus augue interdum felis, at hendrerit erat arcu vel dolor. Aenean tellus sem, volutpat a dapibus semper, tempus at sem. Pellentesque vitae molestie leo. Sed malesuada risus et gravida semper. Fusce tincidunt semper libero ut bibendum. Ut vel fringilla nunc. Sed et ipsum tellus. Vestibulum dictum mi eget nisi bibendum imperdiet. Etiam nec faucibus ex.', NULL, '2020-05-25', NULL, 0, 1, 1, 'post7', 1, NULL),
(96, 'Eros et commodo elementum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus urna purus, suscipit eu efficitur sit amet, faucibus quis nisi. Pellentesque commodo, eros et commodo elementum, lectus augue interdum felis, at hendrerit erat arcu vel dolor. Aenean tellus sem, volutpat a dapibus semper, tempus at sem. Pellentesque vitae molestie leo. Sed malesuada risus et gravida semper. Fusce tincidunt semper libero ut bibendum. Ut vel fringilla nunc. Sed et ipsum tellus. Vestibulum dictum mi eget nisi bibendum imperdiet. Etiam nec faucibus ex.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus urna purus, suscipit eu efficitur sit amet, faucibus quis nisi. Pellentesque commodo, eros et commodo elementum, lectus augue interdum felis, at hendrerit erat arcu vel dolor. Aenean tellus sem, volutpat a dapibus semper, tempus at sem. Pellentesque vitae molestie leo. Sed malesuada risus et gravida semper. Fusce tincidunt semper libero ut bibendum. Ut vel fringilla nunc. Sed et ipsum tellus. Vestibulum dictum mi eget nisi bibendum imperdiet. Etiam nec faucibus ex.', NULL, '2020-05-31', NULL, 0, 1, 1, 'post8', 2, NULL);

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
(409, 90, 408),
(410, 91, 410),
(411, 92, 409),
(412, 93, 407),
(413, 94, 408),
(414, 95, 409),
(415, 96, 410);

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
  MODIFY `id_autor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de tabela `menu_itens`
--
ALTER TABLE `menu_itens`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `midias`
--
ALTER TABLE `midias`
  MODIFY `id_midias` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=411;

--
-- AUTO_INCREMENT de tabela `midias_te`
--
ALTER TABLE `midias_te`
  MODIFY `id_te` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `postagens`
--
ALTER TABLE `postagens`
  MODIFY `id_postagens` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT de tabela `postagens_midias`
--
ALTER TABLE `postagens_midias`
  MODIFY `id_postagens_midias` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=416;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
