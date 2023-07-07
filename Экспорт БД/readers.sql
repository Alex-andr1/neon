-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 17 2020 г., 17:43
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `lesson`
--

-- --------------------------------------------------------

--
-- Структура таблицы `readers`
--

CREATE TABLE `readers` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `patron` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rad1` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `datebirth` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tel` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_status` tinyint(1) NOT NULL DEFAULT 0,
  `password` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `readers`
--

INSERT INTO `readers` (`id`, `first_name`, `last_name`, `patron`, `rad1`, `datebirth`, `tel`, `email`, `email_status`, `password`) VALUES
(1, 'Александр', 'Пушкин', NULL, NULL, NULL, NULL, 'pas1799@mail.ru', 0, '3ec8ca01ee95bd5b3b0a3e5955f63dfd'),
(2, 'Александр', 'Лобанов', 'Сергеевич', NULL, NULL, NULL, 'alexan2r@rambler.ru', 0, '7ad3599706048c84928a006ff5d1f8f4'),
(3, 'Иван', 'Иванов', 'Иванович', 'M', NULL, NULL, 'iii@rambler.ru', 0, '87ceb596af4d03a4d5d6d04bc2dec11b'),
(4, 'Пётр', 'Петров', 'Петрович', 'M', NULL, '88005553555', 'ppp@mail.ru', 0, '8eab5018f372b310d7df35ec3294f994'),
(5, 'Фёдор', 'Фёдоров', 'Фёдорович', 'M', '2001-01-01', '+79252222222', 'fff@mail.ru', 0, '03124e765f45343503114f47e74883ed');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `readers`
--
ALTER TABLE `readers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `readers`
--
ALTER TABLE `readers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
