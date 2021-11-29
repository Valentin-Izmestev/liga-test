-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 29 2021 г., 15:50
-- Версия сервера: 8.0.24
-- Версия PHP: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `liga`
--

-- --------------------------------------------------------

--
-- Структура таблицы `2ndfl`
--

CREATE TABLE `2ndfl` (
  `id` int UNSIGNED NOT NULL,
  `taxplayer` int UNSIGNED DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `final_date` date DEFAULT NULL,
  `january_income` decimal(10,2) UNSIGNED DEFAULT NULL,
  `february_income` decimal(10,2) UNSIGNED DEFAULT NULL,
  `income_for_march` decimal(10,2) UNSIGNED DEFAULT NULL,
  `april_income` decimal(10,2) UNSIGNED DEFAULT NULL,
  `may_income` decimal(10,2) UNSIGNED DEFAULT NULL,
  `june_income` decimal(10,2) UNSIGNED DEFAULT NULL,
  `july_income` decimal(10,2) UNSIGNED DEFAULT NULL,
  `income_for_august` decimal(10,2) UNSIGNED DEFAULT NULL,
  `september_income` decimal(10,2) UNSIGNED DEFAULT NULL,
  `october_income` decimal(10,2) UNSIGNED DEFAULT NULL,
  `november_income` decimal(10,2) UNSIGNED DEFAULT NULL,
  `december_income` decimal(10,2) UNSIGNED DEFAULT NULL,
  `total_income` decimal(10,2) UNSIGNED DEFAULT NULL,
  `calculated_tax_amount` decimal(10,2) UNSIGNED DEFAULT NULL,
  `withholding_tax_amount` decimal(10,2) UNSIGNED DEFAULT NULL,
  `transfer_tax_amount` decimal(10,2) UNSIGNED DEFAULT NULL,
  `deduction_code` int UNSIGNED DEFAULT NULL,
  `the_amount_of_the_deduction` decimal(10,2) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `2ndfl`
--

INSERT INTO `2ndfl` (`id`, `taxplayer`, `start_date`, `final_date`, `january_income`, `february_income`, `income_for_march`, `april_income`, `may_income`, `june_income`, `july_income`, `income_for_august`, `september_income`, `october_income`, `november_income`, `december_income`, `total_income`, `calculated_tax_amount`, `withholding_tax_amount`, `transfer_tax_amount`, `deduction_code`, `the_amount_of_the_deduction`) VALUES
(1, 1, '2021-01-12', '2021-11-25', '25000.00', '25000.00', '25000.00', '25000.00', '25000.00', '25000.00', '25000.00', '25000.00', '25000.00', '25000.00', '25000.00', '25000.00', '300000.00', NULL, NULL, NULL, 256, '3600.00'),
(2, 2, '2021-01-13', '2021-11-26', '29000.00', '29000.00', '29000.00', '29000.00', '29000.00', '29000.00', '29000.00', '29000.00', '29000.00', '29000.00', '29000.00', '29000.00', '348000.00', NULL, NULL, NULL, 256, '3600.00'),
(3, 3, '2021-01-14', '2021-11-27', '30000.00', '30000.00', '30000.00', '30000.00', '30000.00', '30000.00', '30000.00', '30000.00', '30000.00', '30000.00', '30000.00', '30000.00', '360000.00', NULL, NULL, NULL, 256, '3600.00'),
(4, 4, '2021-01-15', '2021-11-28', '28000.00', '28000.00', '28000.00', '28000.00', '28000.00', '28000.00', '28000.00', '28000.00', '28000.00', '28000.00', '28000.00', '28000.00', '336000.00', NULL, NULL, NULL, 256, '3600.00'),
(5, 5, '2021-01-16', '2021-11-29', '32000.00', '32000.00', '32000.00', '32000.00', '32000.00', '32000.00', '32000.00', '32000.00', '32000.00', '32000.00', '32000.00', '32000.00', '384000.00', NULL, NULL, NULL, 256, '3600.00'),
(6, 6, '2021-01-17', '2021-11-30', '30000.00', '30000.00', '30000.00', '30000.00', '30000.00', '30000.00', '30000.00', '30000.00', '30000.00', '30000.00', '30000.00', '30000.00', '360000.00', NULL, NULL, NULL, 256, '3600.00'),
(7, 7, '2021-01-18', '2021-12-01', '35000.00', '35000.00', '35000.00', '35000.00', '35000.00', '35000.00', '35000.00', '35000.00', '35000.00', '35000.00', '35000.00', '35000.00', '420000.00', NULL, NULL, NULL, 256, '3600.00');

-- --------------------------------------------------------

--
-- Структура таблицы `client`
--

CREATE TABLE `client` (
  `id` int UNSIGNED NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `patronymic` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `tel` bigint DEFAULT NULL,
  `tel_alt` bigint DEFAULT NULL,
  `SNILS` int DEFAULT NULL,
  `INN` bigint DEFAULT NULL,
  `citizenship` varchar(100) DEFAULT NULL,
  `passport_ID` int DEFAULT NULL,
  `passport_series` int DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `place_of_birth` varchar(255) DEFAULT NULL,
  `passport_go` varchar(255) DEFAULT NULL,
  `passport_go_date` date DEFAULT NULL,
  `division_code` char(7) DEFAULT NULL,
  `id_region` int UNSIGNED DEFAULT NULL,
  `id_district` int UNSIGNED DEFAULT NULL,
  `id_locality` int UNSIGNED DEFAULT NULL,
  `id_strit` int UNSIGNED DEFAULT NULL,
  `home` char(10) DEFAULT NULL,
  `korp` char(10) DEFAULT NULL,
  `bilding` char(10) DEFAULT NULL,
  `flat` int DEFAULT NULL,
  `place_of_work` varchar(255) DEFAULT NULL,
  `id_type_of_employment` int UNSIGNED DEFAULT NULL,
  `work_tel` bigint DEFAULT NULL,
  `job_title` varchar(255) DEFAULT NULL,
  `id_job_type` int UNSIGNED DEFAULT NULL,
  `experience` int DEFAULT NULL,
  `income` decimal(10,2) UNSIGNED DEFAULT NULL,
  `id_education` int UNSIGNED DEFAULT NULL,
  `id_family_status` int UNSIGNED DEFAULT NULL,
  `inter_passport` tinyint UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `client`
--

INSERT INTO `client` (`id`, `firstname`, `patronymic`, `lastname`, `gender`, `tel`, `tel_alt`, `SNILS`, `INN`, `citizenship`, `passport_ID`, `passport_series`, `date_of_birth`, `place_of_birth`, `passport_go`, `passport_go_date`, `division_code`, `id_region`, `id_district`, `id_locality`, `id_strit`, `home`, `korp`, `bilding`, `flat`, `place_of_work`, `id_type_of_employment`, `work_tel`, `job_title`, `id_job_type`, `experience`, `income`, `id_education`, `id_family_status`, `inter_passport`) VALUES
(1, 'Иван', 'Никитович', 'Иванов', 'м', 89513156548, 89513452665, 65482568, 460009580153, 'РФ', 4585, 560956, '1968-12-15', 'Курская область, пос. Белая', 'Отедлением УФМС России по Беловскому району', '2009-06-09', '460-280', 1, 1, 1, 3, '16', '', '', NULL, 'ООО Журавушка', 1, 89652562335, 'Механик', 1, 18, '25000.00', 1, 4, 0),
(2, 'Петр', 'Анатольевич', 'Петров', 'м', 89196542663, 89096255687, 25068907, 589601547352, 'РФ', 3158, 891546, '1980-12-15', 'Курская область, пос. Белая', 'Отедлением УФМС России по Беловскому району', '2012-09-29', '310-598', 1, 1, 1, 2, '4', NULL, NULL, NULL, 'ООО Гарант', 1, 89652562335, 'Механизатор', 3, 10, '29000.00', 1, 4, 0),
(3, 'Никифор', 'Вениаминович', 'Петров', 'м', 89563215894, 89523215698, 94058600, 640000589612, 'РФ', 6589, 589426, '1988-12-15', 'Белгородская область, пос. Ивня', 'Отедлением УФМС России по Ивнянскому району', '2016-09-29', '320-598', 1, 1, 1, 3, '2', NULL, NULL, NULL, 'ООО Гарант', 1, 89652562335, 'Ветеринар', 3, 10, '30000.00', 1, 4, 0),
(4, 'Геннадий', 'Михайлович', 'Сидоров', 'м', 89514789632, 89514563858, 46005985, 450000256012, 'РФ', 9578, 418955, '1979-12-15', 'Курская область, пос. Белая', 'Отедлением УФМС России по Беловскому району', '2018-09-29', '320-598', 1, 1, 1, 3, '81', NULL, NULL, NULL, 'Администраця Беловского района', 1, 84724569856, 'Главный специалист', 2, 10, '28000.00', 1, 4, 0),
(5, 'Владимир', 'Сергеевич', 'Великотский', 'м', 89563251586, 89535389624, 46032524, 450896470012, 'РФ', 9592, 411055, '1991-10-15', 'Курская область, пос. Белая', 'Отедлением УФМС России по Беловскому району', '2020-09-29', '320-598', 1, 1, 1, 3, '17', NULL, NULL, NULL, 'ООО РосАгро', 1, 89632547896, 'Экономист', 1, 10, '32000.00', 3, 4, 0),
(6, 'Анна', 'Михайлович', 'Дроздова', 'ж', 89514862632, 89516845258, 47953485, 450000965842, 'РФ', 5408, 410055, '1958-08-17', 'Курская область, пос. Белая', 'Отедлением УФМС России по Беловскому району', '2015-09-29', '320-598', 1, 1, 1, 3, '50', NULL, NULL, NULL, 'Администраця Беловского района', 1, 8472476856, 'Бухгалтер', 1, 10, '30000.00', 3, 4, 0),
(7, 'Аркадий', 'Александрович', 'Иванов', 'м', 89563258456, 89535354661, 46008624, 450000000012, 'РФ', 9532, 418455, '1975-10-15', 'Курская область, пос. Белая', 'Отедлением УФМС России по Беловскому району', '2018-09-29', '320-598', 1, 1, 1, 3, '9', NULL, NULL, NULL, 'ООО РосАгро', 1, 89632547896, 'Продавец', 5, 10, '35000.00', 1, 4, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `credit`
--

CREATE TABLE `credit` (
  `id` int UNSIGNED NOT NULL,
  `id_client` int UNSIGNED DEFAULT NULL,
  `intrest_rate` int UNSIGNED DEFAULT NULL,
  `credit_amounth` decimal(10,2) DEFAULT NULL,
  `credit_term` char(10) DEFAULT NULL,
  `date_of_offer` date DEFAULT NULL,
  `target` varchar(225) DEFAULT NULL,
  `offer_active` tinyint UNSIGNED DEFAULT '0',
  `loan_decision` tinyint UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `credit`
--

INSERT INTO `credit` (`id`, `id_client`, `intrest_rate`, `credit_amounth`, `credit_term`, `date_of_offer`, `target`, `offer_active`, `loan_decision`) VALUES
(1, 1, 9, '500000.00', '5 лет', '2019-11-15', 'Покупка автомобиля', 1, 0),
(2, 2, 9, '300000.00', '3 года', '2020-11-19', 'Ремонт дома', 1, 0),
(3, 3, 9, '800000.00', '7 лет', '2018-11-20', 'Покупка гаража', 1, 0),
(4, 4, 9, '600000.00', '6 лет', '2020-11-01', 'Покупка автомобиля', 1, 0),
(5, 5, 9, '450000.00', '4 года', '2019-11-09', 'Ремонт дома', 1, 1),
(6, 6, 9, '500000.00', '5 лет', '2021-11-05', 'Ремонт дома', 1, 1),
(7, 7, 9, '300000.00', '3 года', '2020-11-21', 'Покупка земельного участка', 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `district`
--

CREATE TABLE `district` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `id_region` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `district`
--

INSERT INTO `district` (`id`, `name`, `id_region`) VALUES
(1, 'Беловский район', 1),
(2, 'Большесолдатский район', 1),
(3, 'Глушковский район', 1),
(4, 'Горшеченский район', 1),
(5, 'Дмитриевский район', 1),
(6, 'Железногорский район', 1),
(7, 'Золотухинский район', 1),
(8, 'Касторенский район', 1),
(9, 'Конышёвский район', 1),
(10, 'Кореневский район', 1),
(11, 'Курский район', 1),
(12, 'Курчатовский район', 1),
(13, 'Льговский район', 1),
(14, 'Мантуровский район', 1),
(15, 'Медвенский район', 1),
(16, 'Обоянский район', 1),
(17, 'Октябрьский район', 1),
(18, 'Поныровский район', 1),
(19, 'Пристенский район', 1),
(20, 'Рыльский район', 1),
(21, 'Советский район', 1),
(22, 'Солнцевский район', 1),
(23, 'Суджанский район', 1),
(24, 'Тимский район', 1),
(25, 'Фатежский район', 1),
(26, 'Хомутовский район', 1),
(27, 'Черемисиновский район', 1),
(28, 'Щигровский район', 1),
(29, 'Алексеевский район', 2),
(30, 'Белгородский район', 2),
(31, 'Борисовский район', 2),
(32, 'Валуйский район', 2),
(33, 'Вейделевский район', 2),
(34, 'Волоконовский район', 2),
(35, 'Грайворонский район', 2),
(36, 'Губкинский район', 2),
(37, 'Ивнянский район', 2),
(38, 'Корочанский район', 2),
(39, 'Красненский район', 2),
(40, 'Красногвардейский район', 2),
(41, 'Краснояружский район', 2),
(42, 'Новооскольский район', 2),
(43, 'Прохоровский район', 2),
(44, 'Ракитянский район', 2),
(45, 'Ровеньский район', 2),
(46, 'Старооскольский район', 2),
(47, 'Чернянский район', 2),
(48, 'Шебекинский район', 2),
(49, 'Яковлевский район', 2),
(50, 'Болховский район', 3),
(51, 'Верховский район', 3),
(52, 'Глазуновский район', 3),
(53, 'Дмитровский район', 3),
(54, 'Должанский район', 3),
(55, 'Залегощенский район', 3),
(56, 'Знаменский район', 3),
(57, 'Колпнянский район', 3),
(58, 'Корсаковский район', 3),
(59, 'Краснозоренский район', 3),
(60, 'Кромской район', 3),
(61, 'Ливенский район', 3),
(62, 'Малоархангельский район', 3),
(63, 'Мценский район', 3),
(64, 'Новодеревеньковский район', 3),
(65, 'Новосильский район', 3),
(66, 'Орловский район', 3),
(67, 'Покровский район', 3),
(68, 'Свердловский район', 3),
(69, 'Сосковский район', 3),
(70, 'Троснянский район', 3),
(71, 'Урицкий район', 3),
(72, 'Хотынецкий район', 3),
(73, 'Шаблыкинский район', 3),
(74, 'Алексинский район', 4),
(75, 'Арсеньевский район', 4),
(76, 'Белёвский район', 4),
(77, 'Богородицкий район', 4),
(78, 'Венёвский район', 4),
(79, 'Воловский район', 4),
(80, 'Дубенский район', 4),
(81, 'Ефремовский район', 4),
(82, 'Заокский район', 4),
(83, 'Каменский район', 4),
(84, 'Кимовский район', 4),
(85, 'Киреевский район', 4),
(86, 'Куркинский район', 4),
(87, 'Ленинский район', 4),
(88, 'Одоевский район', 4),
(89, 'Плавский район', 4),
(90, 'Суворовский район', 4),
(91, 'Тёпло-Огарёвский район', 4),
(92, 'Узловский район', 4),
(93, 'Чернский район', 4),
(94, 'Щёкинский район', 4),
(95, 'Ясногорский район', 4),
(96, 'Аннинский район', 5),
(97, 'Бобровский район', 5),
(98, 'Богучарский район', 5),
(99, 'Бутурлиновский район', 5),
(100, 'Верхнемамонский район', 5),
(101, 'Верхнехавский район', 5),
(102, 'Воробьёвский район', 5),
(103, 'Грибановский район', 5),
(104, 'Калачеевский район', 5),
(105, 'Каменский район', 5),
(106, 'Кантемировский район  ', 5),
(107, 'Каширский район', 5),
(108, 'Лискинский район', 5),
(109, 'Нижнедевицкий район', 5),
(110, 'Новоусманский район', 5),
(111, 'Новохопёрский район', 5),
(112, 'Ольховатский район', 5),
(113, 'Острогожский район', 5),
(114, 'Павловский район', 5),
(115, 'Панинский район', 5),
(116, 'Петропавловский район ', 5),
(117, 'Поворинский район', 5),
(118, 'Подгоренский район', 5),
(119, 'Рамонский район', 5),
(120, 'Репьёвский район', 5),
(121, 'Россошанский район', 5),
(122, 'Семилукский район', 5),
(123, 'Таловский район', 5),
(124, 'Терновский район', 5),
(125, 'Хохольский район', 5),
(126, 'Эртильский район', 5);

-- --------------------------------------------------------

--
-- Структура таблицы `education`
--

CREATE TABLE `education` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `education`
--

INSERT INTO `education` (`id`, `name`) VALUES
(1, 'Начальне/среднее'),
(2, 'Неполное высшее'),
(3, 'Высшее'),
(4, 'Второе высшее'),
(5, 'Ученая степень');

-- --------------------------------------------------------

--
-- Структура таблицы `family_status`
--

CREATE TABLE `family_status` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `family_status`
--

INSERT INTO `family_status` (`id`, `name`) VALUES
(1, 'Холост/Не замужем'),
(2, 'Разведен(а)'),
(3, 'Гражданский брак'),
(4, 'Женат/Замужем'),
(5, 'Вдовец/Вдова');

-- --------------------------------------------------------

--
-- Структура таблицы `job_type`
--

CREATE TABLE `job_type` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `job_type`
--

INSERT INTO `job_type` (`id`, `name`) VALUES
(1, 'Генеральный директор'),
(2, 'Руководитель'),
(3, 'Специалист'),
(4, 'Обслуживающий персонал'),
(5, 'Рабочий'),
(6, 'Служащий');

-- --------------------------------------------------------

--
-- Структура таблицы `locality`
--

CREATE TABLE `locality` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `id_district` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `locality`
--

INSERT INTO `locality` (`id`, `name`, `id_district`) VALUES
(1, 'Белая', 1),
(2, 'Бобрава', 1),
(3, 'Белица', 1),
(4, 'Вишнево', 1),
(5, 'Гирьи', 1),
(6, 'Долгие бды', 1),
(7, 'Илек', 1),
(8, 'Коммунар', 1),
(9, 'Кондратовка', 1),
(10, 'Корочка', 1),
(11, 'Малое слдатское', 1),
(12, 'Пены', 1),
(13, 'Песчаное', 1),
(14, 'Щеголек', 1),
(15, 'Волоконовка', 1),
(16, 'Любимовка', 1),
(17, 'Сторожевский', 1),
(18, 'Саморядово', 1),
(19, 'Большесолдатское', 2),
(20, 'Любивмовка', 2),
(21, 'Сторожевое', 2);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `provided_in_credit`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `provided_in_credit` (
`bilding` char(10)
,`citizenship` varchar(100)
,`credit_amounth` decimal(10,2)
,`credit_term` char(10)
,`date_of_birth` date
,`date_of_offer` date
,`division_code` char(7)
,`experience` int
,`firstname` varchar(255)
,`flat` int
,`gender` char(1)
,`home` char(10)
,`id_client` int unsigned
,`id_district` int unsigned
,`id_education` int unsigned
,`id_family_status` int unsigned
,`id_job_type` int unsigned
,`id_locality` int unsigned
,`id_region` int unsigned
,`id_strit` int unsigned
,`id_type_of_employment` int unsigned
,`income` decimal(10,2) unsigned
,`INN` bigint
,`inter_passport` tinyint unsigned
,`intrest_rate` int unsigned
,`job_title` varchar(255)
,`korp` char(10)
,`lastname` varchar(255)
,`loan_decision` tinyint unsigned
,`offer_active` tinyint unsigned
,`passport_go` varchar(255)
,`passport_go_date` date
,`passport_ID` int
,`passport_series` int
,`patronymic` varchar(255)
,`place_of_birth` varchar(255)
,`place_of_work` varchar(255)
,`SNILS` int
,`target` varchar(225)
,`tel` bigint
,`tel_alt` bigint
,`work_tel` bigint
);

-- --------------------------------------------------------

--
-- Структура таблицы `regions`
--

CREATE TABLE `regions` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `regions`
--

INSERT INTO `regions` (`id`, `name`) VALUES
(1, 'Курская область'),
(2, 'Белгородская область'),
(3, 'Орловская область'),
(4, 'Тульская область'),
(5, 'Воронежская область');

-- --------------------------------------------------------

--
-- Структура таблицы `strit`
--

CREATE TABLE `strit` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `id_locality` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `strit`
--

INSERT INTO `strit` (`id`, `name`, `id_locality`) VALUES
(1, 'Ленина', 1),
(2, 'Садовая', 1),
(3, 'Комсомольская', 1),
(4, 'Пролитарская', 1),
(5, 'Крестьянская', 1),
(6, 'Кожевенная', 1),
(7, 'Базарная', 1),
(8, 'Лазурная', 1),
(9, 'Московитская', 2),
(10, 'Пригорная', 2),
(11, 'Меловая', 2),
(12, 'Юрская', 2),
(13, 'Андреевская', 2),
(14, 'Солдатская', 2),
(15, 'Покровская', 3),
(16, 'Мазайская', 3),
(17, 'Кученок', 3),
(18, 'Красного знамени', 3),
(19, 'Базарная', 12),
(20, 'Городок', 12),
(21, 'Гора', 12),
(22, 'Песочек', 12),
(23, 'Зайчек', 12),
(24, 'Кирова', 12),
(25, 'Выгон', 12),
(26, 'Базарная', 12),
(27, 'Соколова', 12),
(28, 'Загребля', 12);

-- --------------------------------------------------------

--
-- Структура таблицы `type_of_employment`
--

CREATE TABLE `type_of_employment` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `type_of_employment`
--

INSERT INTO `type_of_employment` (`id`, `name`) VALUES
(1, 'Работаю по найму'),
(2, 'Работаю на себя'),
(3, 'Не работаю');

-- --------------------------------------------------------

--
-- Структура таблицы `work_book`
--

CREATE TABLE `work_book` (
  `id` int UNSIGNED NOT NULL,
  `organisation` varchar(255) DEFAULT NULL,
  `org_address` varchar(255) DEFAULT NULL,
  `position_w` varchar(255) DEFAULT NULL,
  `start_work` date DEFAULT NULL,
  `finish_work` date DEFAULT NULL,
  `id_client` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `work_book`
--

INSERT INTO `work_book` (`id`, `organisation`, `org_address`, `position_w`, `start_work`, `finish_work`, `id_client`) VALUES
(1, 'Беловский молочны завод', 'Курская обл. Беловский р-он, сл. Белая, ул. Заводская', 'Шофер-механник', '1999-12-05', '2008-12-25', 1),
(2, 'Журавушка', 'Курская обл. Беловский р-он, сл. Белая, ул. Ленина 23', 'Механик', '2003-02-18', NULL, 1),
(3, 'Совхоз им. Гагарина', 'Курская обл, Беловский р-он, сл. Белая, ул. Пшеничная 2', 'Тракторист', '2000-10-05', '2011-03-25', 2),
(4, 'ООО Гарант', 'Курская обл., Беловский р-он, п. Гирьи, ул. Степная 10', 'Механизатор', '2011-04-05', NULL, 2),
(5, 'Совхоз им. Гагарина', 'Курская обл., п. Гирьи, ул. Степная 10', 'Ветеринар', '2000-10-25', '2006-06-07', 3),
(6, 'Беловское ветеринарное управление', 'Курская обл. Беловский р-он, сл. Белая, ул. Козлова 10', 'Ветеринар', '2006-06-08', '2010-12-28', 3),
(7, 'ООО Гарант', 'Курская обл., п. Гирьи, ул. Степная 10', 'Ветеринар', '2011-01-28', NULL, 3),
(8, 'Беловская средняя школа', 'Курская обл, Беловский р-он, сл. Белая, ул. Школьная 6', 'Учитель', '2000-08-25', '2011-07-19', 4),
(9, 'Администраця Беловского района', 'Курская обл. Беловский р-он, сл. Белая, ул. Красная 1', 'Главный специалист', '2011-08-19', NULL, 4),
(10, 'Беловская ЦРБ', 'Курская обл. Беловский р-он, сл. Белая, ул. им. Д.Айболита', 'Главный экономист', '1998-07-08', '2011-11-01', 5),
(11, 'ООО РосАгро', 'Курская обл. Беловский р-он, сл. Белая, ул. Полевая 7', 'Экономист', '2011-11-05', NULL, 5),
(12, 'Беловская ЦРБ', 'Курская обл. Беловский р-он, сл. Белая, ул. им. Д.Айболита', 'Бухгалтер', '2010-07-01', '2011-04-25', 6),
(13, 'Администраця Беловского района', 'Курская обл. Беловский р-он, сл. Белая, ул. Красная 1', 'Бухгалтер', '2011-05-03', NULL, 6),
(14, 'ИП. Шапошников', 'Курская обл. Беловский р-он, сл. Белая, ул. Базарная 4', 'Продавец', '1999-08-18', '2010-12-28', 7),
(15, 'ООО РосАгро', 'Курская обл. Беловский р-он, сл. Белая, ул. Полевая 7', 'Продавец', '2011-02-26', NULL, 7);

-- --------------------------------------------------------

--
-- Структура для представления `provided_in_credit`
--
DROP TABLE IF EXISTS `provided_in_credit`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`127.0.0.1` SQL SECURITY DEFINER VIEW `provided_in_credit`  AS SELECT `credit`.`id_client` AS `id_client`, `credit`.`intrest_rate` AS `intrest_rate`, `credit`.`credit_amounth` AS `credit_amounth`, `credit`.`credit_term` AS `credit_term`, `credit`.`date_of_offer` AS `date_of_offer`, `credit`.`target` AS `target`, `credit`.`offer_active` AS `offer_active`, `credit`.`loan_decision` AS `loan_decision`, `client`.`firstname` AS `firstname`, `client`.`patronymic` AS `patronymic`, `client`.`lastname` AS `lastname`, `client`.`gender` AS `gender`, `client`.`tel` AS `tel`, `client`.`tel_alt` AS `tel_alt`, `client`.`SNILS` AS `SNILS`, `client`.`INN` AS `INN`, `client`.`citizenship` AS `citizenship`, `client`.`passport_ID` AS `passport_ID`, `client`.`passport_series` AS `passport_series`, `client`.`date_of_birth` AS `date_of_birth`, `client`.`place_of_birth` AS `place_of_birth`, `client`.`passport_go` AS `passport_go`, `client`.`passport_go_date` AS `passport_go_date`, `client`.`division_code` AS `division_code`, `client`.`id_region` AS `id_region`, `client`.`id_district` AS `id_district`, `client`.`id_locality` AS `id_locality`, `client`.`id_strit` AS `id_strit`, `client`.`home` AS `home`, `client`.`korp` AS `korp`, `client`.`bilding` AS `bilding`, `client`.`flat` AS `flat`, `client`.`place_of_work` AS `place_of_work`, `client`.`id_type_of_employment` AS `id_type_of_employment`, `client`.`work_tel` AS `work_tel`, `client`.`job_title` AS `job_title`, `client`.`id_job_type` AS `id_job_type`, `client`.`experience` AS `experience`, `client`.`income` AS `income`, `client`.`id_education` AS `id_education`, `client`.`id_family_status` AS `id_family_status`, `client`.`inter_passport` AS `inter_passport` FROM (`credit` join `client` on((`credit`.`id_client` = `client`.`id`))) WHERE (((`credit`.`loan_decision` = 0) AND (`client`.`lastname` = 'Иванов')) OR ((`client`.`lastname` = 'Петров') AND (`credit`.`date_of_offer` between '2019-01-01' and '2020-12-31'))) ;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `2ndfl`
--
ALTER TABLE `2ndfl`
  ADD PRIMARY KEY (`id`),
  ADD KEY `taxplayer` (`taxplayer`);

--
-- Индексы таблицы `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_region` (`id_region`),
  ADD KEY `id_district` (`id_district`),
  ADD KEY `id_locality` (`id_locality`),
  ADD KEY `id_strit` (`id_strit`),
  ADD KEY `id_type_of_employment` (`id_type_of_employment`),
  ADD KEY `id_job_type` (`id_job_type`),
  ADD KEY `id_education` (`id_education`),
  ADD KEY `id_family_status` (`id_family_status`);

--
-- Индексы таблицы `credit`
--
ALTER TABLE `credit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_client` (`id_client`);

--
-- Индексы таблицы `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_region` (`id_region`);

--
-- Индексы таблицы `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `family_status`
--
ALTER TABLE `family_status`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `job_type`
--
ALTER TABLE `job_type`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `locality`
--
ALTER TABLE `locality`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_district` (`id_district`);

--
-- Индексы таблицы `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `strit`
--
ALTER TABLE `strit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_locality` (`id_locality`);

--
-- Индексы таблицы `type_of_employment`
--
ALTER TABLE `type_of_employment`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `work_book`
--
ALTER TABLE `work_book`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_client` (`id_client`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `2ndfl`
--
ALTER TABLE `2ndfl`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `client`
--
ALTER TABLE `client`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT для таблицы `credit`
--
ALTER TABLE `credit`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `district`
--
ALTER TABLE `district`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT для таблицы `education`
--
ALTER TABLE `education`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `family_status`
--
ALTER TABLE `family_status`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `job_type`
--
ALTER TABLE `job_type`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `locality`
--
ALTER TABLE `locality`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `regions`
--
ALTER TABLE `regions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `strit`
--
ALTER TABLE `strit`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT для таблицы `type_of_employment`
--
ALTER TABLE `type_of_employment`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `work_book`
--
ALTER TABLE `work_book`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `2ndfl`
--
ALTER TABLE `2ndfl`
  ADD CONSTRAINT `2ndfl_ibfk_1` FOREIGN KEY (`taxplayer`) REFERENCES `client` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `client`
--
ALTER TABLE `client`
  ADD CONSTRAINT `client_ibfk_1` FOREIGN KEY (`id_region`) REFERENCES `regions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `client_ibfk_2` FOREIGN KEY (`id_district`) REFERENCES `district` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `client_ibfk_3` FOREIGN KEY (`id_locality`) REFERENCES `locality` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `client_ibfk_4` FOREIGN KEY (`id_strit`) REFERENCES `strit` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `client_ibfk_5` FOREIGN KEY (`id_type_of_employment`) REFERENCES `type_of_employment` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `client_ibfk_6` FOREIGN KEY (`id_job_type`) REFERENCES `job_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `client_ibfk_7` FOREIGN KEY (`id_education`) REFERENCES `education` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `client_ibfk_8` FOREIGN KEY (`id_family_status`) REFERENCES `family_status` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `credit`
--
ALTER TABLE `credit`
  ADD CONSTRAINT `credit_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `client` (`id`);

--
-- Ограничения внешнего ключа таблицы `district`
--
ALTER TABLE `district`
  ADD CONSTRAINT `district_ibfk_1` FOREIGN KEY (`id_region`) REFERENCES `regions` (`id`);

--
-- Ограничения внешнего ключа таблицы `locality`
--
ALTER TABLE `locality`
  ADD CONSTRAINT `locality_ibfk_1` FOREIGN KEY (`id_district`) REFERENCES `district` (`id`);

--
-- Ограничения внешнего ключа таблицы `strit`
--
ALTER TABLE `strit`
  ADD CONSTRAINT `strit_ibfk_1` FOREIGN KEY (`id_locality`) REFERENCES `locality` (`id`);

--
-- Ограничения внешнего ключа таблицы `work_book`
--
ALTER TABLE `work_book`
  ADD CONSTRAINT `work_book_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `client` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
