-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 05 Ara 2019, 17:19:11
-- Sunucu sürümü: 10.4.8-MariaDB
-- PHP Sürümü: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `linux`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `config`
--

CREATE TABLE `config` (
  `id` int(11) NOT NULL,
  `c_name` text NOT NULL,
  `c_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `config`
--

INSERT INTO `config` (`id`, `c_name`, `c_value`) VALUES
(1, 'umask', '022');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `f_name` text NOT NULL,
  `f_type` text NOT NULL,
  `f_size` text NOT NULL,
  `f_inodeno` int(11) NOT NULL,
  `f_perms` text NOT NULL,
  `f_hardlink` text NOT NULL,
  `f_owner` text NOT NULL,
  `f_group` text NOT NULL,
  `f_lastmodified` text NOT NULL,
  `f_path` text NOT NULL,
  `f_absolutepath` text NOT NULL,
  `f_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `files`
--

INSERT INTO `files` (`id`, `f_name`, `f_type`, `f_size`, `f_inodeno`, `f_perms`, `f_hardlink`, `f_owner`, `f_group`, `f_lastmodified`, `f_path`, `f_absolutepath`, `f_content`) VALUES
(146, './', 'dir', '4096', 469795, 'rwx------', '2', 'root', 'root', '2019-11-30 20:07:59', '/', '/', ''),
(147, 'home', 'dir', '4096', 6346, 'rwx------', '2', 'root', 'root', '2019-11-30 20:35:30', '/home', '/', ''),
(148, 'tmp', 'dir', '4096', 348508, 'rwxrwxrwt', '2', 'root', 'root', '2019-12-02 13:51:38', '/tmp', '/', ''),
(149, 'etc', 'dir', '4096', 435759, 'rwx------', '2', 'root', 'root', '2019-12-02 13:51:40', '/etc', '/', ''),
(150, 'users', 'file', '0', 416894, 'rwx------', '1', 'root', 'root', '2019-12-02 13:54:46', '/etc/users', '/etc', ''),
(152, 'groups', 'file', '0', 202196, 'rwx------', '1', 'root', 'root', '2019-12-02 13:58:52', '/etc/groups', '/etc', ''),
(153, 'sudoers', 'file', '0', 193447, 'rwx------', '1', 'root', 'root', '2019-12-02 13:59:02', '/etc/sudoers', '/etc', 'u_name: root,u_path:/home/root@u_name:alemdar,u_path:/home/alemdar@'),
(154, 'root', 'dir', '4096', 437571, 'rwx------', '2', 'root', 'root', '2019-12-02 14:00:58', '/home/root', '/home', ''),
(155, 'alemdar', 'dir', '4096', 296943, 'rwx------', '2', 'alemdar', 'alemdar', '2019-12-02 14:03:05', '/home/alemdar', '/home', ''),
(156, 'berk', 'dir', '4096', 289693, 'rwx------', '2', 'berk', 'berk', '2019-12-02 14:03:10', '/home/berk', '/home', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `g_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `groups`
--

INSERT INTO `groups` (`id`, `g_name`) VALUES
(1, 'root'),
(3, 'berk'),
(4, 'alemdar');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `links`
--

CREATE TABLE `links` (
  `id` int(11) NOT NULL,
  `l_first` text NOT NULL,
  `l_sec` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `process`
--

CREATE TABLE `process` (
  `p_id` int(11) NOT NULL,
  `p_user` text NOT NULL,
  `p_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `setfacl`
--

CREATE TABLE `setfacl` (
  `id` int(11) NOT NULL,
  `u_name` text NOT NULL,
  `u_perm` text NOT NULL,
  `u_file` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `u_name` text NOT NULL,
  `u_pass` text NOT NULL,
  `u_group` text NOT NULL,
  `u_dir` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `u_name`, `u_pass`, `u_group`, `u_dir`) VALUES
(1, 'root', 'root525452', 'root', '/home/root'),
(3, 'berk', 'berk525452', 'berk', '/home/berk'),
(4, 'alemdar', 'alemdar525452', 'alemdar', '/home/alemdar');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `process`
--
ALTER TABLE `process`
  ADD PRIMARY KEY (`p_id`);

--
-- Tablo için indeksler `setfacl`
--
ALTER TABLE `setfacl`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `config`
--
ALTER TABLE `config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=236;

--
-- Tablo için AUTO_INCREMENT değeri `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `links`
--
ALTER TABLE `links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- Tablo için AUTO_INCREMENT değeri `process`
--
ALTER TABLE `process`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Tablo için AUTO_INCREMENT değeri `setfacl`
--
ALTER TABLE `setfacl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
