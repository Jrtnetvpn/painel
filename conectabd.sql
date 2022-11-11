-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 31-Ago-2022 às 00:39
-- Versão do servidor: 10.1.48-MariaDB-0ubuntu0.18.04.1
-- versão do PHP: 7.3.33-4+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sshplus`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `admin`
--

CREATE TABLE `admin` (
  `id_administrador` int(11) NOT NULL,
  `login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `senha` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nome` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `celular` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `accessKEY` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `textocon` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `textorev` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `admin`
--

INSERT INTO `admin` (`id_administrador`, `login`, `senha`, `nome`, `email`, `celular`, `accessKEY`, `site`, `textocon`, `textorev`) VALUES
(1, 'admin', 'admin', 'Administrador', 'meuemail@gmail.com', '11999999999', NULL, 'GESTOR-SSH', 'Abra o app que você instalou e selecione a operadora, digite o usuário e a senha, ligue o dados móveis e desligue Wi-fi, clique em Conectar. Deve aparecer *Conectado*. 🚀', 'Seja bem vindo revenda e tenha sucesso nas *vendas*. 🚀');

-- --------------------------------------------------------

--
-- Estrutura da tabela `configs`
--

CREATE TABLE `configs` (
  `id` int(11) NOT NULL,
  `nome` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valor` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `configs`
--

INSERT INTO `configs` (`id`, `nome`, `valor`) VALUES
(1, 'msg_id', '01'),
(2, 'sesexp', '30'),
(3, 'logo', 'https://i.ibb.co/q1LnDVT/logo.png'),
(4, 'largura', ''),
(5, 'altura', ''),
(6, 'link', 'http://meu.dominio'),
(7, 'titulo', 'Painel Conecta4G');

-- --------------------------------------------------------

--
-- Estrutura da tabela `configuracoes`
--

