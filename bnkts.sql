-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Май 01 2019 г., 17:00
-- Версия сервера: 5.5.25
-- Версия PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `bnkts`
--

-- --------------------------------------------------------

--
-- Структура таблицы `chat`
--

CREATE TABLE IF NOT EXISTS `chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` text NOT NULL,
  `user` varchar(20) NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

-- --------------------------------------------------------

--
-- Структура таблицы `load`
--

CREATE TABLE IF NOT EXISTS `load` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `cat` int(11) NOT NULL,
  `read` int(11) NOT NULL,
  `download` int(11) NOT NULL,
  `added` varchar(20) NOT NULL,
  `text` mediumtext NOT NULL,
  `date` datetime NOT NULL,
  `active` int(11) NOT NULL,
  `dimg` int(11) NOT NULL,
  `dfile` int(11) NOT NULL,
  `link` tinytext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `load`
--

INSERT INTO `load` (`id`, `name`, `cat`, `read`, `download`, `added`, `text`, `date`, `active`, `dimg`, `dfile`, `link`) VALUES
(1, '100 рублей', 1, 3, 0, 'juicyj', '100 рублей', '2019-03-27 13:46:39', 1, 1, 0, 'https://steamcommunity.com/tradeoffer/new/?partner=231967570&amp;token=G2RIjjMG'),
(2, '500 рублей', 1, 1, 0, 'juicyj', '500 рублей', '2019-03-27 13:49:45', 1, 1, 0, 'https://steamcommunity.com/tradeoffer/new/?partner=231967570&amp;token=G2RIjjMG'),
(3, '1000 рублей', 1, 15, 0, 'juicyj', '1000 рублей', '2019-03-27 13:50:24', 1, 1, 0, 'https://steamcommunity.com/tradeoffer/new/?partner=231967570&amp;token=G2RIjjMG');

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` tinytext NOT NULL,
  `cat` int(11) NOT NULL,
  `read` int(11) NOT NULL,
  `added` varchar(20) NOT NULL,
  `text` text NOT NULL,
  `date` datetime NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=116 ;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `name`, `cat`, `read`, `added`, `text`, `date`, `active`) VALUES
(114, 'Курсавая работа', 2, 7, 'juicyj', 'КУ прывет', '2019-03-28 14:45:23', 1),
(115, 'uwfwe', 1, 2, 'juicyj', 'ksiuchs', '2019-04-22 13:56:55', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `regdate` datetime NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `country` int(11) NOT NULL,
  `avatar` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `group` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=173 ;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `password`, `name`, `regdate`, `email`, `country`, `avatar`, `active`, `group`) VALUES
(169, 'ilyatarkan', 'f2979407519232d0eca3c1f039786693', 'Илья', '2019-03-27 12:05:11', 'ilya.tarkan@mail.ru', 2, 0, 0, 0),
(170, 'juicyj', '94624794387396ab2ea3ad15577afe32', 'Илья', '2019-03-27 12:07:41', 'tarkan@mail.ru', 3, 0, 1, 2),
(171, 'dimaloh', '7952511d2ddb60efa8ff08359212f132', 'димасик', '2019-04-19 23:19:45', 'dimaloh@mail.ru', 3, 0, 1, 2),
(172, 'ilyatar', '23a60f43412a1150e2a1658aad626085', 'Илья', '2019-04-22 13:48:00', 'ilya@mail.ru', 2, 0, 1, 2);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