CREATE TABLE `configuracoes` (
  `id` int(11) NOT NULL,
  `id_owner` int(11) NOT NULL,
  `versao` int(11) NOT NULL DEFAULT '2',
  `notas` mediumtext COLLATE utf8mb4_unicode_ci,
  `sms` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `att` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contato` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `termos` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `checkuser` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mensagem` mediumtext COLLATE utf8mb4_unicode_ci,
  `att_msg` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `configuracoes`
--

INSERT INTO `configuracoes` (`id`, `id_owner`, `versao`, `notas`, `sms`, `att`, `email`, `contato`, `termos`, `checkuser`, `mensagem`, `att_msg`) VALUES
(1, 1, 2, '👋 ATUALIZAÇÃO DISPONÍVEL! 👋\n🚀 CLIQUE EM ATUALIZAR 🚀', 'http://meu.dominio/update/admin/sms', 'http://meu.dominio/update/admin/config', 'meuemail@gmail.com', 'https://t.me/telegram', 'http://meu.dominio/apps/termos.php', 'true', NULL, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mensagens`
--

CREATE TABLE `mensagens` (
  `id` int(11) NOT NULL,
  `id_owner` int(11) NOT NULL,
  `msg` longtext COLLATE utf8mb4_unicode_ci,
  `att` int(11) DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `mensagens`
--

INSERT INTO `mensagens` (`id`, `id_owner`, `msg`, `att`) VALUES
(1, 1, 'Atualização com todas as\noperadoras funcionando!\nMantenha o APP sempre atualizado!\nNosso compromisso é deixar vocês \nsempre ON! 🚀🔰', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `payloads`
--

CREATE TABLE `payloads` (
  `id` int(11) NOT NULL,
  `id_owner` int(11) NOT NULL,
  `Name` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `FLAG` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Payload` mediumtext COLLATE utf8mb4_unicode_ci,
  `SNI` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TlsIP` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ProxyIP` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ProxyPort` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Info` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `payloads`
--

INSERT INTO `payloads` (`id`, `id_owner`, `Name`, `FLAG`, `Payload`, `SNI`, `TlsIP`, `ProxyIP`, `ProxyPort`, `Info`) VALUES
(1, 1, '📱 VIVO SPEED ON 01 📡 💜', 'vivo', 'GET wss://bam.nr-data.net// HTTP/1.1[crlf]Host: [app_host][crlf]Upgrade: Websocket[crlf]Connection: Keep-Alive[crlf]Connection: Keep-Alive[crlf][crlf]', 'bam.nr-data.net', '162.247.241.14', '', '443', 'Tlsws'),
(2, 1, '📱 VIVO SPEED ON 02 📡 💜', 'vivo', 'GET wss://bam.nr-data.net// HTTP/1.1[crlf]Host: [app_host][crlf]Upgrade: Websocket[crlf]Connection: Keep-Alive[crlf]Connection: Keep-Alive[crlf][crlf]', 'bam.nr-data.net', '104.16.123.175', '', '443', 'Tlsws'),
(3, 1, '📱 VIVO SPEED ON 03 📡 💜', 'vivo', 'GET wss://bam.nr-data.net// HTTP/1.1[crlf]Host: [app_host][crlf]Upgrade: Websocket[crlf]Connection: Keep-Alive[crlf]Connection: Keep-Alive[crlf][crlf]', 'bam.nr-data.net', '104.16.56.6', '', '443', 'Tlsws'),
(4, 1, '📱 VIVO SPEED ON 04 📡 💜', 'vivo', 'GET wss://bam.nr-data.net// HTTP/1.1[crlf]Host: [app_host][crlf]Upgrade: Websocket[crlf]Connection: Keep-Alive[crlf]Connection: Keep-Alive[crlf][crlf]', 'bam.nr-data.net', '104.16.57.6', '', '443', 'Tlsws'),
(5, 1, '📱 VIVO SPEED ON 05 📡 💜', 'vivo', 'GET wss://bam.nr-data.net// HTTP/1.1[crlf]Host: [app_host][crlf]Upgrade: Websocket[crlf]Connection: Keep-Alive[crlf]Connection: Keep-Alive[crlf][crlf]', 'bam.nr-data.net', 'bam.nr-data.net', '', '443', 'Tlsws'),
(6, 1, '📱 VIVO SPEED ON 06 📡 💜', 'vivo', 'GET / HTTP/1.3[crlf]Host: [host][crlf]Upgrade: websocket[crlf][crlf]', '', '', '104.16.122.175', '80', 'Proxy'),
(7, 1, '📱 VIVO EASY 01 📡 💜', 'vivo', 'GET wss://vivo360.vivo.com.br/ HTTP/1.1[crlf]Host: [app_host][crlf]Upgrade: Websocket[crlf]Connection: Keep-Alive[crlf][crlf]', 'vivo360.vivo.com.br', '104.18.6.80', '104.18.6.80', '443', 'Tlsws'),
(8, 1, '📱 VIVO EASY 02 📡 💜', 'vivo', 'GET wss://vivoid.vivo.com.br/ HTTP/1.1[crlf]Host: [app_host][crlf]Upgrade: websocket[crlf][crlf]', 'vivoid.vivo.com.br', '104.18.7.80', '104.18.7.80', '443', 'Tlsws'),
(9, 1, '📱 TIM 5G 01 📡 💙', 'tim', 'GET wss://bam.nr-data.net// HTTP/1.1[crlf]Host: [app_host][crlf]Upgrade: Websocket[crlf]Connection: Keep-Alive[crlf]Connection: Keep-Alive[crlf][crlf]', 'bam.nr-data.net', '162.247.241.14', '', '443', 'Tlsws'),
(10, 1, '📱 TIM 5G 02 📡 💙', 'tim', 'GET wss://bam.nr-data.net// HTTP/1.1[crlf]Host: [app_host][crlf]Upgrade: Websocket[crlf]Connection: Keep-Alive[crlf]Connection: Keep-Alive[crlf][crlf]', 'bam.nr-data.net', 'bam.nr-data.net', '', '443', 'Tlsws'),
(11, 1, '📱 CLARO 5G 01 📡 ❤️', 'claro', 'GET wss://player-api.new.livestream.com/ HTTP/1.1[crlf]Host: [app_host][crlf]Upgrade: websocket[crlf][crlf]', 'player-api.new.livestream.com', 'player-api.new.livestream.com', 'player-api.new.livestream.com', '443', 'Tlsws'),
(12, 1, '📱 CLARO 5G 02 📡 ❤️', 'claro', 'GET wss://player-api.new.livestream.com/ HTTP/1.1[crlf]Host: [app_host][crlf]Upgrade: websocket[crlf][crlf]', 'player-api.new.livestream.com', '162.159.136.60', '162.159.136.60', '443', 'Tlsws'),
(13, 1, '📱 OI 5G 01 📡 💛', 'oi', 'GET ws://www.hbogo.com.br HTTP/1.1\nHost: [app_host]\nUpgrade: ws\n\n', 'www.hbogo.com.br', 'www.hbogo.com.br', '', '', 'Tlsws'),
(14, 1, '📱 OI 5G 02 📡 💛', 'oi', 'GET ws://www.hbogo.com.br HTTP/1.1\nHost: [app_host]\nUpgrade: ws\n\n', 'www.hbogo.com.br', '104.16.53.91', '', '', 'Tlsws'),
(15, 1, '📱 OI 5G 03 📡 💛', 'oi', 'GET / HTTP/1.3[crlf]Host: [host][crlf]Upgrade: websocket[crlf][crlf]', 'oii.gdmhost.ga', 'oii.gdmhost.ga', 'oii.gdmhost.ga', '80', 'proxy'),
(16, 1, '📱 OI 5G 04 📡 💛', 'oi', 'GET / HTTP/1.3[crlf]Host: [app_host][crlf]Upgrade: websocket[crlf][crlf]', 'oii.gdmhost.ga', 'oii.gdmhost.ga', 'oii.gdmhost.ga', '443', 'Tlsws'),
(17, 1, '📱 OI 5G 05 📡 💛', 'oi', 'GET / HTTP/1.1[crlf]Host: [app_host][crlf]Upgrade: websocket[crlf][crlf]', '[app_host]', '104.16.51.91', '', '443', 'Tlsws'),
(18, 1, '📱 OI 5G 06 📡 💛', 'oi', 'GET ws://www.hbogo.com.br HTTP/1.1\nHost: [app_host]\nUpgrade: ws\n\n', 'www.hbogo.com.br', 'www.hbogo.com.br', '', '', 'Tlsws'),
(19, 1, '📱 OI 5G 07 📡 💛', 'oi', 'GET ws://www.hbogo.com.br HTTP/1.1\nHost: [app_host]\nUpgrade: ws\n\n', 'www.hbogo.com.br', '104.16.53.91', '', '', 'Tlsws'),
(20, 1, '📱 OI 5G 08 📡 💛', 'oi', 'GET / HTTP/1.3[crlf]Host: [host][crlf]Upgrade: websocket[crlf][crlf]', 'oii.gdmhost.ga', '104.16.56.6', '104.16.56.6', '', 'Tlsws');

-- --------------------------------------------------------

--
-- Estrutura da tabela `portas`
--

CREATE TABLE `portas` (
  `id` int(11) NOT NULL,
  `id_owner` int(11) NOT NULL,
  `Porta` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `portas`
--

INSERT INTO `portas` (`id`, `id_owner`, `Porta`) VALUES
(1, 1, '7300');

-- --------------------------------------------------------

--
-- Estrutura da tabela `servidores`
--

CREATE TABLE `servidores` (
  `id` int(11) NOT NULL,
  `id_owner` int(11) NOT NULL,
  `Name` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `TYPE` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'premium',
  `FLAG` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'br.png',
  `ServerIP` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CheckUser` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ServerPort` int(11) DEFAULT '22',
  `SSLPort` int(11) DEFAULT NULL,
  `USER` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PASS` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `servidores`
--

INSERT INTO `servidores` (`id`, `id_owner`, `Name`, `TYPE`, `FLAG`, `ServerIP`, `CheckUser`, `ServerPort`, `SSLPort`, `USER`, `PASS`) VALUES
(1, 1, '⚡ SERVIDOR 01', 'premium', 'br.png', 'dominio.vps.ssh', 'http://dominio.vps.ssh:8080/checkUser', 22, 443, '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sessao`
--

CREATE TABLE `sessao` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `uid` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `expira` int(100) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `login` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `senha` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nivel` int(11) NOT NULL DEFAULT '1',
  `banido` int(11) NOT NULL DEFAULT '0',
  `limite_pay` int(11) NOT NULL DEFAULT '4',
  `limite_ser` int(11) NOT NULL DEFAULT '15',
  `pasta_att` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `login`, `senha`, `nivel`, `banido`, `limite_pay`, `limite_ser`, `pasta_att`) VALUES
(1, 'GESTOR-SSH', 'admin', '21232f297a57a5a743894a0e4a801fc3', 3, 0, 4, 15, 'admin');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_administrador`);

--
-- Índices para tabela `configs`
--
ALTER TABLE `configs`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `configuracoes`
--
ALTER TABLE `configuracoes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `mensagens`
--
ALTER TABLE `mensagens`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `payloads`
--
ALTER TABLE `payloads`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `portas`
--
ALTER TABLE `portas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `servidores`
--
ALTER TABLE `servidores`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `sessao`
--
ALTER TABLE `sessao`
  ADD UNIQUE KEY `id` (`id`,`uid`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `admin`
--
ALTER TABLE `admin`
  MODIFY `id_administrador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `configs`
--
ALTER TABLE `configs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `configuracoes`
--
ALTER TABLE `configuracoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `mensagens`
--
ALTER TABLE `mensagens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `payloads`
--
ALTER TABLE `payloads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `portas`
--
ALTER TABLE `portas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `servidores`
--
ALTER TABLE `servidores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;