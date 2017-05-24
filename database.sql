-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 24, 2017 at 02:17 PM
-- Server version: 5.7.18-0ubuntu0.16.04.1
-- PHP Version: 7.0.15-0ubuntu0.16.04.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xendit_wp_wc_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `xen_commentmeta`
--

DROP TABLE IF EXISTS `xen_commentmeta`;
CREATE TABLE `xen_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `xen_commentmeta`
--

INSERT INTO `xen_commentmeta` (`meta_id`, `comment_id`, `meta_key`, `meta_value`) VALUES
(1, 49, 'akismet_error', '1370606225'),
(2, 49, 'akismet_history', 'a:4:{s:4:"time";d:1370606225.6765859127044677734375;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(3, 49, 'akismet_as_submitted', ''),
(4, 49, 'rating', '4'),
(5, 49, 'akismet_history', 'a:4:{s:4:"time";d:1370607940.89634990692138671875;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(6, 50, 'akismet_error', '1370606029'),
(7, 50, 'akismet_history', 'a:4:{s:4:"time";d:1370606029.1820490360260009765625;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(8, 50, 'akismet_as_submitted', ''),
(9, 50, 'rating', '4'),
(10, 50, 'akismet_history', 'a:4:{s:4:"time";d:1370607930.6214559078216552734375;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(11, 51, 'akismet_error', '1370606265'),
(12, 51, 'akismet_history', 'a:4:{s:4:"time";d:1370606265.92131900787353515625;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(13, 51, 'akismet_as_submitted', ''),
(14, 51, 'rating', '5'),
(15, 51, 'akismet_history', 'a:4:{s:4:"time";d:1370607942.4681990146636962890625;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(230, 66, 'verified', '0'),
(231, 67, 'verified', '0'),
(232, 61, 'verified', '0'),
(233, 62, 'verified', '0'),
(229, 84, 'verified', '0'),
(224, 75, 'verified', '0'),
(225, 82, 'verified', '0'),
(226, 85, 'verified', '0'),
(227, 86, 'verified', '0'),
(228, 49, 'verified', '0'),
(223, 74, 'verified', '0'),
(222, 55, 'verified', '0'),
(218, 81, 'verified', '0'),
(219, 63, 'verified', '0'),
(220, 64, 'verified', '0'),
(221, 65, 'verified', '0'),
(217, 80, 'verified', '0'),
(212, 57, 'verified', '0'),
(213, 73, 'verified', '0'),
(214, 50, 'verified', '0'),
(215, 51, 'verified', '0'),
(216, 83, 'verified', '0'),
(211, 56, 'verified', '0'),
(210, 72, 'verified', '0'),
(206, 68, 'verified', '0'),
(207, 69, 'verified', '0'),
(208, 70, 'verified', '0'),
(209, 71, 'verified', '0'),
(31, 55, 'akismet_error', '1370606072'),
(32, 55, 'akismet_history', 'a:4:{s:4:"time";d:1370606072.7117550373077392578125;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(33, 55, 'akismet_as_submitted', ''),
(34, 55, 'rating', '5'),
(35, 55, 'akismet_history', 'a:4:{s:4:"time";d:1370607931.63070201873779296875;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(36, 56, 'akismet_error', '1370610085'),
(37, 56, 'akismet_history', 'a:4:{s:4:"time";d:1370610085.324596881866455078125;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(38, 56, 'akismet_as_submitted', ''),
(39, 56, 'rating', '5'),
(40, 56, 'akismet_history', 'a:4:{s:4:"time";d:1370611525.10484409332275390625;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(41, 57, 'akismet_error', '1370620193'),
(42, 57, 'akismet_history', 'a:4:{s:4:"time";d:1370620193.9864521026611328125;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(43, 57, 'akismet_as_submitted', ''),
(44, 57, 'rating', '5'),
(45, 57, 'akismet_history', 'a:4:{s:4:"time";d:1370620633.9563140869140625;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(61, 61, 'akismet_error', '1370606279'),
(62, 61, 'akismet_history', 'a:4:{s:4:"time";d:1370606279.836287975311279296875;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(63, 61, 'akismet_as_submitted', ''),
(64, 61, 'rating', '5'),
(65, 61, 'akismet_history', 'a:4:{s:4:"time";d:1370607944.7811119556427001953125;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(66, 62, 'akismet_error', '1370620393'),
(67, 62, 'akismet_history', 'a:4:{s:4:"time";d:1370620393.6741259098052978515625;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(68, 62, 'akismet_as_submitted', ''),
(69, 62, 'rating', '4'),
(70, 62, 'akismet_history', 'a:4:{s:4:"time";d:1370620633.94254302978515625;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(71, 63, 'akismet_error', '1370605612'),
(72, 63, 'akismet_history', 'a:4:{s:4:"time";d:1370605612.873900890350341796875;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(73, 63, 'akismet_as_submitted', ''),
(74, 63, 'rating', '4'),
(75, 63, 'akismet_history', 'a:4:{s:4:"time";d:1370605643.71494293212890625;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(76, 64, 'akismet_error', '1370605993'),
(77, 64, 'akismet_history', 'a:4:{s:4:"time";d:1370605993.45998096466064453125;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(78, 64, 'akismet_as_submitted', ''),
(79, 64, 'rating', '5'),
(80, 64, 'akismet_history', 'a:4:{s:4:"time";d:1370607929.392714977264404296875;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(81, 65, 'akismet_error', '1370606643'),
(82, 65, 'akismet_history', 'a:4:{s:4:"time";d:1370606643.435740947723388671875;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(83, 65, 'akismet_as_submitted', ''),
(84, 65, 'rating', '5'),
(85, 65, 'akismet_history', 'a:4:{s:4:"time";d:1370607947.308474063873291015625;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(86, 66, 'akismet_error', '1370606091'),
(87, 66, 'akismet_history', 'a:4:{s:4:"time";d:1370606091.7579820156097412109375;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(88, 66, 'akismet_as_submitted', ''),
(89, 66, 'rating', '1'),
(90, 66, 'akismet_history', 'a:4:{s:4:"time";d:1370607932.6080811023712158203125;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(91, 67, 'akismet_error', '1370620222'),
(92, 67, 'akismet_history', 'a:4:{s:4:"time";d:1370620222.19242095947265625;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(93, 67, 'akismet_as_submitted', ''),
(94, 67, 'rating', '5'),
(95, 67, 'akismet_history', 'a:4:{s:4:"time";d:1370620633.951541900634765625;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(96, 68, 'akismet_error', '1370607293'),
(97, 68, 'akismet_history', 'a:4:{s:4:"time";d:1370607293.9348719120025634765625;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:7:"student";}'),
(98, 68, 'akismet_as_submitted', ''),
(99, 68, 'rating', '5'),
(100, 68, 'akismet_history', 'a:4:{s:4:"time";d:1370607950.2842080593109130859375;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(101, 69, 'akismet_error', '1370607656'),
(102, 69, 'akismet_history', 'a:4:{s:4:"time";d:1370607656.262073040008544921875;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(103, 69, 'akismet_as_submitted', ''),
(104, 69, 'rating', '5'),
(105, 69, 'akismet_history', 'a:4:{s:4:"time";d:1370607953.4172599315643310546875;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(106, 70, 'akismet_error', '1370608902'),
(107, 70, 'akismet_history', 'a:4:{s:4:"time";d:1370608902.768413066864013671875;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(108, 70, 'akismet_as_submitted', ''),
(109, 70, 'rating', '4'),
(110, 70, 'akismet_history', 'a:4:{s:4:"time";d:1370609037.499927043914794921875;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(111, 71, 'akismet_error', '1370611600'),
(112, 71, 'akismet_history', 'a:4:{s:4:"time";d:1370611600.5786969661712646484375;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(113, 71, 'akismet_as_submitted', ''),
(114, 71, 'rating', '5'),
(115, 71, 'akismet_history', 'a:4:{s:4:"time";d:1370612306.3991410732269287109375;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(116, 72, 'akismet_error', '1370620436'),
(117, 72, 'akismet_history', 'a:4:{s:4:"time";d:1370620436.97305393218994140625;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(118, 72, 'akismet_as_submitted', ''),
(119, 72, 'rating', '1'),
(120, 72, 'akismet_history', 'a:4:{s:4:"time";d:1370620633.932437896728515625;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(121, 73, 'akismet_error', '1370684262'),
(122, 73, 'akismet_history', 'a:4:{s:4:"time";d:1370684262.2404038906097412109375;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(123, 73, 'akismet_as_submitted', ''),
(124, 73, 'rating', '5'),
(125, 74, 'akismet_error', '1370606673'),
(126, 74, 'akismet_history', 'a:4:{s:4:"time";d:1370606673.5934140682220458984375;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(127, 74, 'akismet_as_submitted', ''),
(128, 74, 'rating', '3'),
(129, 74, 'akismet_history', 'a:4:{s:4:"time";d:1370607949.19136905670166015625;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(130, 75, 'akismet_error', '1370620465'),
(131, 75, 'akismet_history', 'a:4:{s:4:"time";d:1370620465.89346790313720703125;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(132, 75, 'akismet_as_submitted', ''),
(133, 75, 'rating', '5'),
(134, 75, 'akismet_history', 'a:4:{s:4:"time";d:1370620633.92792606353759765625;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(135, 76, 'akismet_error', '1370605945'),
(136, 76, 'akismet_history', 'a:4:{s:4:"time";d:1370605945.8927509784698486328125;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(137, 76, 'akismet_as_submitted', ''),
(138, 76, 'rating', '4'),
(139, 76, 'akismet_history', 'a:4:{s:4:"time";d:1370607928.4240779876708984375;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(140, 77, 'akismet_error', '1370606196'),
(141, 77, 'akismet_history', 'a:4:{s:4:"time";d:1370606196.096724987030029296875;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(142, 77, 'akismet_as_submitted', ''),
(143, 77, 'rating', '3'),
(144, 77, 'akismet_history', 'a:4:{s:4:"time";d:1370607938.78227710723876953125;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(145, 78, 'akismet_error', '1370607565'),
(146, 78, 'akismet_history', 'a:4:{s:4:"time";d:1370607565.8578360080718994140625;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(147, 78, 'akismet_as_submitted', ''),
(148, 78, 'rating', '5'),
(149, 78, 'akismet_history', 'a:4:{s:4:"time";d:1370607952.2542870044708251953125;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(150, 79, 'akismet_error', '1370609989'),
(151, 79, 'akismet_history', 'a:4:{s:4:"time";d:1370609989.9351150989532470703125;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(152, 79, 'akismet_as_submitted', ''),
(153, 79, 'rating', '4'),
(154, 79, 'akismet_history', 'a:4:{s:4:"time";d:1370611523.6167409420013427734375;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(155, 80, 'akismet_error', '1370608744'),
(156, 80, 'akismet_history', 'a:4:{s:4:"time";d:1370608744.324286937713623046875;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(157, 80, 'akismet_as_submitted', ''),
(158, 80, 'rating', '3'),
(159, 80, 'akismet_history', 'a:4:{s:4:"time";d:1370609036.19725894927978515625;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(160, 81, 'akismet_error', '1370620529'),
(161, 81, 'akismet_history', 'a:4:{s:4:"time";d:1370620529.737782001495361328125;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(162, 81, 'akismet_as_submitted', ''),
(163, 81, 'rating', '1'),
(164, 81, 'akismet_history', 'a:4:{s:4:"time";d:1370620633.7349870204925537109375;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(165, 82, 'akismet_error', '1370620584'),
(166, 82, 'akismet_history', 'a:4:{s:4:"time";d:1370620584.252111911773681640625;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(167, 82, 'akismet_as_submitted', ''),
(168, 82, 'rating', '4'),
(169, 82, 'akismet_history', 'a:4:{s:4:"time";d:1370620633.352140903472900390625;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(170, 83, 'akismet_error', '1370606192'),
(171, 83, 'akismet_history', 'a:4:{s:4:"time";d:1370606192.68978595733642578125;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(172, 83, 'akismet_as_submitted', ''),
(173, 83, 'rating', '4'),
(174, 83, 'akismet_history', 'a:4:{s:4:"time";d:1370607936.7026889324188232421875;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(175, 84, 'akismet_error', '1370607727'),
(176, 84, 'akismet_history', 'a:4:{s:4:"time";d:1370607727.7151229381561279296875;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(177, 84, 'akismet_as_submitted', ''),
(178, 84, 'rating', '3'),
(179, 84, 'akismet_history', 'a:4:{s:4:"time";d:1370607956.6225149631500244140625;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(180, 85, 'akismet_error', '1370605490'),
(181, 85, 'akismet_history', 'a:4:{s:4:"time";d:1370605490.617733001708984375;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(182, 85, 'akismet_as_submitted', ''),
(183, 85, 'rating', '5'),
(184, 85, 'akismet_history', 'a:4:{s:4:"time";d:1370605642.8089940547943115234375;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(185, 86, 'akismet_error', '1370607690'),
(186, 86, 'akismet_history', 'a:4:{s:4:"time";d:1370607690.593863964080810546875;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(187, 86, 'akismet_as_submitted', ''),
(188, 86, 'rating', '5'),
(189, 86, 'akismet_history', 'a:4:{s:4:"time";d:1370607954.72317409515380859375;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(190, 87, 'akismet_error', '1370606323'),
(191, 87, 'akismet_history', 'a:4:{s:4:"time";d:1370606323.7919909954071044921875;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(192, 87, 'akismet_as_submitted', ''),
(193, 87, 'rating', '4'),
(194, 87, 'akismet_history', 'a:4:{s:4:"time";d:1370607945.93982601165771484375;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(195, 88, 'akismet_error', '1370620368'),
(196, 88, 'akismet_history', 'a:4:{s:4:"time";d:1370620368.7943160533905029296875;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(197, 88, 'akismet_as_submitted', ''),
(198, 88, 'rating', '5'),
(199, 88, 'akismet_history', 'a:4:{s:4:"time";d:1370620633.9469869136810302734375;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(200, 87, 'verified', '0'),
(201, 88, 'verified', '0'),
(202, 76, 'verified', '0'),
(203, 77, 'verified', '0'),
(204, 78, 'verified', '0'),
(205, 79, 'verified', '0');

-- --------------------------------------------------------

--
-- Table structure for table `xen_comments`
--

DROP TABLE IF EXISTS `xen_comments`;
CREATE TABLE `xen_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `xen_comments`
--

INSERT INTO `xen_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(96, 0, 'WooCommerce', 'woocommerce@xendit.projectby.id', '', '', '2017-01-23 13:13:26', '2017-01-23 05:13:26', '', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(97, 0, 'WooCommerce', 'woocommerce@xendit.projectby.id', '', '', '2017-01-23 13:16:51', '2017-01-23 05:16:51', 'Xendit payment successful', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(2, 0, 'WooCommerce', 'woocommerce@xendit.projectby.id', '', '', '2017-01-20 14:46:25', '2017-01-20 14:46:25', 'Xendit payment successful<br/>Unnique Id from Invoice : 579c8d61f23fa4ca35e52da4', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(3, 0, 'WooCommerce', 'woocommerce@xendit.projectby.id', '', '', '2017-01-20 14:46:25', '2017-01-20 14:46:25', '', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(94, 0, 'WooCommerce', 'woocommerce@xendit.projectby.id', '', '', '2017-01-23 13:13:26', '2017-01-23 05:13:26', 'Xendit payment successful', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(95, 0, 'WooCommerce', 'woocommerce@xendit.projectby.id', '', '', '2017-01-23 13:13:26', '2017-01-23 05:13:26', 'Xendit Payment Response:{"invoice_id":"579c8d61f23fa4ca35e52da4","status":"COMPLETED","payment_method":"POOL","paid_amount":54000}', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(43, 0, 'WooCommerce', 'woocommerce@xendit.projectby.id', '', '', '2017-01-22 21:12:23', '2017-01-22 13:12:23', 'Xendit payment successful', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(44, 0, 'WooCommerce', 'woocommerce@xendit.projectby.id', '', '', '2017-01-22 21:12:23', '2017-01-22 13:12:23', 'Xendit Payment Response:{"invoice_id":"579c8d61f23fa4ca35e52da4","status":"COMPLETED","payment_method":"POOL","paid_amount":54000}', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(45, 0, 'WooCommerce', 'woocommerce@xendit.projectby.id', '', '', '2017-01-22 21:12:23', '2017-01-22 13:12:23', '', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(46, 0, 'WooCommerce', 'woocommerce@xendit.projectby.id', '', '', '2017-01-22 21:18:18', '2017-01-22 13:18:18', 'Xendit payment successful', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(47, 0, 'WooCommerce', 'woocommerce@xendit.projectby.id', '', '', '2017-01-22 21:18:18', '2017-01-22 13:18:18', 'Xendit Payment Response:{"invoice_id":"579c8d61f23fa4ca35e52da4","status":"COMPLETED","payment_method":"POOL","paid_amount":54000}', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(10, 0, 'WooCommerce', 'woocommerce@xendit.projectby.id', '', '', '2017-01-21 06:52:55', '2017-01-21 06:52:55', 'Xendit payment successful', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(11, 0, 'WooCommerce', 'woocommerce@xendit.projectby.id', '', '', '2017-01-21 06:52:56', '2017-01-21 06:52:56', 'Xendit Payment Response:{"invoice_id":"579c8d61f23fa4ca35e52da4","status":"COMPLETED","payment_method":"POOL","paid_amount":54000}', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(12, 0, 'WooCommerce', 'woocommerce@xendit.projectby.id', '', '', '2017-01-21 06:52:56', '2017-01-21 06:52:56', '', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(13, 0, 'WooCommerce', 'woocommerce@xendit.projectby.id', '', '', '2017-01-21 06:59:35', '2017-01-21 06:59:35', 'Xendit payment successful', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(14, 0, 'WooCommerce', 'woocommerce@xendit.projectby.id', '', '', '2017-01-21 06:59:35', '2017-01-21 06:59:35', 'Xendit Payment Response:{"invoice_id":"579c8d61f23fa4ca35e52da4","status":"COMPLETED","payment_method":"POOL","paid_amount":54000}', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(15, 0, 'WooCommerce', 'woocommerce@xendit.projectby.id', '', '', '2017-01-21 06:59:35', '2017-01-21 06:59:35', '', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(16, 0, 'WooCommerce', 'woocommerce@xendit.projectby.id', '', '', '2017-01-21 07:01:56', '2017-01-21 07:01:56', 'Xendit payment successful', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(17, 0, 'WooCommerce', 'woocommerce@xendit.projectby.id', '', '', '2017-01-21 07:01:56', '2017-01-21 07:01:56', 'Xendit Payment Response:{"invoice_id":"579c8d61f23fa4ca35e52da4","status":"COMPLETED","payment_method":"POOL","paid_amount":54000}', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(18, 0, 'WooCommerce', 'woocommerce@xendit.projectby.id', '', '', '2017-01-21 07:01:56', '2017-01-21 07:01:56', '', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(48, 0, 'WooCommerce', 'woocommerce@xendit.projectby.id', '', '', '2017-01-22 21:18:18', '2017-01-22 13:18:18', '', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(49, 15, 'Cobus Bester', 'bester.c@gmail.com', '', '196.215.9.147', '2013-06-07 11:57:05', '2013-06-07 11:57:05', 'Simple and effective design. One of my favorites.', 0, '1', '', '', 0, 0),
(50, 19, 'Cobus Bester', 'bester.c@gmail.com', '', '196.215.9.147', '2013-06-07 11:53:49', '2013-06-07 11:53:49', 'Wonderful quality, and an awesome design. WooThemes ftw!', 0, '1', '', '', 0, 0),
(51, 19, 'Andrew', 'andrew@chromeorange.co.uk', '', '86.19.152.140', '2013-06-07 11:57:45', '2013-06-07 11:57:45', 'This t-shirt is awesome! Would recommend to everyone!\n\nI\'m ordering mine next week', 0, '1', '', '', 0, 0),
(164, 153, 'WooCommerce', 'woocommerce@xendit.projectby.id', '', '', '2017-02-14 11:12:37', '2017-02-14 03:12:37', 'Xendit Payment Response:{"invoice_id":"58a275a017a5a34f20a65df7","status":"COMPLETED","payment_method":"POOL","paid_amount":2000000}', 0, 'post-trashed', 'WooCommerce', 'order_note', 0, 0),
(167, 154, 'WooCommerce', 'woocommerce@xendit.projectby.id', '', '', '2017-02-14 11:26:39', '2017-02-14 03:26:39', 'Xendit Payment Response:{"invoice_id":"58a278e817a5a34f20a65df8","status":"COMPLETED","payment_method":"POOL","paid_amount":2000000}', 0, 'post-trashed', 'WooCommerce', 'order_note', 0, 0),
(99, 0, 'WooCommerce', 'woocommerce@xendit.projectby.id', '', '', '2017-01-23 13:16:51', '2017-01-23 05:16:51', '', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(55, 102, 'Cobus Bester', 'bester.c@gmail.com', '', '196.215.9.147', '2013-06-07 11:54:32', '2013-06-07 11:54:32', 'The ninja silhouette is one of my favorite designs. This is a great product.', 0, '1', '', '', 0, 0),
(56, 37, 'Stuart', 'stuart@woothemes.com', '', '82.32.109.140', '2013-06-07 13:01:25', '2013-06-07 13:01:25', 'This will go great with my Hoodie that I ordered a few weeks ago.', 0, '1', '', '', 0, 0),
(57, 37, 'Maria', 'maria@woothemes.com', '', '24.225.103.32', '2013-06-07 15:49:53', '2013-06-07 15:49:53', 'Love this shirt! The ninja near and dear to my heart. &lt;3', 0, '1', '', '', 0, 0),
(121, 0, 'WooCommerce', 'woocommerce@xendit.projectby.id', '', '', '2017-01-23 15:16:17', '2017-01-23 07:16:17', 'Xendit payment successful', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(166, 154, 'WooCommerce', 'woocommerce@xendit.projectby.id', '', '', '2017-02-14 11:26:39', '2017-02-14 03:26:39', 'Xendit payment successful', 0, 'post-trashed', 'WooCommerce', 'order_note', 0, 0),
(165, 153, 'WooCommerce', 'woocommerce@xendit.projectby.id', '', '', '2017-02-14 11:12:37', '2017-02-14 03:12:37', 'Order status changed from Pending Payment to Processing.', 0, 'post-trashed', 'WooCommerce', 'order_note', 0, 0),
(61, 103, 'Cobus Bester', 'bester.c@gmail.com', '', '196.215.9.147', '2013-06-07 11:57:59', '2013-06-07 11:57:59', 'This hoodie is great for those chilly winter days. I love the WooNinja!', 0, '1', '', '', 0, 0),
(62, 103, 'Maria', 'maria@woothemes.com', '', '24.225.103.32', '2013-06-07 15:53:13', '2013-06-07 15:53:13', 'Perfect for the lady Ninja in your life!', 0, '1', '', '', 0, 0),
(63, 104, 'James Koster', 'james@jameskoster.co.uk', '', '86.146.141.82', '2013-06-07 11:46:52', '2013-06-07 11:46:52', 'Perfect when you\'re sat at your computer, waiting for the next batch of Woo Goodies to be released. The Patient Ninja is Patient.', 0, '1', '', '', 0, 0),
(64, 104, 'Cobus Bester', 'bester.c@gmail.com', '', '196.215.9.147', '2013-06-07 11:53:13', '2013-06-07 11:53:13', 'The most comfortable hoodie I have ever owned!', 0, '1', '', '', 0, 0),
(65, 104, 'Magnus', 'magnus@woothemes.com', '', '79.161.106.35', '2013-06-07 12:04:03', '2013-06-07 12:04:03', 'This is my favorite hoodie!\n\nIf only it came in red as well!', 0, '1', '', '', 0, 0),
(66, 105, 'Andrew', 'andrew@chromeorange.co.uk', '', '86.19.152.140', '2013-06-07 11:54:51', '2013-06-07 11:54:51', 'I bought this thinking it was a nice green colour, apparently it GREY! I\'m colour blind so I don\'t care but my girlfriend says grey makes me look fat', 0, '1', '', '', 0, 0),
(67, 105, 'Maria', 'maria@woothemes.com', '', '24.225.103.32', '2013-06-07 15:50:22', '2013-06-07 15:50:22', 'I love grey hoodies! This is perfect with my grey Ninja shirt, when I get cold I throw this on and I can still be a Ninja.', 0, '1', '', '', 0, 0),
(68, 106, 'student', 'student@woothemes.com', '', '196.215.9.147', '2013-06-07 12:14:53', '2013-06-07 12:14:53', 'Perfect Hoodie for a Ninja!', 0, '1', '', '', 0, 0),
(69, 106, 'Coen Jacobs', 'coen@woothemes.com', '', '84.39.28.254', '2013-06-07 12:20:56', '2013-06-07 12:20:56', 'I have lots of hoodies, but none is as cool as this one!', 0, '1', '', '', 0, 0),
(70, 106, 'Dan', 'dan@woothemes.com', '', '188.221.1.167', '2013-06-07 12:41:42', '2013-06-07 12:41:42', 'I love hoodies, and ninjas, so what could be better than a ninja hoodie? Not much, if you ask me!', 0, '1', '', '', 0, 0),
(71, 106, 'Ryan', 'ryan@woothemes.com', '', '99.153.225.252', '2013-06-07 13:26:40', '2013-06-07 13:26:40', 'This is the most bombastic hoodie in this shop, it\'s soft and has the sly WooThemes ninja on it. Why wouldn\'t you buy this?', 0, '1', '', '', 0, 0),
(72, 106, 'Maria', 'maria@woothemes.com', '', '24.225.103.32', '2013-06-07 15:53:56', '2013-06-07 15:53:56', 'This only gets 1 star because I don\'t have this yet. I want it now!', 0, '1', '', '', 0, 0),
(73, 106, 'Gerhard', 'gerhard@woothemes.com', '', '72.251.244.9', '2013-06-08 09:37:42', '2013-06-08 09:37:42', 'The best hoodie ever!', 0, '1', '', '', 0, 0),
(74, 107, 'Magnus', 'magnus@woothemes.com', '', '79.161.106.35', '2013-06-07 12:04:33', '2013-06-07 12:04:33', 'I like the logo but not the color.', 0, '1', '', '', 0, 0),
(75, 107, 'Maria', 'maria@woothemes.com', '', '24.225.103.32', '2013-06-07 15:54:25', '2013-06-07 15:54:25', 'Three letters, one word: WOO!', 0, '1', '', '', 0, 0),
(76, 70, 'Cobus Bester', 'bester.c@gmail.com', '', '196.215.9.147', '2013-06-07 11:52:25', '2013-06-07 11:52:25', 'Really happy with this print. The colors are great, and the paper quality is good too.', 0, '1', '', '', 0, 0),
(77, 70, 'Andrew', 'andrew@chromeorange.co.uk', '', '86.19.152.140', '2013-06-07 11:56:36', '2013-06-07 11:56:36', 'You only get the picture, not the person holding it, something they don\'t mention in the description, now I\'ve got to find my own person', 0, '1', '', '', 0, 0),
(78, 70, 'Coen Jacobs', 'coen@woothemes.com', '', '84.39.28.254', '2013-06-07 12:19:25', '2013-06-07 12:19:25', 'This is my favorite poster. In fact, I\'ve ordered 5 of them!', 0, '1', '', '', 0, 0),
(79, 70, 'Stuart', 'stuart@woothemes.com', '', '82.32.109.140', '2013-06-07 12:59:49', '2013-06-07 12:59:49', 'This is a fantastic quality print and is happily hanging framed on my wall now.', 0, '1', '', '', 0, 0),
(80, 73, 'Dan', 'dan@woothemes.com', '', '188.221.1.167', '2013-06-07 12:39:04', '2013-06-07 12:39:04', 'I thought I was buying a man holding a poster, but when it arrived it was just the poster. Cool poster though, so I\'ll give it 3 stars!', 0, '1', '', '', 0, 0),
(81, 73, 'Maria', 'maria@woothemes.com', '', '24.225.103.32', '2013-06-07 15:55:29', '2013-06-07 15:55:29', 'I didn\'t expect this poster to arrive folded. Now there are lines on the poster and one sad Ninja.', 0, '1', '', '', 0, 0),
(82, 76, 'Maria', 'maria@woothemes.com', '', '24.225.103.32', '2013-06-07 15:56:24', '2013-06-07 15:56:24', 'He really is the cutest little man. Swoooon!', 0, '1', '', '', 0, 0),
(83, 87, 'Cobus Bester', 'bester.c@gmail.com', '', '196.215.9.147', '2013-06-07 11:56:32', '2013-06-07 11:56:32', 'Wonderful collection of WooThemes classics! A must buy for all Woo fans.', 0, '1', '', '', 0, 0),
(84, 90, 'Coen Jacobs', 'coen@woothemes.com', '', '84.39.28.254', '2013-06-07 12:22:07', '2013-06-07 12:22:07', 'This album gets a bit boring after you\'ve listened to it more than once. Worth that first listen though.', 0, '1', '', '', 0, 0),
(85, 96, 'James Koster', 'james@jameskoster.co.uk', '', '86.146.141.82', '2013-06-07 11:44:50', '2013-06-07 11:44:50', 'The most influential album of the last 25 years? This just might be it.', 0, '1', '', '', 0, 0),
(86, 96, 'Coen Jacobs', 'coen@woothemes.com', '', '84.39.28.254', '2013-06-07 12:21:30', '2013-06-07 12:21:30', 'Some rad tunes on this album!', 0, '1', '', '', 0, 0),
(87, 99, 'Cobus Bester', 'bester.c@gmail.com', '', '196.215.9.147', '2013-06-07 11:58:43', '2013-06-07 11:58:43', 'This album proves why The Woo are the best band ever. Best music ever!', 0, '1', '', '', 0, 0),
(88, 99, 'Maria', 'maria@woothemes.com', '', '24.225.103.32', '2013-06-07 15:52:48', '2013-06-07 15:52:48', 'Can’t wait to start mixin’ with this one! Irba-irr-Up-up-up-up-date your theme!', 0, '1', '', '', 0, 0),
(98, 0, 'WooCommerce', 'woocommerce@xendit.projectby.id', '', '', '2017-01-23 13:16:51', '2017-01-23 05:16:51', 'Xendit Payment Response:{"invoice_id":"579c8d61f23fa4ca35e52da4","status":"COMPLETED","payment_method":"POOL","paid_amount":54000}', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(163, 153, 'WooCommerce', 'woocommerce@xendit.projectby.id', '', '', '2017-02-14 11:12:37', '2017-02-14 03:12:37', 'Xendit payment successful', 0, 'post-trashed', 'WooCommerce', 'order_note', 0, 0),
(162, 152, 'WooCommerce', 'woocommerce@xendit.projectby.id', '', '', '2017-02-14 11:02:21', '2017-02-14 03:02:21', 'Order status changed from Pending Payment to Processing.', 0, 'post-trashed', 'WooCommerce', 'order_note', 0, 0),
(160, 152, 'WooCommerce', 'woocommerce@xendit.projectby.id', '', '', '2017-02-14 11:02:21', '2017-02-14 03:02:21', 'Xendit payment successful', 0, 'post-trashed', 'WooCommerce', 'order_note', 0, 0),
(161, 152, 'WooCommerce', 'woocommerce@xendit.projectby.id', '', '', '2017-02-14 11:02:21', '2017-02-14 03:02:21', 'Xendit Payment Response:{"invoice_id":"58a2733817a5a34f20a65df6","status":"COMPLETED","payment_method":"POOL","paid_amount":2000000}', 0, 'post-trashed', 'WooCommerce', 'order_note', 0, 0),
(106, 0, 'WooCommerce', 'woocommerce@xendit.projectby.id', '', '', '2017-01-23 13:44:28', '2017-01-23 05:44:28', 'Xendit payment successful', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(107, 0, 'WooCommerce', 'woocommerce@xendit.projectby.id', '', '', '2017-01-23 13:44:28', '2017-01-23 05:44:28', 'Xendit Payment Response:{"invoice_id":"579c8d61f23fa4ca35e52da4","status":"COMPLETED","payment_method":"POOL","paid_amount":54000}', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(108, 0, 'WooCommerce', 'woocommerce@xendit.projectby.id', '', '', '2017-01-23 13:44:28', '2017-01-23 05:44:28', '', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(123, 0, 'WooCommerce', 'woocommerce@xendit.projectby.id', '', '', '2017-01-23 15:16:17', '2017-01-23 07:16:17', '', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(169, 155, 'WooCommerce', 'woocommerce@xendit.projectby.id', '', '', '2017-02-14 13:31:09', '2017-02-14 05:31:09', 'Xendit payment successful', 0, 'post-trashed', 'WooCommerce', 'order_note', 0, 0),
(122, 0, 'WooCommerce', 'woocommerce@xendit.projectby.id', '', '', '2017-01-23 15:16:17', '2017-01-23 07:16:17', 'Xendit Payment Response:{"invoice_id":"579c8d61f23fa4ca35e52da4","status":"COMPLETED","payment_method":"POOL","paid_amount":54000}', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(168, 154, 'WooCommerce', 'woocommerce@xendit.projectby.id', '', '', '2017-02-14 11:26:39', '2017-02-14 03:26:39', 'Order status changed from Pending Payment to Processing.', 0, 'post-trashed', 'WooCommerce', 'order_note', 0, 0),
(184, 0, 'WooCommerce', 'woocommerce@xendit.projectby.id', '', '', '2017-02-15 19:01:21', '2017-02-15 11:01:21', 'Xendit Payment Response:{"invoice_id":"58a434da1b6ce2a355f4606f","status":null,"payment_method":null,"paid_amount":null}', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(181, 0, 'WooCommerce', 'woocommerce@xendit.projectby.id', '', '', '2017-02-15 19:01:10', '2017-02-15 11:01:10', 'Xendit payment failed', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(182, 0, 'WooCommerce', 'woocommerce@xendit.projectby.id', '', '', '2017-02-15 19:01:10', '2017-02-15 11:01:10', 'Xendit Payment Response:{"invoice_id":"58a434da1b6ce2a355f4606f","status":null,"payment_method":null,"paid_amount":null}', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(171, 155, 'WooCommerce', 'woocommerce@xendit.projectby.id', '', '', '2017-02-14 13:31:09', '2017-02-14 05:31:09', 'Order status changed from Pending Payment to Processing.', 0, 'post-trashed', 'WooCommerce', 'order_note', 0, 0),
(172, 156, 'WooCommerce', 'woocommerce@xendit.projectby.id', '', '', '2017-02-14 14:46:04', '2017-02-14 06:46:04', 'Xendit payment successful', 0, 'post-trashed', 'WooCommerce', 'order_note', 0, 0),
(173, 156, 'WooCommerce', 'woocommerce@xendit.projectby.id', '', '', '2017-02-14 14:46:04', '2017-02-14 06:46:04', 'Xendit Payment Response:{"invoice_id":"58a2a7a017a5a34f20a65e04","status":"COMPLETED","payment_method":"POOL","paid_amount":2000000}', 0, 'post-trashed', 'WooCommerce', 'order_note', 0, 0),
(174, 156, 'WooCommerce', 'woocommerce@xendit.projectby.id', '', '', '2017-02-14 14:46:05', '2017-02-14 06:46:05', 'Order status changed from Pending Payment to Completed.', 0, 'post-trashed', 'WooCommerce', 'order_note', 0, 0),
(175, 157, 'WooCommerce', 'woocommerce@xendit.projectby.id', '', '', '2017-02-14 14:54:07', '2017-02-14 06:54:07', 'Order cancelled by customer. Order status changed from Pending Payment to Cancelled.', 0, 'post-trashed', 'WooCommerce', 'order_note', 0, 0),
(176, 158, 'WooCommerce', 'woocommerce@xendit.projectby.id', '', '', '2017-02-15 19:00:48', '2017-02-15 11:00:48', 'Unpaid order cancelled - time limit reached. Order status changed from Pending Payment to Cancelled.', 0, 'post-trashed', 'WooCommerce', 'order_note', 0, 0),
(177, 0, 'WooCommerce', 'woocommerce@xendit.projectby.id', '', '', '2017-02-15 19:00:49', '2017-02-15 11:00:49', 'Xendit payment failed', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(178, 0, 'WooCommerce', 'woocommerce@xendit.projectby.id', '', '', '2017-02-15 19:00:49', '2017-02-15 11:00:49', 'Xendit Payment Response:{"invoice_id":"58a434da1b6ce2a355f4606f","status":null,"payment_method":null,"paid_amount":null}', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(179, 0, 'WooCommerce', 'woocommerce@xendit.projectby.id', '', '', '2017-02-15 19:01:00', '2017-02-15 11:01:00', 'Xendit payment failed', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(180, 0, 'WooCommerce', 'woocommerce@xendit.projectby.id', '', '', '2017-02-15 19:01:00', '2017-02-15 11:01:00', 'Xendit Payment Response:{"invoice_id":"58a434da1b6ce2a355f4606f","status":null,"payment_method":null,"paid_amount":null}', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(183, 0, 'WooCommerce', 'woocommerce@xendit.projectby.id', '', '', '2017-02-15 19:01:21', '2017-02-15 11:01:21', 'Xendit payment failed', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(170, 155, 'WooCommerce', 'woocommerce@xendit.projectby.id', '', '', '2017-02-14 13:31:09', '2017-02-14 05:31:09', 'Xendit Payment Response:{"invoice_id":"58a2961417a5a34f20a65e00","status":"COMPLETED","payment_method":"POOL","paid_amount":2000000}', 0, 'post-trashed', 'WooCommerce', 'order_note', 0, 0),
(149, 0, 'WooCommerce', 'woocommerce@xendit.projectby.id', '', '', '2017-02-10 21:21:49', '2017-02-10 13:21:49', 'Xendit payment successful', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(150, 0, 'WooCommerce', 'woocommerce@xendit.projectby.id', '', '', '2017-02-10 21:21:49', '2017-02-10 13:21:49', 'Xendit Payment Response:{"invoice_id":"579c8d61f23fa4ca35e52da4","status":"COMPLETED","payment_method":"POOL","paid_amount":54000}', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(151, 0, 'WooCommerce', 'woocommerce@xendit.projectby.id', '', '', '2017-02-10 22:45:16', '2017-02-10 14:45:16', 'Xendit payment successful', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(152, 0, 'WooCommerce', 'woocommerce@xendit.projectby.id', '', '', '2017-02-10 22:45:16', '2017-02-10 14:45:16', 'Xendit Payment Response:{"invoice_id":"579c8d61f23fa4ca35e52da4","status":"COMPLETED","payment_method":"POOL","paid_amount":54000}', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(153, 0, 'WooCommerce', 'woocommerce@xendit.projectby.id', '', '', '2017-02-10 22:48:04', '2017-02-10 14:48:04', 'Xendit payment successful', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(154, 0, 'WooCommerce', 'woocommerce@xendit.projectby.id', '', '', '2017-02-10 22:48:04', '2017-02-10 14:48:04', 'Xendit Payment Response:{"invoice_id":"579c8d61f23fa4ca35e52da4","status":"COMPLETED","payment_method":"POOL","paid_amount":54000}', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(185, 0, 'WooCommerce', 'woocommerce@xendit.projectby.id', '', '', '2017-02-15 19:01:32', '2017-02-15 11:01:32', 'Xendit payment failed', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(186, 0, 'WooCommerce', 'woocommerce@xendit.projectby.id', '', '', '2017-02-15 19:01:32', '2017-02-15 11:01:32', 'Xendit Payment Response:{"invoice_id":"58a434da1b6ce2a355f4606f","status":null,"payment_method":null,"paid_amount":null}', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(187, 0, 'WooCommerce', 'woocommerce@xendit.projectby.id', '', '', '2017-02-22 22:48:58', '2017-02-22 14:48:58', 'Xendit payment successful', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(188, 0, 'WooCommerce', 'woocommerce@xendit.projectby.id', '', '', '2017-02-22 22:48:58', '2017-02-22 14:48:58', 'Xendit Payment Response:{"invoice_id":"58ada4b717a5a34f20a66201","status":"COMPLETED","payment_method":"UNIQUE","paid_amount":24057}', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(189, 159, 'WooCommerce', 'woocommerce@xendit.projectby.id', '', '', '2017-02-27 12:06:36', '2017-02-27 04:06:36', 'Unpaid order cancelled - time limit reached. Order status changed from Pending Payment to Cancelled.', 0, 'post-trashed', 'WooCommerce', 'order_note', 0, 0),
(190, 161, 'WooCommerce', 'woocommerce@xendit.projectby.id', '', '', '2017-02-27 12:06:36', '2017-02-27 04:06:36', 'Unpaid order cancelled - time limit reached. Order status changed from Pending Payment to Cancelled.', 0, 'post-trashed', 'WooCommerce', 'order_note', 0, 0),
(191, 163, 'WooCommerce', 'woocommerce@xendit.projectby.id', '', '', '2017-03-09 10:07:16', '2017-03-09 02:07:16', 'Order cancelled by customer. Order status changed from Pending Payment to Cancelled.', 0, 'post-trashed', 'WooCommerce', 'order_note', 0, 0),
(192, 164, 'WooCommerce', 'woocommerce@xendit.projectby.id', '', '', '2017-03-09 12:16:17', '2017-03-09 04:16:17', 'Unpaid order cancelled - time limit reached. Order status changed from Pending Payment to Cancelled.', 0, 'post-trashed', 'WooCommerce', 'order_note', 0, 0),
(193, 165, 'WooCommerce', 'woocommerce@xendit.projectby.id', '', '', '2017-03-09 20:31:13', '2017-03-09 12:31:13', 'Unpaid order cancelled - time limit reached. Order status changed from Pending Payment to Cancelled.', 0, 'post-trashed', 'WooCommerce', 'order_note', 0, 0),
(194, 0, 'WooCommerce', 'woocommerce@xendit.projectby.id', '', '', '2017-03-15 19:56:00', '2017-03-15 11:56:00', 'Xendit payment successful', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(195, 0, 'WooCommerce', 'woocommerce@xendit.projectby.id', '', '', '2017-03-15 19:56:00', '2017-03-15 11:56:00', 'Xendit Payment Response:{"invoice_id":"58c92b93336c5d7f5bad5db2","status":"COMPLETED","payment_method":"POOL","paid_amount":12000}', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(196, 167, 'WooCommerce', 'woocommerce@woocommerce.xendit.dev', '', '', '2017-05-04 20:59:45', '2017-05-04 12:59:45', 'Unpaid order cancelled - time limit reached. Order status changed from Pending Payment to Cancelled.', 0, 'post-trashed', 'WooCommerce', 'order_note', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `xen_duplicator_packages`
--

DROP TABLE IF EXISTS `xen_duplicator_packages`;
CREATE TABLE `xen_duplicator_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(250) NOT NULL,
  `hash` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `owner` varchar(60) NOT NULL,
  `package` mediumblob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `xen_duplicator_packages`
--

INSERT INTO `xen_duplicator_packages` (`id`, `name`, `hash`, `status`, `created`, `owner`, `package`) VALUES
(1, '20170428_xenditdevelopment', 'f6cea29e5648bb126650170428143919', 20, '2017-04-28 14:39:24', 'xendit@projectby.id', 0x4f3a31313a224455505f5061636b616765223a32333a7b733a373a2243726561746564223b733a31393a22323031372d30342d32382031343a33393a3139223b733a373a2256657273696f6e223b733a353a22312e322e36223b733a393a2256657273696f6e5750223b733a353a22342e372e34223b733a393a2256657273696f6e4442223b733a363a22352e362e3335223b733a31303a2256657273696f6e504850223b733a363a22352e352e3338223b733a393a2256657273696f6e4f53223b733a353a224c696e7578223b733a323a224944223b693a313b733a343a224e616d65223b733a32363a2232303137303432385f78656e646974646576656c6f706d656e74223b733a343a2248617368223b733a33323a226636636561323965353634386262313236363530313730343238313433393139223b733a383a224e616d6548617368223b733a35393a2232303137303432385f78656e646974646576656c6f706d656e745f6636636561323965353634386262313236363530313730343238313433393139223b733a343a2254797065223b693a303b733a353a224e6f746573223b733a303a22223b733a393a2253746f726550617468223b733a35313a222f686f6d652f6e6f6f7270772f7075626c69635f68746d6c2f78656e6469742f77702f77702d736e617073686f74732f746d70223b733a383a2253746f726555524c223b733a34333a22687474703a2f2f78656e6469742e70726f6a65637462792e69642f77702f77702d736e617073686f74732f223b733a383a225363616e46696c65223b733a36393a2232303137303432385f78656e646974646576656c6f706d656e745f66366365613239653536343862623132363635303137303432383134333931395f7363616e2e6a736f6e223b733a373a2252756e74696d65223b4e3b733a373a2245786553697a65223b4e3b733a373a225a697053697a65223b4e3b733a363a22537461747573223b4e3b733a363a22575055736572223b733a31393a2278656e6469744070726f6a65637462792e6964223b733a373a2241726368697665223b4f3a31313a224455505f41726368697665223a31333a7b733a31303a2246696c74657244697273223b733a303a22223b733a31303a2246696c74657245787473223b733a303a22223b733a31333a2246696c74657244697273416c6c223b613a303a7b7d733a31333a2246696c74657245787473416c6c223b613a303a7b7d733a383a2246696c7465724f6e223b693a303b733a343a2246696c65223b733a37313a2232303137303432385f78656e646974646576656c6f706d656e745f66366365613239653536343862623132363635303137303432383134333931395f617263686976652e7a6970223b733a363a22466f726d6174223b733a333a225a4950223b733a373a225061636b446972223b733a33343a222f686f6d652f6e6f6f7270772f7075626c69635f68746d6c2f78656e6469742f7770223b733a343a2253697a65223b693a303b733a343a2244697273223b613a303a7b7d733a353a2246696c6573223b613a303a7b7d733a31303a2246696c746572496e666f223b4f3a32333a224455505f417263686976655f46696c7465725f496e666f223a363a7b733a343a2244697273223b4f3a33343a224455505f417263686976655f46696c7465725f53636f70655f4469726563746f7279223a343a7b733a373a225761726e696e67223b613a303a7b7d733a31303a22556e7265616461626c65223b613a303a7b7d733a343a22436f7265223b613a303a7b7d733a383a22496e7374616e6365223b613a303a7b7d7d733a353a2246696c6573223b4f3a32393a224455505f417263686976655f46696c7465725f53636f70655f46696c65223a353a7b733a343a2253697a65223b613a303a7b7d733a373a225761726e696e67223b613a303a7b7d733a31303a22556e7265616461626c65223b613a303a7b7d733a343a22436f7265223b613a303a7b7d733a383a22496e7374616e6365223b613a303a7b7d7d733a343a2245787473223b4f3a32393a224455505f417263686976655f46696c7465725f53636f70655f42617365223a323a7b733a343a22436f7265223b613a303a7b7d733a383a22496e7374616e6365223b613a303a7b7d7d733a393a2255446972436f756e74223b693a303b733a31303a225546696c65436f756e74223b693a303b733a393a2255457874436f756e74223b693a303b7d733a31303a22002a005061636b616765223b4f3a31313a224455505f5061636b616765223a32333a7b733a373a2243726561746564223b733a31393a22323031372d30342d32382031343a33393a3139223b733a373a2256657273696f6e223b733a353a22312e322e36223b733a393a2256657273696f6e5750223b733a353a22342e372e34223b733a393a2256657273696f6e4442223b733a363a22352e362e3335223b733a31303a2256657273696f6e504850223b733a363a22352e352e3338223b733a393a2256657273696f6e4f53223b733a353a224c696e7578223b733a323a224944223b4e3b733a343a224e616d65223b733a32363a2232303137303432385f78656e646974646576656c6f706d656e74223b733a343a2248617368223b733a33323a226636636561323965353634386262313236363530313730343238313433393139223b733a383a224e616d6548617368223b733a35393a2232303137303432385f78656e646974646576656c6f706d656e745f6636636561323965353634386262313236363530313730343238313433393139223b733a343a2254797065223b693a303b733a353a224e6f746573223b733a303a22223b733a393a2253746f726550617468223b733a35313a222f686f6d652f6e6f6f7270772f7075626c69635f68746d6c2f78656e6469742f77702f77702d736e617073686f74732f746d70223b733a383a2253746f726555524c223b733a34333a22687474703a2f2f78656e6469742e70726f6a65637462792e69642f77702f77702d736e617073686f74732f223b733a383a225363616e46696c65223b4e3b733a373a2252756e74696d65223b4e3b733a373a2245786553697a65223b4e3b733a373a225a697053697a65223b4e3b733a363a22537461747573223b4e3b733a363a22575055736572223b4e3b733a373a2241726368697665223b723a32323b733a393a22496e7374616c6c6572223b4f3a31333a224455505f496e7374616c6c6572223a31323a7b733a343a2246696c65223b733a37333a2232303137303432385f78656e646974646576656c6f706d656e745f66366365613239653536343862623132363635303137303432383134333931395f696e7374616c6c65722e706870223b733a343a2253697a65223b693a303b733a31303a224f7074734442486f7374223b733a303a22223b733a31303a224f7074734442506f7274223b733a303a22223b733a31303a224f70747344424e616d65223b733a303a22223b733a31303a224f707473444255736572223b733a303a22223b733a31323a224f70747353534c41646d696e223b693a303b733a31323a224f70747353534c4c6f67696e223b693a303b733a31313a224f70747343616368655750223b693a303b733a31333a224f707473436163686550617468223b693a303b733a31303a224f70747355524c4e6577223b733a303a22223b733a31303a22002a005061636b616765223b723a35323b7d733a383a224461746162617365223b4f3a31323a224455505f4461746162617365223a31333a7b733a343a2254797065223b733a353a224d7953514c223b733a343a2253697a65223b4e3b733a343a2246696c65223b733a37323a2232303137303432385f78656e646974646576656c6f706d656e745f66366365613239653536343862623132363635303137303432383134333931395f64617461626173652e73716c223b733a343a2250617468223b4e3b733a31323a2246696c7465725461626c6573223b733a303a22223b733a383a2246696c7465724f6e223b693a303b733a343a224e616d65223b4e3b733a31303a22436f6d70617469626c65223b733a303a22223b733a383a22436f6d6d656e7473223b733a32383a224d7953514c20436f6d6d756e69747920536572766572202847504c29223b733a31303a22002a005061636b616765223b723a313b733a32353a22004455505f446174616261736500646253746f726550617468223b4e3b733a32333a22004455505f446174616261736500454f464d61726b6572223b733a303a22223b733a32363a22004455505f4461746162617365006e6574776f726b466c757368223b623a303b7d7d7d733a393a22496e7374616c6c6572223b723a37343b733a383a224461746162617365223b723a38373b7d);

-- --------------------------------------------------------

--
-- Table structure for table `xen_links`
--

DROP TABLE IF EXISTS `xen_links`;
CREATE TABLE `xen_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xen_options`
--

DROP TABLE IF EXISTS `xen_options`;
CREATE TABLE `xen_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `xen_options`
--

INSERT INTO `xen_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'https://woocommerce.xendit.co', 'yes'),
(2, 'home', 'https://woocommerce.xendit.co', 'yes'),
(3, 'blogname', 'Xendit Development', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'joe@xendit.co', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:155:{s:24:"^wc-auth/v([1]{1})/(.*)?";s:63:"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]";s:22:"^wc-api/v([1-3]{1})/?$";s:51:"index.php?wc-api-version=$matches[1]&wc-api-route=/";s:24:"^wc-api/v([1-3]{1})(.*)?";s:61:"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]";s:7:"shop/?$";s:27:"index.php?post_type=product";s:37:"shop/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:32:"shop/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:24:"shop/page/([0-9]{1,})/?$";s:45:"index.php?post_type=product&paged=$matches[1]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:32:"category/(.+?)/wc-api(/(.*))?/?$";s:54:"index.php?category_name=$matches[1]&wc-api=$matches[3]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:29:"tag/([^/]+)/wc-api(/(.*))?/?$";s:44:"index.php?tag=$matches[1]&wc-api=$matches[3]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:55:"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:50:"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:31:"product-category/(.+?)/embed/?$";s:44:"index.php?product_cat=$matches[1]&embed=true";s:43:"product-category/(.+?)/page/?([0-9]{1,})/?$";s:51:"index.php?product_cat=$matches[1]&paged=$matches[2]";s:25:"product-category/(.+?)/?$";s:33:"index.php?product_cat=$matches[1]";s:52:"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:47:"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:28:"product-tag/([^/]+)/embed/?$";s:44:"index.php?product_tag=$matches[1]&embed=true";s:40:"product-tag/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?product_tag=$matches[1]&paged=$matches[2]";s:22:"product-tag/([^/]+)/?$";s:33:"index.php?product_tag=$matches[1]";s:32:"shop/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:42:"shop/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:62:"shop/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"shop/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"shop/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:38:"shop/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:21:"shop/([^/]+)/embed/?$";s:40:"index.php?product=$matches[1]&embed=true";s:25:"shop/([^/]+)/trackback/?$";s:34:"index.php?product=$matches[1]&tb=1";s:45:"shop/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:40:"shop/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:33:"shop/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&paged=$matches[2]";s:40:"shop/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&cpage=$matches[2]";s:30:"shop/([^/]+)/wc-api(/(.*))?/?$";s:48:"index.php?product=$matches[1]&wc-api=$matches[3]";s:36:"shop/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:47:"shop/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:29:"shop/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?product=$matches[1]&page=$matches[2]";s:21:"shop/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:31:"shop/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:51:"shop/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:46:"shop/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:46:"shop/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:27:"shop/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=4&cpage=$matches[1]";s:17:"wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:26:"comments/wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:29:"search/(.+)/wc-api(/(.*))?/?$";s:42:"index.php?s=$matches[1]&wc-api=$matches[3]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:32:"author/([^/]+)/wc-api(/(.*))?/?$";s:52:"index.php?author_name=$matches[1]&wc-api=$matches[3]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:54:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:41:"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:66:"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:28:"([0-9]{4})/wc-api(/(.*))?/?$";s:45:"index.php?year=$matches[1]&wc-api=$matches[3]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:25:"(.?.+?)/wc-api(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&wc-api=$matches[3]";s:28:"(.?.+?)/order-pay(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&order-pay=$matches[3]";s:33:"(.?.+?)/order-received(/(.*))?/?$";s:57:"index.php?pagename=$matches[1]&order-received=$matches[3]";s:25:"(.?.+?)/orders(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&orders=$matches[3]";s:29:"(.?.+?)/view-order(/(.*))?/?$";s:53:"index.php?pagename=$matches[1]&view-order=$matches[3]";s:28:"(.?.+?)/downloads(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&downloads=$matches[3]";s:31:"(.?.+?)/edit-account(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-account=$matches[3]";s:31:"(.?.+?)/edit-address(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-address=$matches[3]";s:34:"(.?.+?)/payment-methods(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&payment-methods=$matches[3]";s:32:"(.?.+?)/lost-password(/(.*))?/?$";s:56:"index.php?pagename=$matches[1]&lost-password=$matches[3]";s:34:"(.?.+?)/customer-logout(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&customer-logout=$matches[3]";s:37:"(.?.+?)/add-payment-method(/(.*))?/?$";s:61:"index.php?pagename=$matches[1]&add-payment-method=$matches[3]";s:40:"(.?.+?)/delete-payment-method(/(.*))?/?$";s:64:"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]";s:45:"(.?.+?)/set-default-payment-method(/(.*))?/?$";s:69:"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]";s:31:".?.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:25:"([^/]+)/wc-api(/(.*))?/?$";s:45:"index.php?name=$matches[1]&wc-api=$matches[3]";s:31:"[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(2526, '_transient_timeout_woo_st_sales_week', '1495613315', 'no'),
(2527, '_transient_woo_st_sales_week', '', 'no'),
(2528, '_transient_timeout_woo_st_sales_yesterday', '1495613315', 'no'),
(2529, '_transient_woo_st_sales_yesterday', '', 'no'),
(2522, '_transient_timeout_wc_shipping_method_count_0_1485163256', '1498200889', 'no'),
(2523, '_transient_wc_shipping_method_count_0_1485163256', '0', 'no'),
(2530, '_transient_timeout_woo_st_sales_today', '1495613315', 'no'),
(2531, '_transient_woo_st_sales_today', '', 'no'),
(2532, '_transient_timeout_wc_admin_report', '1495696115', 'no'),
(2533, '_transient_wc_admin_report', 'a:1:{s:32:"f8e9e8870bc775cc1ade091c86d3ccec";a:0:{}}', 'no'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:6:{i:0;s:25:"duplicator/duplicator.php";i:1;s:106:"woocommerce-extra-charges-to-payment-gateways/woocommerce-extra-charges-option-to-payment-gateways-std.php";i:2;s:43:"woocommerce-store-toolkit/store-toolkit.php";i:3;s:27:"woocommerce/woocommerce.php";i:4;s:41:"wordpress-importer/wordpress-importer.php";i:5;s:57:"xendit-woocommerce-gateway/xendit-woocommerce-gateway.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:59:"/var/www/woocommerce.xendit.co/wp-content/plugins/hello.php";i:1;s:97:"/var/www/woocommerce.xendit.co/wp-content/plugins/xendit-woocommerce-gateway/assets/xendit.app.js";i:2;s:107:"/var/www/woocommerce.xendit.co/wp-content/plugins/xendit-woocommerce-gateway/xendit-woocommerce-gateway.php";i:3;s:95:"/var/www/woocommerce.xendit.co/wp-content/plugins/xendit-woocommerce-gateway/xendit-charges.php";i:4;s:84:"/var/www/woocommerce.xendit.co/wp-content/plugins/xendit-woocommerce-gateway/log.txt";}', 'no'),
(40, 'template', 'clean-commerce', 'yes'),
(41, 'stylesheet', 'clean-commerce', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Asia/Makassar', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '4', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'xen_user_roles', 'a:7:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:131:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:8:"customer";a:2:{s:4:"name";s:8:"Customer";s:12:"capabilities";a:1:{s:4:"read";b:1;}}s:12:"shop_manager";a:2:{s:4:"name";s:12:"Shop Manager";s:12:"capabilities";a:110:{s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:4:"read";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:10:"edit_users";b:1;s:10:"edit_posts";b:1;s:10:"edit_pages";b:1;s:20:"edit_published_posts";b:1;s:20:"edit_published_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:17:"edit_others_posts";b:1;s:17:"edit_others_pages";b:1;s:13:"publish_posts";b:1;s:13:"publish_pages";b:1;s:12:"delete_posts";b:1;s:12:"delete_pages";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:19:"delete_others_posts";b:1;s:19:"delete_others_pages";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:17:"moderate_comments";b:1;s:15:"unfiltered_html";b:1;s:12:"upload_files";b:1;s:6:"export";b:1;s:6:"import";b:1;s:10:"list_users";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:7:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:5:{i:0;s:28:"woocommerce_product_search-2";i:1;s:25:"woocommerce_widget_cart-2";i:2;s:26:"woocommerce_price_filter-2";i:3;s:32:"woocommerce_product_categories-2";i:4;s:38:"woocommerce_recently_viewed_products-2";}s:8:"footer-1";a:0:{}s:8:"footer-2";a:0:{}s:8:"footer-3";a:0:{}s:8:"footer-4";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'cron', 'a:9:{i:1495612449;a:1:{s:32:"woocommerce_cancel_unpaid_orders";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1495634851;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1495634976;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1495635262;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1495641600;a:1:{s:27:"woocommerce_scheduled_sales";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1495652049;a:1:{s:28:"woocommerce_cleanup_sessions";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1495695249;a:1:{s:30:"woocommerce_tracker_send_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1496707200;a:1:{s:25:"woocommerce_geoip_updater";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:7:"monthly";s:4:"args";a:0:{}s:8:"interval";i:2635200;}}}s:7:"version";i:2;}', 'yes'),
(105, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1484921488;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(118, 'can_compress_scripts', '0', 'no'),
(160, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(161, 'woocommerce_calc_taxes', 'no', 'yes'),
(162, 'woocommerce_demo_store', 'no', 'yes'),
(163, 'woocommerce_demo_store_notice', 'This is a demo store for testing purposes &mdash; no orders shall be fulfilled.', 'no'),
(164, 'woocommerce_currency', 'IDR', 'yes'),
(165, 'woocommerce_currency_pos', 'left_space', 'yes'),
(166, 'woocommerce_price_thousand_sep', ',', 'yes'),
(167, 'woocommerce_price_decimal_sep', '.', 'yes'),
(168, 'woocommerce_price_num_decimals', '2', 'yes'),
(169, 'woocommerce_weight_unit', 'kg', 'yes'),
(505, 'category_children', 'a:0:{}', 'yes'),
(141, 'current_theme', 'Clean Commerce', 'yes'),
(1120, '_site_transient_timeout_browser_4aae293127d148bbe99fa13d81ceb9a0', '1487336858', 'no'),
(1121, '_site_transient_browser_4aae293127d148bbe99fa13d81ceb9a0', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"55.0.2883.87";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(2475, '_transient_timeout_feed_07f9ff8c98c9208e4fb710a00972ecab', '1495641760', 'no');
INSERT INTO `xen_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(2476, '_transient_feed_07f9ff8c98c9208e4fb710a00972ecab', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n\n\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:49:"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:27:"WooCommerce – Visser Labs";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:25:"https://www.visser.com.au";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:52:"WordPress Plugin development, e-commerce consultant.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:13:"lastBuildDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 24 May 2017 03:59:39 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"en-US";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:10:{i:0;a:6:{s:4:"data";s:63:"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n		\n		\n		\n		\n		\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:61:"[Plugin update] Product Importer Deluxe 2.0.4 for WooCommerce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:91:"https://www.visser.com.au/blog/plugin-update-product-importer-deluxe-2-0-4-for-woocommerce/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:99:"https://www.visser.com.au/blog/plugin-update-product-importer-deluxe-2-0-4-for-woocommerce/#respond";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 24 May 2017 03:54:19 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:10:{i:0;a:5:{s:4:"data";s:23:"Product Importer Deluxe";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:11:"Visser Labs";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:15:"Web Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:11:"WooCommerce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:4;a:5:{s:4:"data";s:9:"WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:5;a:5:{s:4:"data";s:21:"Bulk Product Importer";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:6;a:5:{s:4:"data";s:3:"CSV";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:7;a:5:{s:4:"data";s:10:"e-Commerce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:8;a:5:{s:4:"data";s:13:"Plugin update";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:9;a:5:{s:4:"data";s:16:"WordPress Plugin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://www.visser.com.au/?p=46634";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:403:"Hi WooCommerce store owners, the 2.0.4 Plugin update is a minor Plugin release adding Product import support for Bookings, Show Single Variations, Tab Manager, Wholesale Prices and a new duplicate image control method affecting the WordPress Media library. Here&#8217;s the full changelog: Fixed Fixed: Negative Quantity values not triggering Stock Status change (thanks Tomas) Fixed: Default [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Michael Visser";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:96:"https://www.visser.com.au/blog/plugin-update-product-importer-deluxe-2-0-4-for-woocommerce/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:5:"46634";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:75:"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:59:"[Plugin update] Store Exporter Deluxe 2.3.4 for WooCommerce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:89:"https://www.visser.com.au/blog/plugin-update-store-exporter-deluxe-2-3-4-for-woocommerce/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:97:"https://www.visser.com.au/blog/plugin-update-store-exporter-deluxe-2-3-4-for-woocommerce/#respond";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 23 May 2017 23:16:42 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:14:{i:0;a:5:{s:4:"data";s:21:"Store Exporter Deluxe";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:11:"Visser Labs";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:15:"Web Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:11:"WooCommerce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:4;a:5:{s:4:"data";s:9:"WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:5;a:5:{s:4:"data";s:3:"CSV";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:6;a:5:{s:4:"data";s:10:"e-Commerce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:7;a:5:{s:4:"data";s:6:"export";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:8;a:5:{s:4:"data";s:13:"Plugin update";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:9;a:5:{s:4:"data";s:14:"Plugin updates";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:10;a:5:{s:4:"data";s:16:"WordPress Plugin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:11;a:5:{s:4:"data";s:3:"XLS";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:12;a:5:{s:4:"data";s:4:"XLSX";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:13;a:5:{s:4:"data";s:3:"XML";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://www.visser.com.au/?p=46631";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:406:"Hi WooCommerce store owners, the 2.3.4 Plugin release is a minor Plugin update which judging by the changelog alone adds a fair bit of new export functionality, fixes for exporting Product Attributes, Subscriptions and Custom Order Items made it into this release. Here’s the full changelog: Fixed Fixed: Compatibility with WooCommerce Subscriptions (thanks Anshul) Fixed: Custom Order Items [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Michael Visser";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:94:"https://www.visser.com.au/blog/plugin-update-store-exporter-deluxe-2-3-4-for-woocommerce/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:5:"46631";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:69:"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:59:"[Plugin update] Store Exporter Deluxe 2.3.3 for WooCommerce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:89:"https://www.visser.com.au/blog/plugin-update-store-exporter-deluxe-2-3-3-for-woocommerce/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:97:"https://www.visser.com.au/blog/plugin-update-store-exporter-deluxe-2-3-3-for-woocommerce/#respond";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 11 May 2017 05:48:16 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:12:{i:0;a:5:{s:4:"data";s:21:"Store Exporter Deluxe";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:11:"Visser Labs";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:11:"WooCommerce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:9:"WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:4;a:5:{s:4:"data";s:3:"CSV";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:5;a:5:{s:4:"data";s:10:"e-Commerce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:6;a:5:{s:4:"data";s:13:"Plugin update";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:7;a:5:{s:4:"data";s:14:"Plugin updates";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:8;a:5:{s:4:"data";s:16:"WordPress Plugin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:9;a:5:{s:4:"data";s:3:"XLS";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:10;a:5:{s:4:"data";s:4:"XLSX";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:11;a:5:{s:4:"data";s:3:"XML";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://www.visser.com.au/?p=46530";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:407:"Hi WooCommerce store owners, the 2.3.3 Plugin release is a minor Plugin update that adds native export support for WooCommerce Bookings and some aspects of Booster for WooCommerce (VAT, Order Numbers), additional export columns are available for WooCommerce Memberships users too; as always there&#8217;s fixes galore, check the changelog. Behind the scenes there has been a new Constant added [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Michael Visser";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:94:"https://www.visser.com.au/blog/plugin-update-store-exporter-deluxe-2-3-3-for-woocommerce/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:5:"46530";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:42:"\n		\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:70:"How to upgrade to WooCommerce 3.0+ with deprecated/out-of-date Plugins";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:101:"https://www.visser.com.au/blog/how-to-upgrade-to-woocommerce-3-0-with-deprecated-out-of-date-plugins/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:109:"https://www.visser.com.au/blog/how-to-upgrade-to-woocommerce-3-0-with-deprecated-out-of-date-plugins/#respond";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 04 May 2017 04:18:42 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:15:"Web Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:11:"WooCommerce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:9:"WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://www.visser.com.au/?p=46096";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:378:"WooCommerce 3.0 has landed and you&#8217;re in one of two camps, either you&#8217;ve updated (living dangerous!) or you&#8217;re waiting until a good time to upgrade which will never come. Here&#8217;s how to get from WooCommerce 2.6.14 to 3.0+ without breaking much of sweat by learning from my mistakes. Updating from WooCommerce 2.6.14 to WooCommerce 3.0+ is just [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Michael Visser";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:106:"https://www.visser.com.au/blog/how-to-upgrade-to-woocommerce-3-0-with-deprecated-out-of-date-plugins/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:5:"46096";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:69:"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:59:"[Plugin update] Store Exporter Deluxe 2.3.2 for WooCommerce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:89:"https://www.visser.com.au/blog/plugin-update-store-exporter-deluxe-2-3-2-for-woocommerce/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:97:"https://www.visser.com.au/blog/plugin-update-store-exporter-deluxe-2-3-2-for-woocommerce/#respond";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 Apr 2017 07:56:38 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:12:{i:0;a:5:{s:4:"data";s:21:"Store Exporter Deluxe";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:11:"Visser Labs";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:11:"WooCommerce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:9:"WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:4;a:5:{s:4:"data";s:3:"CSV";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:5;a:5:{s:4:"data";s:10:"e-Commerce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:6;a:5:{s:4:"data";s:13:"Plugin update";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:7;a:5:{s:4:"data";s:14:"Plugin updates";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:8;a:5:{s:4:"data";s:16:"WordPress Plugin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:9;a:5:{s:4:"data";s:3:"XLS";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:10;a:5:{s:4:"data";s:4:"XLSX";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:11;a:5:{s:4:"data";s:3:"XML";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://www.visser.com.au/?p=46320";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:329:"Hi WooCommerce store owners, the 2.3.2 Plugin release is a minor Plugin update that adds native export support for Wholesale Pricing and Aelia Currency Switcher as well as new Product filters for Custom Product meta, as always a few fixes made it in too. Just like the 2.3.1 release before it if you&#8217;ve updated to [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Michael Visser";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:94:"https://www.visser.com.au/blog/plugin-update-store-exporter-deluxe-2-3-2-for-woocommerce/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:5:"46320";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:48:"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:59:"[Plugin update] Store Exporter Deluxe 2.3.1 for WooCommerce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:89:"https://www.visser.com.au/blog/plugin-update-store-exporter-deluxe-2-3-1-for-woocommerce/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:97:"https://www.visser.com.au/blog/plugin-update-store-exporter-deluxe-2-3-1-for-woocommerce/#respond";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 05 Apr 2017 22:58:24 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:5:{i:0;a:5:{s:4:"data";s:21:"Store Exporter Deluxe";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:11:"Visser Labs";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:15:"Web Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:11:"WooCommerce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:4;a:5:{s:4:"data";s:9:"WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://www.visser.com.au/?p=46128";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:375:"Hi WooCommerce store owners, the 2.3.1 Plugin release is a minor Plugin update fixing a compatibility issue with WooCommerce 3.0 that snuck through the 2.3 major release and that&#8217;s about it. If you&#8217;ve updated to WooCommerce 3.0 then this update is for you! Here’s the full changelog: Fixed Fixed: Sections on Quick Export screen stretch on large-res [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Michael Visser";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:94:"https://www.visser.com.au/blog/plugin-update-store-exporter-deluxe-2-3-1-for-woocommerce/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:5:"46128";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:45:"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:61:"[Plugin update] Product Importer Deluxe 2.0.3 for WooCommerce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:91:"https://www.visser.com.au/blog/plugin-update-product-importer-deluxe-2-0-3-for-woocommerce/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:99:"https://www.visser.com.au/blog/plugin-update-product-importer-deluxe-2-0-3-for-woocommerce/#respond";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 30 Mar 2017 07:06:48 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:4:{i:0;a:5:{s:4:"data";s:23:"Product Importer Deluxe";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:11:"Visser Labs";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:11:"WooCommerce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:9:"WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://www.visser.com.au/?p=46039";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:359:"Hi WooCommerce store owners, the 2.0.3 Plugin update is a minor Plugin release confirming compatibility with WooCommerce 3.0 due on April 4 – bring it on! – and includes new import fields, native import support for more Plugins and a bunch of fixes. Some of the tricks you can now do in Product Importer Deluxe 2.0.3 include: WooCommerce 3.0 [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Michael Visser";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:96:"https://www.visser.com.au/blog/plugin-update-product-importer-deluxe-2-0-3-for-woocommerce/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:5:"46039";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:48:"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:57:"[Plugin update] Store Exporter Deluxe 2.3 for WooCommerce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:87:"https://www.visser.com.au/blog/plugin-update-store-exporter-deluxe-2-3-for-woocommerce/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:95:"https://www.visser.com.au/blog/plugin-update-store-exporter-deluxe-2-3-for-woocommerce/#respond";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 29 Mar 2017 09:50:03 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:5:{i:0;a:5:{s:4:"data";s:21:"Store Exporter Deluxe";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:11:"Visser Labs";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:15:"Web Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:11:"WooCommerce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:4;a:5:{s:4:"data";s:9:"WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://www.visser.com.au/?p=46027";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:348:"Hi WooCommerce store owners, the 2.3 Plugin release is a major Plugin update confirming compatibility with WooCommerce 3.0 due on April 4 &#8211; bring it on! &#8211; and includes a mountain of new functionality, fixes and changes. Some of the tricks you can now do in Store Exporter Deluxe 2.3 include: WooCommerce 3.0 compatibility Mark [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Michael Visser";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:92:"https://www.visser.com.au/blog/plugin-update-store-exporter-deluxe-2-3-for-woocommerce/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:5:"46027";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:60:"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n		\n		\n		\n		\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:61:"[Plugin update] Product Importer Deluxe 2.0.1 for WooCommerce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:91:"https://www.visser.com.au/blog/plugin-update-product-importer-deluxe-2-0-1-for-woocommerce/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:100:"https://www.visser.com.au/blog/plugin-update-product-importer-deluxe-2-0-1-for-woocommerce/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 24 Jan 2017 13:54:54 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:9:{i:0;a:5:{s:4:"data";s:23:"Product Importer Deluxe";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:11:"Visser Labs";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:15:"Web Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:11:"WooCommerce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:4;a:5:{s:4:"data";s:9:"WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:5;a:5:{s:4:"data";s:11:"Bulk import";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:6;a:5:{s:4:"data";s:3:"CSV";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:7;a:5:{s:4:"data";s:14:"Product import";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:8;a:5:{s:4:"data";s:25:"WooCommerce Subscriptions";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://www.visser.com.au/?p=45399";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:370:"Hi WooCommerce store owners, the 2.0.1 Plugin update is a minor Plugin release fixing an issue affecting automatic Plugin updates over the past 24 hours so I will re-release the 2.0 major release from yesterday with some minor additions from today. Here&#8217;s the full changelog: Added Added: Import support for WooCommerce Subscriptions (thanks Joel) Added: [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Michael Visser";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:96:"https://www.visser.com.au/blog/plugin-update-product-importer-deluxe-2-0-1-for-woocommerce/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:5:"45399";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:48:"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:59:"[Plugin update] Product Importer Deluxe 2.0 for WooCommerce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:89:"https://www.visser.com.au/blog/plugin-update-product-importer-deluxe-2-0-for-woocommerce/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:97:"https://www.visser.com.au/blog/plugin-update-product-importer-deluxe-2-0-for-woocommerce/#respond";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 23 Jan 2017 11:50:39 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:5:{i:0;a:5:{s:4:"data";s:23:"Product Importer Deluxe";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:11:"Visser Labs";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:15:"Web Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:11:"WooCommerce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:4;a:5:{s:4:"data";s:9:"WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://www.visser.com.au/?p=45380";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:376:"Hi WooCommerce store owners, the 2.0 Plugin update is a major Plugin release overhauling the Import screen and bringing the import column naming in line with Store Exporter Deluxe for clearer store migrations. Note: I&#8217;ll be expanding this post with screenshots and a breakdown of new functionality throughout the day. 🙂 Gallery Here’s the full changelog: [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Michael Visser";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:94:"https://www.visser.com.au/blog/plugin-update-product-importer-deluxe-2-0-for-woocommerce/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:5:"45380";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"href";s:57:"https://www.visser.com.au/blog/category/woocommerce/feed/";s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:44:"http://purl.org/rss/1.0/modules/syndication/";a:2:{s:12:"updatePeriod";a:1:{i:0;a:5:{s:4:"data";s:6:"hourly";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:15:"updateFrequency";a:1:{i:0;a:5:{s:4:"data";s:1:"1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:4:"site";a:1:{i:0;a:5:{s:4:"data";s:7:"3904849";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";O:42:"Requests_Utility_CaseInsensitiveDictionary":1:{s:7:"\0*\0data";a:14:{s:6:"server";s:5:"nginx";s:4:"date";s:29:"Wed, 24 May 2017 04:02:40 GMT";s:12:"content-type";s:34:"application/rss+xml; charset=UTF-8";s:14:"content-length";s:4:"2767";s:12:"x-powered-by";a:2:{i:0;s:10:"PHP/5.6.30";i:1;s:8:"PleskLin";}s:7:"expires";s:29:"Thu, 19 Nov 1981 08:52:00 GMT";s:13:"cache-control";s:62:"no-store, no-cache, must-revalidate, post-check=0, pre-check=0";s:6:"pragma";s:8:"no-cache";s:12:"x-robots-tag";s:15:"noindex, follow";s:4:"link";s:62:"<https://www.visser.com.au/wp-json/>; rel="https://api.w.org/"";s:10:"set-cookie";s:44:"PHPSESSID=ai1m7tn8htqor41sv2p8k0h2t1; path=/";s:4:"vary";s:15:"Accept-Encoding";s:13:"last-modified";s:29:"Wed, 24 May 2017 03:59:39 GMT";s:16:"content-encoding";s:4:"gzip";}}s:5:"build";s:14:"20130911030210";}', 'no'),
(1226, '_site_transient_timeout_browser_e962b733612dd4249c54f83e15b3b715', '1487644426', 'no'),
(916, '_site_transient_timeout_browser_c0c4b214efa9ca4534f836fa0c819716', '1486100763', 'no'),
(917, '_site_transient_browser_c0c4b214efa9ca4534f836fa0c819716', 'a:9:{s:8:"platform";s:6:"iPhone";s:4:"name";s:6:"iPhone";s:7:"version";s:4:"10.0";s:10:"update_url";s:0:"";s:7:"img_src";s:0:"";s:11:"img_src_ssl";s:0:"";s:15:"current_version";s:0:"";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(2477, '_transient_timeout_feed_mod_07f9ff8c98c9208e4fb710a00972ecab', '1495641760', 'no'),
(933, '_site_transient_timeout_browser_1e61d98814f0c45dd8ba782549d4fdb9', '1486108845', 'no'),
(934, '_site_transient_browser_1e61d98814f0c45dd8ba782549d4fdb9', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"55.0.2883.95";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(926, '_transient_timeout_plugin_slugs', '1495696358', 'no'),
(927, '_transient_plugin_slugs', 'a:12:{i:0;s:19:"akismet/akismet.php";i:1;s:27:"bulk-delete/bulk-delete.php";i:2;s:77:"bulk-price-converter-for-woocommerce/bulk-price-converter-for-woocommerce.php";i:3;s:25:"duplicator/duplicator.php";i:4;s:55:"ecommerce-product-catalog/ecommerce-product-catalog.php";i:5;s:9:"hello.php";i:6;s:27:"woocommerce/woocommerce.php";i:7;s:43:"woocommerce-store-toolkit/store-toolkit.php";i:8;s:106:"woocommerce-extra-charges-to-payment-gateways/woocommerce-extra-charges-option-to-payment-gateways-std.php";i:9;s:80:"mq-woocommerce-products-price-bulk-edit/woocommerce_products_price_bulk_edit.php";i:10;s:41:"wordpress-importer/wordpress-importer.php";i:11;s:57:"xendit-woocommerce-gateway/xendit-woocommerce-gateway.php";}', 'no'),
(2524, '_transient_timeout_woo_st_sales_all_time', '1495613315', 'no'),
(2525, '_transient_woo_st_sales_all_time', '', 'no'),
(2520, '_transient_woocommerce_cache_excluded_uris', 'a:6:{i:0;s:3:"p=5";i:1;s:6:"/cart/";i:2;s:3:"p=6";i:3;s:10:"/checkout/";i:4;s:3:"p=7";i:5;s:12:"/my-account/";}', 'yes'),
(507, 'pa_color_children', 'a:0:{}', 'yes'),
(2481, '_transient_timeout_wc_addons_sections', '1496203467', 'no'),
(2493, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1495617912', 'no');
INSERT INTO `xen_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(2494, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:"stdClass":100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";i:4338;}s:4:"post";a:3:{s:4:"name";s:4:"post";s:4:"slug";s:4:"post";s:5:"count";i:2478;}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";i:2349;}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";i:2086;}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";i:1820;}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";i:1579;}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";i:1555;}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";i:1430;}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";i:1331;}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";i:1321;}s:8:"facebook";a:3:{s:4:"name";s:8:"facebook";s:4:"slug";s:8:"facebook";s:5:"count";i:1312;}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";i:1266;}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";i:1261;}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";i:1099;}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";i:1040;}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";i:1037;}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";i:982;}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";i:923;}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";i:812;}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";i:790;}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";i:785;}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";i:762;}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";i:758;}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";i:665;}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";i:654;}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";i:652;}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";i:645;}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";i:643;}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";i:634;}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";i:620;}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";i:598;}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";i:590;}s:4:"ajax";a:3:{s:4:"name";s:4:"ajax";s:4:"slug";s:4:"ajax";s:5:"count";i:590;}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";i:572;}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";i:572;}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";i:568;}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";i:566;}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";i:553;}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";i:546;}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";i:536;}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";i:528;}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";i:520;}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";i:518;}s:3:"css";a:3:{s:4:"name";s:3:"css";s:4:"slug";s:3:"css";s:5:"count";i:503;}s:5:"share";a:3:{s:4:"name";s:5:"share";s:4:"slug";s:5:"share";s:5:"count";i:496;}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";i:488;}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";i:487;}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";i:476;}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";i:464;}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";i:462;}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";i:459;}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";i:456;}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";i:439;}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";i:433;}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";i:432;}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";i:431;}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";i:425;}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";i:418;}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";i:410;}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";i:409;}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";i:404;}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";i:401;}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";i:399;}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";i:395;}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";i:393;}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";i:393;}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";i:376;}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";i:376;}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";i:365;}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";i:361;}s:4:"news";a:3:{s:4:"name";s:4:"news";s:4:"slug";s:4:"news";s:5:"count";i:349;}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";i:331;}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";i:331;}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";i:331;}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";i:329;}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";i:321;}s:4:"code";a:3:{s:4:"name";s:4:"code";s:4:"slug";s:4:"code";s:5:"count";i:321;}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";i:320;}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";i:317;}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";i:314;}s:7:"payment";a:3:{s:4:"name";s:7:"payment";s:4:"slug";s:7:"payment";s:5:"count";i:314;}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";i:310;}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";i:293;}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";i:293;}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";i:291;}s:5:"popup";a:3:{s:4:"name";s:5:"popup";s:4:"slug";s:5:"popup";s:5:"count";i:290;}s:16:"custom-post-type";a:3:{s:4:"name";s:16:"custom post type";s:4:"slug";s:16:"custom-post-type";s:5:"count";i:286;}s:8:"redirect";a:3:{s:4:"name";s:8:"redirect";s:4:"slug";s:8:"redirect";s:5:"count";i:285;}s:4:"chat";a:3:{s:4:"name";s:4:"chat";s:4:"slug";s:4:"chat";s:5:"count";i:284;}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";i:280;}s:6:"author";a:3:{s:4:"name";s:6:"author";s:4:"slug";s:6:"author";s:5:"count";i:278;}s:7:"adsense";a:3:{s:4:"name";s:7:"adsense";s:4:"slug";s:7:"adsense";s:5:"count";i:277;}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";i:273;}s:8:"lightbox";a:3:{s:4:"name";s:8:"lightbox";s:4:"slug";s:8:"lightbox";s:5:"count";i:270;}s:5:"forms";a:3:{s:4:"name";s:5:"forms";s:4:"slug";s:5:"forms";s:5:"count";i:267;}s:15:"payment-gateway";a:3:{s:4:"name";s:15:"payment gateway";s:4:"slug";s:15:"payment-gateway";s:5:"count";i:266;}s:14:"administration";a:3:{s:4:"name";s:14:"administration";s:4:"slug";s:14:"administration";s:5:"count";i:262;}s:12:"notification";a:3:{s:4:"name";s:12:"notification";s:4:"slug";s:12:"notification";s:5:"count";i:261;}s:7:"captcha";a:3:{s:4:"name";s:7:"captcha";s:4:"slug";s:7:"captcha";s:5:"count";i:260;}s:5:"cache";a:3:{s:4:"name";s:5:"cache";s:4:"slug";s:5:"cache";s:5:"count";i:260;}}', 'no'),
(142, 'theme_mods_clean-commerce', 'a:3:{i:0;b:0;s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:6;}}', 'yes'),
(143, 'theme_switched', '', 'yes'),
(144, 'widget_clean-commerce-social', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(145, 'widget_clean-commerce-featured-page', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(146, 'widget_clean-commerce-recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(2470, '_site_transient_browser_be0ff8791ae794e1841efdd14b50475f', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"58.0.3029.110";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(2469, '_site_transient_timeout_browser_be0ff8791ae794e1841efdd14b50475f', '1496203356', 'no'),
(2485, '_transient_is_multi_author', '0', 'yes'),
(2265, '_site_transient_browser_68c0fa3e79a1e70d124fda3e19898936', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"58.0.3029.81";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(2491, '_transient_timeout_wc_upgrade_notice_2.6.13', '1495693246', 'no'),
(2492, '_transient_wc_upgrade_notice_2.6.13', '<div class="wc_plugin_upgrade_notice">3.0 is a major update. Make a full site backup, update your theme and extensions, and <a href="https://docs.woocommerce.com/document/how-to-update-your-site">review update best practices</a> before upgrading.</div> ', 'no'),
(480, 'woo_st_secret_key', '1t1CcsBssjNLzjoH7ozAWBxiejC2GZtmSq90xptq0iGTmTSb8hKgj6fxaPSdQMZK', 'yes'),
(154, 'woocommerce_default_country', 'ID:KI', 'yes'),
(155, 'woocommerce_allowed_countries', 'all', 'yes'),
(156, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(157, 'woocommerce_specific_allowed_countries', 'a:0:{}', 'yes'),
(158, 'woocommerce_ship_to_countries', '', 'yes'),
(159, 'woocommerce_specific_ship_to_countries', 'a:0:{}', 'yes'),
(586, 'alg_wc_bulk_price_converter_enabled', 'yes', 'yes'),
(587, 'wppbe_show_products_page_limit', '500', 'yes'),
(674, 'woocommerce_bacs_accounts', 'a:1:{i:0;a:6:{s:12:"account_name";s:0:"";s:14:"account_number";s:0:"";s:9:"bank_name";s:0:"";s:9:"sort_code";s:0:"";s:4:"iban";s:0:"";s:3:"bic";s:0:"";}}', 'yes'),
(170, 'woocommerce_dimension_unit', 'cm', 'yes'),
(171, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(172, 'woocommerce_review_rating_required', 'yes', 'no'),
(173, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(174, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(175, 'woocommerce_shop_page_id', '4', 'yes'),
(176, 'woocommerce_shop_page_display', '', 'yes'),
(177, 'woocommerce_category_archive_display', '', 'yes'),
(178, 'woocommerce_default_catalog_orderby', 'menu_order', 'yes'),
(179, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(180, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(181, 'shop_catalog_image_size', 'a:3:{s:5:"width";s:3:"300";s:6:"height";s:3:"300";s:4:"crop";i:1;}', 'yes'),
(182, 'shop_single_image_size', 'a:3:{s:5:"width";s:3:"600";s:6:"height";s:3:"600";s:4:"crop";i:1;}', 'yes'),
(183, 'shop_thumbnail_image_size', 'a:3:{s:5:"width";s:3:"180";s:6:"height";s:3:"180";s:4:"crop";i:1;}', 'yes'),
(184, 'woocommerce_enable_lightbox', 'yes', 'yes'),
(185, 'woocommerce_manage_stock', 'yes', 'yes'),
(186, 'woocommerce_hold_stock_minutes', '60', 'no'),
(187, 'woocommerce_notify_low_stock', 'yes', 'no'),
(188, 'woocommerce_notify_no_stock', 'yes', 'no'),
(189, 'woocommerce_stock_email_recipient', 'hassan@noor.my.id', 'no'),
(190, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(191, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(192, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(193, 'woocommerce_stock_format', '', 'yes'),
(194, 'woocommerce_file_download_method', 'force', 'no'),
(195, 'woocommerce_downloads_require_login', 'no', 'no'),
(196, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(197, 'woocommerce_prices_include_tax', 'no', 'yes'),
(198, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(199, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(200, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(201, 'woocommerce_tax_classes', 'Reduced Rate\nZero Rate', 'yes'),
(202, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(203, 'woocommerce_tax_display_cart', 'excl', 'no'),
(204, 'woocommerce_price_display_suffix', '', 'yes'),
(205, 'woocommerce_tax_total_display', 'itemized', 'no'),
(206, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(207, 'woocommerce_shipping_cost_requires_address', 'no', 'no'),
(208, 'woocommerce_ship_to_destination', 'billing', 'no'),
(209, 'woocommerce_enable_coupons', 'yes', 'yes'),
(210, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(211, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(212, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(213, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(214, 'woocommerce_cart_page_id', '5', 'yes'),
(215, 'woocommerce_checkout_page_id', '6', 'yes'),
(216, 'woocommerce_terms_page_id', '', 'no'),
(217, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(218, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(219, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(220, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(221, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(222, 'woocommerce_myaccount_page_id', '7', 'yes'),
(223, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(224, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(225, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(226, 'woocommerce_registration_generate_username', 'yes', 'no'),
(227, 'woocommerce_registration_generate_password', 'no', 'no'),
(228, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(229, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(230, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(231, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(232, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(233, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(234, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(235, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(236, 'woocommerce_email_from_name', 'Xendit Development', 'no'),
(237, 'woocommerce_email_from_address', 'no-reply@xendit.projectby.id', 'no'),
(238, 'woocommerce_email_header_image', '', 'no'),
(239, 'woocommerce_email_footer_text', 'Xendit Development - Powered by WooCommerce', 'no'),
(240, 'woocommerce_email_base_color', '#557da1', 'no'),
(241, 'woocommerce_email_background_color', '#f5f5f5', 'no'),
(242, 'woocommerce_email_body_background_color', '#fdfdfd', 'no'),
(243, 'woocommerce_email_text_color', '#505050', 'no'),
(244, 'woocommerce_api_enabled', 'yes', 'yes'),
(269, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(2519, 'woocommerce_db_version', '3.0.7', 'yes'),
(2510, 'woocommerce_version', '3.0.7', 'yes'),
(250, 'recently_activated', 'a:0:{}', 'yes'),
(251, 'woocommerce_admin_notices', 'a:1:{i:0;s:6:"update";}', 'yes'),
(253, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(254, 'widget_woocommerce_widget_cart', 'a:2:{i:2;a:2:{s:5:"title";s:4:"Cart";s:13:"hide_if_empty";i:1;}s:12:"_multiwidget";i:1;}', 'yes'),
(255, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(256, 'widget_woocommerce_layered_nav', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(257, 'widget_woocommerce_price_filter', 'a:2:{i:2;a:1:{s:5:"title";s:15:"Filter by price";}s:12:"_multiwidget";i:1;}', 'yes'),
(258, 'widget_woocommerce_product_categories', 'a:2:{i:2;a:7:{s:5:"title";s:18:"Product Categories";s:7:"orderby";s:4:"name";s:8:"dropdown";i:0;s:5:"count";i:1;s:12:"hierarchical";i:0;s:18:"show_children_only";i:0;s:10:"hide_empty";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(259, 'widget_woocommerce_product_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(260, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(261, 'widget_woocommerce_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(262, 'widget_woocommerce_rating_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(263, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(264, 'widget_woocommerce_recently_viewed_products', 'a:2:{i:2;a:2:{s:5:"title";s:15:"Recently Viewed";s:6:"number";i:3;}s:12:"_multiwidget";i:1;}', 'yes'),
(265, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(309, '_transient_orders-transient-version', '1495598656', 'yes'),
(273, 'woocommerce_paypal-ec_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(274, 'woocommerce_stripe_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(275, 'woocommerce_paypal_settings', 'a:2:{s:7:"enabled";s:2:"no";s:5:"email";s:17:"hassan@noor.my.id";}', 'yes'),
(276, 'woocommerce_cheque_settings', 'a:4:{s:7:"enabled";s:2:"no";s:5:"title";s:14:"Check Payments";s:11:"description";s:98:"Please send a check to Store Name, Store Street, Store Town, Store State / County, Store Postcode.";s:12:"instructions";s:25:"Please send your check to";}', 'yes'),
(277, 'woocommerce_bacs_settings', 'a:5:{s:7:"enabled";s:2:"no";s:5:"title";s:20:"Direct Bank Transfer";s:11:"description";s:173:"Make your payment directly into our bank account. Please use your Order ID as the payment reference. Your order won\'t be shipped until the funds have cleared in our account.";s:12:"instructions";s:0:"";s:15:"account_details";s:0:"";}', 'yes'),
(278, 'woocommerce_cod_settings', 'a:6:{s:7:"enabled";s:3:"yes";s:5:"title";s:16:"Cash on Delivery";s:11:"description";s:28:"Pay with cash upon delivery.";s:12:"instructions";s:28:"Pay with cash upon delivery.";s:18:"enable_for_methods";s:0:"";s:18:"enable_for_virtual";s:3:"yes";}', 'yes'),
(279, 'woocommerce_allow_tracking', 'no', 'yes'),
(280, '_transient_shipping-transient-version', '1485163256', 'yes'),
(286, '_transient_product_query-transient-version', '1485513275', 'yes'),
(287, '_transient_product-transient-version', '1485513276', 'yes'),
(290, 'woocommerce_xendit_gateway_settings', 'a:19:{s:7:"enabled";s:3:"yes";s:5:"title";s:6:"Xendit";s:11:"description";s:22:"Pay with Xendit";s:13:"merchant_name";s:5:"Jualo";s:7:"api_key";s:0:"";s:10:"secret_key";s:0:"";s:20:"responce_url_calback";s:73:"http://xendit.projectby.id/wp/thank-you-page/?xendit_mode=xendit_callback";s:23:"sucess_responce_xendite";s:9:"COMPLETED";s:12:"checkout_msg";s:87:"Thank you for your order, please use bank account below to pay with the secured Xendit.";s:8:"showlogo";s:3:"yes";s:15:"developmentmode";s:3:"yes";s:14:"callback_token";s:0:"";s:14:"amount_to_live";s:5:"10000";s:11:"xendit_fees";s:1:"5";s:22:"sucess_responce_xendit";s:9:"COMPLETED";s:21:"sucess_payment_xendit";s:9:"completed";s:11:"api_key_dev";s:29:"xnd_public_development_joePUB";s:14:"secret_key_dev";s:72:"xnd_development_OYCIfOQm0bStnJY4eOUVTD7CYNKr84V1xHPm+R1k9WLS8LWmCQZ2hw==";s:18:"callback_token_dev";s:56:"ODYyNTgyNDEyOGFhNmY5ZjliNjQ4YmU5ZDc2MTQ3ODc1OTA1MDE2OQ==";}', 'yes'),
(2482, '_transient_wc_addons_sections', 'O:8:"stdClass":10:{s:8:"featured";O:8:"stdClass":2:{s:5:"title";s:8:"Featured";s:8:"endpoint";s:59:"https://d3t0oesq8995hv.cloudfront.net/section/featured.json";}s:7:"popular";O:8:"stdClass":2:{s:5:"title";s:7:"Popular";s:8:"endpoint";s:58:"https://d3t0oesq8995hv.cloudfront.net/section/popular.json";}s:16:"payment_gateways";O:8:"stdClass":2:{s:5:"title";s:16:"Payment Gateways";s:8:"endpoint";s:67:"https://d3t0oesq8995hv.cloudfront.net/section/payment_gateways.json";}s:16:"shipping_methods";O:8:"stdClass":2:{s:5:"title";s:16:"Shipping Methods";s:8:"endpoint";s:67:"https://d3t0oesq8995hv.cloudfront.net/section/shipping_methods.json";}s:13:"import_export";O:8:"stdClass":2:{s:5:"title";s:13:"Import/Export";s:8:"endpoint";s:64:"https://d3t0oesq8995hv.cloudfront.net/section/import_export.json";}s:10:"accounting";O:8:"stdClass":2:{s:5:"title";s:10:"Accounting";s:8:"endpoint";s:61:"https://d3t0oesq8995hv.cloudfront.net/section/accounting.json";}s:9:"marketing";O:8:"stdClass":2:{s:5:"title";s:9:"Marketing";s:8:"endpoint";s:60:"https://d3t0oesq8995hv.cloudfront.net/section/marketing.json";}s:7:"product";O:8:"stdClass":2:{s:5:"title";s:8:"Products";s:8:"endpoint";s:58:"https://d3t0oesq8995hv.cloudfront.net/section/product.json";}s:4:"free";O:8:"stdClass":2:{s:5:"title";s:4:"Free";s:8:"endpoint";s:55:"https://d3t0oesq8995hv.cloudfront.net/section/free.json";}s:11:"third_party";O:8:"stdClass":2:{s:5:"title";s:11:"Third-party";s:8:"endpoint";s:62:"https://d3t0oesq8995hv.cloudfront.net/section/third_party.json";}}', 'no'),
(2483, '_transient_timeout_wc_addons_featured', '1496203467', 'no'),
(2484, '_transient_wc_addons_featured', 'O:8:"stdClass":1:{s:8:"sections";a:10:{i:0;O:8:"stdClass":4:{s:6:"module";s:12:"banner_block";s:5:"title";s:50:"Take your store beyond the typical - sell anything";s:11:"description";s:83:"From services to content, there’s no limit to what you can sell with WooCommerce.";s:5:"items";a:3:{i:0;O:8:"stdClass":6:{s:4:"href";s:118:"https://woocommerce.com/products/woocommerce-subscriptions/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"title";s:13:"Subscriptions";s:5:"image";s:71:"https://d3t0oesq8995hv.cloudfront.net/add-ons/subscriptions-icon@2x.png";s:11:"description";s:98:"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis.";s:6:"button";s:10:"From: $199";s:6:"plugin";s:55:"woocommerce-subscriptions/woocommerce-subscriptions.php";}i:1;O:8:"stdClass":6:{s:4:"href";s:113:"https://woocommerce.com/products/woocommerce-bookings/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"title";s:8:"Bookings";s:5:"image";s:66:"https://d3t0oesq8995hv.cloudfront.net/add-ons/bookings-icon@2x.png";s:11:"description";s:76:"Allow customers to book appointments for services without leaving your site.";s:6:"button";s:10:"From: $249";s:6:"plugin";s:45:"woocommerce-bookings/woocommerce-bookings.php";}i:2;O:8:"stdClass":6:{s:4:"href";s:116:"https://woocommerce.com/products/woocommerce-memberships/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"title";s:11:"Memberships";s:5:"image";s:69:"https://d3t0oesq8995hv.cloudfront.net/add-ons/memberships-icon@2x.png";s:11:"description";s:76:"Give members access to restricted content or products, for a fee or for free";s:6:"button";s:10:"From: $149";s:6:"plugin";s:51:"woocommerce-memberships/woocommerce-memberships.php";}}}i:1;O:8:"stdClass":2:{s:6:"module";s:12:"column_start";s:9:"container";s:22:"column_container_start";}i:2;O:8:"stdClass":4:{s:6:"module";s:12:"column_block";s:5:"title";s:46:"Improve the main features of your online store";s:11:"description";s:71:"Sell more by helping customers find the products and options they want.";s:5:"items";a:3:{i:0;O:8:"stdClass":6:{s:4:"href";s:108:"https://woocommerce.com/products/product-add-ons/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"title";s:15:"Product Add-ons";s:5:"image";s:73:"https://d3t0oesq8995hv.cloudfront.net/add-ons/product-add-ons-icon@2x.png";s:11:"description";s:82:"Give your customers the option to customize their purchase or add personalization.";s:6:"button";s:9:"From: $49";s:6:"plugin";s:57:"woocommerce-product-addons/woocommerce-product-addons.php";}i:1;O:8:"stdClass":6:{s:4:"href";s:119:"https://woocommerce.com/products/woocommerce-product-search/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"title";s:14:"Product Search";s:5:"image";s:72:"https://d3t0oesq8995hv.cloudfront.net/add-ons/product-search-icon@2x.png";s:11:"description";s:67:"Make sure customers find what they want when they search your site.";s:6:"button";s:9:"From: $49";s:6:"plugin";s:57:"woocommerce-product-search/woocommerce-product-search.php";}i:2;O:8:"stdClass":6:{s:4:"href";s:121:"https://woocommerce.com/products/woocommerce-checkout-add-ons/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"title";s:16:"Checkout Add-ons";s:5:"image";s:74:"https://d3t0oesq8995hv.cloudfront.net/add-ons/checkout-add-ons-icon@2x.png";s:11:"description";s:89:"Highlight relevant products, offers like free shipping and other upsells during checkout.";s:6:"button";s:9:"From: $49";s:6:"plugin";s:61:"woocommerce-checkout-add-ons/woocommerce-checkout-add-ons.php";}}}i:3;O:8:"stdClass":5:{s:6:"module";s:17:"small_light_block";s:5:"title";s:34:"Get the official WooCommerce theme";s:11:"description";s:128:"Storefront is the lean, flexible, and free theme, built by the people who make WooCommerce - everything you need to get started.";s:5:"image";s:70:"https://d3t0oesq8995hv.cloudfront.net/add-ons/storefront-screen@2x.png";s:7:"buttons";a:2:{i:0;O:8:"stdClass":2:{s:4:"href";s:44:"/wp-admin/theme-install.php?theme=storefront";s:4:"text";s:7:"Install";}i:1;O:8:"stdClass":2:{s:4:"href";s:94:"https://woocommerce.com/storefront/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:4:"text";s:9:"Read More";}}}i:4;O:8:"stdClass":1:{s:6:"module";s:10:"column_end";}i:5;O:8:"stdClass":1:{s:6:"module";s:12:"column_start";}i:6;O:8:"stdClass":4:{s:6:"module";s:16:"small_dark_block";s:5:"title";s:20:"Square + WooCommerce";s:11:"description";s:176:"Keep your WooCommerce and brick-and-mortar stores in sync. Use Square to take payments both online and offline, keep inventory updated between the two and sync product changes.";s:5:"items";a:1:{i:0;O:8:"stdClass":2:{s:4:"href";s:99:"https://woocommerce.com/products/square/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:6:"button";s:9:"From: $79";}}}i:7;O:8:"stdClass":4:{s:6:"module";s:12:"column_block";s:5:"title";s:19:"Get deeper insights";s:11:"description";s:58:"Learn how your store is performing with enhanced reporting";s:5:"items";a:3:{i:0;O:8:"stdClass":6:{s:4:"href";s:121:"https://woocommerce.com/products/woocommerce-google-analytics/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"title";s:16:"Google Analytics";s:5:"image";s:60:"https://d3t0oesq8995hv.cloudfront.net/add-ons/ga-icon@2x.png";s:11:"description";s:93:"Understand your customers and increase revenue with the world’s leading analytics platform.";s:6:"button";s:4:"Free";s:6:"plugin";s:85:"woocommerce-google-analytics-integration/woocommerce-google-analytics-integration.php";}i:1;O:8:"stdClass":6:{s:4:"href";s:117:"https://woocommerce.com/products/woocommerce-cart-reports/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"title";s:12:"Cart reports";s:5:"image";s:70:"https://d3t0oesq8995hv.cloudfront.net/add-ons/cart-reports-icon@2x.png";s:11:"description";s:66:"Get real-time reports on what customers are leaving in their cart.";s:6:"button";s:9:"From: $79";s:6:"plugin";s:53:"woocommerce-cart-reports/woocommerce-cart-reports.php";}i:2;O:8:"stdClass":6:{s:4:"href";s:118:"https://woocommerce.com/products/woocommerce-cost-of-goods/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"title";s:13:"Cost of Goods";s:5:"image";s:71:"https://d3t0oesq8995hv.cloudfront.net/add-ons/cost-of-goods-icon@2x.png";s:11:"description";s:64:"Easily track profit by including  cost of goods in your reports.";s:6:"button";s:9:"From: $79";s:6:"plugin";s:55:"woocommerce-cost-of-goods/woocommerce-cost-of-goods.php";}}}i:8;O:8:"stdClass":2:{s:6:"module";s:10:"column_end";s:9:"container";s:20:"column_container_end";}i:9;O:8:"stdClass":4:{s:6:"module";s:12:"banner_block";s:5:"title";s:40:"Promote your products and increase sales";s:11:"description";s:77:"From coupons to emails, these extensions can power up your marketing efforts.";s:5:"items";a:3:{i:0;O:8:"stdClass":6:{s:4:"href";s:106:"https://woocommerce.com/products/smart-coupons/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"title";s:13:"Smart Coupons";s:5:"image";s:71:"https://d3t0oesq8995hv.cloudfront.net/add-ons/smart-coupons-icon@2x.png";s:11:"description";s:106:"Enhance your coupon options - create gift certificates, store credit, coupons based on purchases and more.";s:6:"button";s:9:"From: $99";s:6:"plugin";s:55:"woocommerce-smart-coupons/woocommerce-smart-coupons.php";}i:1;O:8:"stdClass":6:{s:4:"href";s:109:"https://woocommerce.com/products/follow-up-emails/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"title";s:16:"Follow Up Emails";s:5:"image";s:74:"https://d3t0oesq8995hv.cloudfront.net/add-ons/follow-up-emails-icon@2x.png";s:11:"description";s:140:"Automatically contact customers after purchase - be it everyone, your most loyal or your biggest spenders - and keep your store top-of-mind.";s:6:"button";s:9:"From: $99";s:6:"plugin";s:61:"woocommerce-follow-up-emails/woocommerce-follow-up-emails.php";}i:2;O:8:"stdClass":6:{s:4:"href";s:112:"https://woocommerce.com/products/google-product-feed/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"title";s:19:"Google Product Feed";s:5:"image";s:77:"https://d3t0oesq8995hv.cloudfront.net/add-ons/google-product-feed-icon@2x.png";s:11:"description";s:61:"Let customers find you when shopping for products via Google.";s:6:"button";s:9:"From: $79";s:6:"plugin";s:45:"woocommerce-product-feeds/woocommerce-gpf.php";}}}}}', 'no'),
(503, '_site_transient_timeout_popular_importers_1ab6a5b784945d96c6eaf40a60d61f2e', '1485264865', 'no'),
(504, '_site_transient_popular_importers_1ab6a5b784945d96c6eaf40a60d61f2e', 'a:2:{s:9:"importers";a:8:{s:7:"blogger";a:4:{s:4:"name";s:7:"Blogger";s:11:"description";s:54:"Import posts, comments, and users from a Blogger blog.";s:11:"plugin-slug";s:16:"blogger-importer";s:11:"importer-id";s:7:"blogger";}s:9:"wpcat2tag";a:4:{s:4:"name";s:29:"Categories and Tags Converter";s:11:"description";s:71:"Convert existing categories to tags or tags to categories, selectively.";s:11:"plugin-slug";s:18:"wpcat2tag-importer";s:11:"importer-id";s:10:"wp-cat2tag";}s:11:"livejournal";a:4:{s:4:"name";s:11:"LiveJournal";s:11:"description";s:46:"Import posts from LiveJournal using their API.";s:11:"plugin-slug";s:20:"livejournal-importer";s:11:"importer-id";s:11:"livejournal";}s:11:"movabletype";a:4:{s:4:"name";s:24:"Movable Type and TypePad";s:11:"description";s:62:"Import posts and comments from a Movable Type or TypePad blog.";s:11:"plugin-slug";s:20:"movabletype-importer";s:11:"importer-id";s:2:"mt";}s:4:"opml";a:4:{s:4:"name";s:8:"Blogroll";s:11:"description";s:28:"Import links in OPML format.";s:11:"plugin-slug";s:13:"opml-importer";s:11:"importer-id";s:4:"opml";}s:3:"rss";a:4:{s:4:"name";s:3:"RSS";s:11:"description";s:30:"Import posts from an RSS feed.";s:11:"plugin-slug";s:12:"rss-importer";s:11:"importer-id";s:3:"rss";}s:6:"tumblr";a:4:{s:4:"name";s:6:"Tumblr";s:11:"description";s:53:"Import posts &amp; media from Tumblr using their API.";s:11:"plugin-slug";s:15:"tumblr-importer";s:11:"importer-id";s:6:"tumblr";}s:9:"wordpress";a:4:{s:4:"name";s:9:"WordPress";s:11:"description";s:96:"Import posts, pages, comments, custom fields, categories, and tags from a WordPress export file.";s:11:"plugin-slug";s:18:"wordpress-importer";s:11:"importer-id";s:9:"wordpress";}}s:10:"translated";b:0;}', 'no'),
(342, 'WPLANG', '', 'yes'),
(403, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(506, 'product_cat_children', 'a:2:{i:10;a:2:{i:0;i:11;i:1;i:15;}i:12;a:2:{i:0;i:14;i:1;i:16;}}', 'yes'),
(443, 'woocommerce_permalinks', 'a:5:{s:13:"category_base";s:0:"";s:8:"tag_base";s:0:"";s:14:"attribute_base";s:0:"";s:12:"product_base";s:5:"/shop";s:22:"use_verbose_page_rules";b:1;}', 'yes'),
(2277, '_transient_wc_shipping_method_count_1_1485163256', '0', 'no'),
(2212, '_transient_timeout_wc_term_counts', '1495834723', 'no'),
(2213, '_transient_wc_term_counts', 'a:7:{i:16;s:1:"4";i:10;s:2:"10";i:11;s:1:"5";i:12;s:1:"7";i:13;s:1:"5";i:14;s:1:"2";i:15;s:1:"5";}', 'no'),
(2486, '_transient_timeout_wc_related_70', '1495685072', 'no'),
(2487, '_transient_wc_related_70', 'a:4:{i:0;s:2:"67";i:1;s:2:"73";i:2;s:2:"76";i:3;s:2:"79";}', 'no'),
(2497, '_site_transient_timeout_theme_roots', '1495609201', 'no'),
(2498, '_site_transient_theme_roots', 'a:4:{s:14:"clean-commerce";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(2226, '_site_transient_timeout_browser_fa9d3b6a12ca197fcd0b8da44b832bb2', '1493994992', 'no'),
(2227, '_site_transient_browser_fa9d3b6a12ca197fcd0b8da44b832bb2', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"57.0.2987.133";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(2489, '_transient_timeout_wc_related_37', '1495693182', 'no'),
(2490, '_transient_wc_related_37', 'a:9:{i:0;s:2:"15";i:1;s:2:"19";i:2;s:3:"102";i:3;s:2:"34";i:4;s:3:"103";i:5;s:3:"104";i:6;s:3:"105";i:7;s:3:"106";i:8;s:3:"107";}', 'no'),
(2011, '_site_transient_timeout_browser_cc5d8203ce9b96784a0bea9c5a67de54', '1489637867', 'no'),
(1081, '_site_transient_timeout_browser_dff177876e22ddc43470e135e8edbe87', '1486987005', 'no'),
(1082, '_site_transient_browser_dff177876e22ddc43470e135e8edbe87', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"55.0.2883.95";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(2276, '_transient_timeout_wc_shipping_method_count_1_1485163256', '1496491019', 'no'),
(831, '_site_transient_timeout_browser_3724cf524ce46cd3376f6aebb4c04837', '1485931951', 'no'),
(832, '_site_transient_browser_3724cf524ce46cd3376f6aebb4c04837', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"55.0.2883.87";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(2232, '_transient_timeout_wc_low_stock_count', '1495982192', 'no'),
(2233, '_transient_wc_low_stock_count', '0', 'no'),
(2234, '_transient_timeout_wc_outofstock_count', '1495982192', 'no'),
(2235, '_transient_wc_outofstock_count', '0', 'no'),
(893, '_site_transient_timeout_browser_1e61bcee9a0f0af908e28ad38763cd0c', '1486037625', 'no'),
(894, '_site_transient_browser_1e61bcee9a0f0af908e28ad38763cd0c', 'a:9:{s:8:"platform";s:5:"Linux";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"49.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(909, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:13:"joe@xendit.co";s:7:"version";s:5:"4.7.5";s:9:"timestamp";i:1494985936;}', 'no'),
(2012, '_site_transient_browser_cc5d8203ce9b96784a0bea9c5a67de54', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"56.0.2924.87";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(1227, '_site_transient_browser_e962b733612dd4249c54f83e15b3b715', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"56.0.2924.87";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(2025, '_site_transient_timeout_browser_0e93e3cba5cdc52f3e386bb6b69cb23c', '1489722294', 'no'),
(2026, '_site_transient_browser_0e93e3cba5cdc52f3e386bb6b69cb23c', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"56.0.2924.87";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(2249, 'duplicator_settings', 'a:10:{s:7:"version";s:5:"1.2.8";s:18:"uninstall_settings";b:1;s:15:"uninstall_files";b:1;s:16:"uninstall_tables";b:1;s:13:"package_debug";b:0;s:17:"package_mysqldump";b:0;s:22:"package_mysqldump_path";s:0:"";s:24:"package_phpdump_qrylimit";s:3:"100";s:17:"package_zip_flush";b:0;s:20:"storage_htaccess_off";b:0;}', 'yes'),
(2250, 'duplicator_version_plugin', '1.2.8', 'yes'),
(2253, 'duplicator_ui_view_state', 'a:3:{s:22:"dup-pack-storage-panel";s:1:"0";s:22:"dup-pack-archive-panel";s:1:"0";s:24:"dup-pack-installer-panel";s:1:"0";}', 'yes'),
(2254, 'duplicator_package_active', 'O:11:"DUP_Package":23:{s:7:"Created";s:19:"2017-04-28 14:39:19";s:7:"Version";s:5:"1.2.6";s:9:"VersionWP";s:5:"4.7.4";s:9:"VersionDB";s:6:"5.6.35";s:10:"VersionPHP";s:6:"5.5.38";s:9:"VersionOS";s:5:"Linux";s:2:"ID";N;s:4:"Name";s:26:"20170428_xenditdevelopment";s:4:"Hash";s:32:"f6cea29e5648bb126650170428143919";s:8:"NameHash";s:59:"20170428_xenditdevelopment_f6cea29e5648bb126650170428143919";s:4:"Type";i:0;s:5:"Notes";s:0:"";s:9:"StorePath";s:51:"/home/noorpw/public_html/xendit/wp/wp-snapshots/tmp";s:8:"StoreURL";s:43:"http://xendit.projectby.id/wp/wp-snapshots/";s:8:"ScanFile";s:69:"20170428_xenditdevelopment_f6cea29e5648bb126650170428143919_scan.json";s:7:"Runtime";N;s:7:"ExeSize";N;s:7:"ZipSize";N;s:6:"Status";N;s:6:"WPUser";N;s:7:"Archive";O:11:"DUP_Archive":13:{s:10:"FilterDirs";s:0:"";s:10:"FilterExts";s:0:"";s:13:"FilterDirsAll";a:0:{}s:13:"FilterExtsAll";a:0:{}s:8:"FilterOn";i:0;s:4:"File";N;s:6:"Format";s:3:"ZIP";s:7:"PackDir";s:34:"/home/noorpw/public_html/xendit/wp";s:4:"Size";i:0;s:4:"Dirs";a:0:{}s:5:"Files";a:0:{}s:10:"FilterInfo";O:23:"DUP_Archive_Filter_Info":6:{s:4:"Dirs";O:34:"DUP_Archive_Filter_Scope_Directory":4:{s:7:"Warning";a:0:{}s:10:"Unreadable";a:0:{}s:4:"Core";a:0:{}s:8:"Instance";a:0:{}}s:5:"Files";O:29:"DUP_Archive_Filter_Scope_File":5:{s:4:"Size";a:0:{}s:7:"Warning";a:0:{}s:10:"Unreadable";a:0:{}s:4:"Core";a:0:{}s:8:"Instance";a:0:{}}s:4:"Exts";O:29:"DUP_Archive_Filter_Scope_Base":2:{s:4:"Core";a:0:{}s:8:"Instance";a:0:{}}s:9:"UDirCount";i:0;s:10:"UFileCount";i:0;s:9:"UExtCount";i:0;}s:10:"\0*\0Package";O:11:"DUP_Package":23:{s:7:"Created";s:19:"2017-04-28 14:39:19";s:7:"Version";s:5:"1.2.6";s:9:"VersionWP";s:5:"4.7.4";s:9:"VersionDB";s:6:"5.6.35";s:10:"VersionPHP";s:6:"5.5.38";s:9:"VersionOS";s:5:"Linux";s:2:"ID";N;s:4:"Name";s:26:"20170428_xenditdevelopment";s:4:"Hash";s:32:"f6cea29e5648bb126650170428143919";s:8:"NameHash";s:59:"20170428_xenditdevelopment_f6cea29e5648bb126650170428143919";s:4:"Type";i:0;s:5:"Notes";s:0:"";s:9:"StorePath";s:51:"/home/noorpw/public_html/xendit/wp/wp-snapshots/tmp";s:8:"StoreURL";s:43:"http://xendit.projectby.id/wp/wp-snapshots/";s:8:"ScanFile";N;s:7:"Runtime";N;s:7:"ExeSize";N;s:7:"ZipSize";N;s:6:"Status";N;s:6:"WPUser";N;s:7:"Archive";r:22;s:9:"Installer";O:13:"DUP_Installer":12:{s:4:"File";N;s:4:"Size";i:0;s:10:"OptsDBHost";s:0:"";s:10:"OptsDBPort";s:0:"";s:10:"OptsDBName";s:0:"";s:10:"OptsDBUser";s:0:"";s:12:"OptsSSLAdmin";i:0;s:12:"OptsSSLLogin";i:0;s:11:"OptsCacheWP";i:0;s:13:"OptsCachePath";i:0;s:10:"OptsURLNew";s:0:"";s:10:"\0*\0Package";r:52;}s:8:"Database";O:12:"DUP_Database":13:{s:4:"Type";s:5:"MySQL";s:4:"Size";N;s:4:"File";N;s:4:"Path";N;s:12:"FilterTables";s:0:"";s:8:"FilterOn";i:0;s:4:"Name";N;s:10:"Compatible";s:0:"";s:8:"Comments";s:28:"MySQL Community Server (GPL)";s:10:"\0*\0Package";r:52;s:25:"\0DUP_Database\0dbStorePath";N;s:23:"\0DUP_Database\0EOFMarker";s:0:"";s:26:"\0DUP_Database\0networkFlush";b:0;}}}s:9:"Installer";r:74;s:8:"Database";r:87;}', 'yes'),
(2467, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1495608859;s:7:"checked";a:4:{s:14:"clean-commerce";s:5:"1.0.5";s:13:"twentyfifteen";s:3:"1.7";s:15:"twentyseventeen";s:3:"1.1";s:13:"twentysixteen";s:3:"1.3";}s:8:"response";a:2:{s:14:"clean-commerce";a:4:{s:5:"theme";s:14:"clean-commerce";s:11:"new_version";s:5:"1.0.8";s:3:"url";s:44:"https://wordpress.org/themes/clean-commerce/";s:7:"package";s:62:"https://downloads.wordpress.org/theme/clean-commerce.1.0.8.zip";}s:15:"twentyseventeen";a:4:{s:5:"theme";s:15:"twentyseventeen";s:11:"new_version";s:3:"1.2";s:3:"url";s:45:"https://wordpress.org/themes/twentyseventeen/";s:7:"package";s:61:"https://downloads.wordpress.org/theme/twentyseventeen.1.2.zip";}}s:12:"translations";a:0:{}}', 'no'),
(2512, '_transient_wc_attribute_taxonomies', 'a:1:{i:0;O:8:"stdClass":6:{s:12:"attribute_id";s:1:"1";s:14:"attribute_name";s:5:"color";s:15:"attribute_label";s:5:"color";s:14:"attribute_type";s:6:"select";s:17:"attribute_orderby";s:10:"menu_order";s:16:"attribute_public";s:1:"0";}}', 'yes'),
(2264, '_site_transient_timeout_browser_68c0fa3e79a1e70d124fda3e19898936', '1494501989', 'no'),
(2281, '_transient_wc_count_comments', 'O:8:"stdClass":7:{s:8:"approved";s:2:"34";s:14:"total_comments";i:34;s:3:"all";i:34;s:9:"moderated";i:0;s:4:"spam";i:0;s:5:"trash";i:0;s:12:"post-trashed";i:0;}', 'yes'),
(2479, '_transient_timeout_wc_report_sales_by_date', '1495696115', 'no'),
(2480, '_transient_wc_report_sales_by_date', 'a:15:{s:32:"0655989d70f1a26ac7e6dc7d540897f8";a:0:{}s:32:"f160196efec1a694726e6485379b58cc";a:0:{}s:32:"d76d7f8fe1b634571f288feccc514de5";a:0:{}s:32:"8a73258c853afe5d9b7efb57e83a67b8";N;s:32:"c3fcc729ff77cadbc09a4ec4b3f286f2";a:0:{}s:32:"2e2929095f9c0ec52404bf2fe79b4da6";a:0:{}s:32:"42c9b30ec962f71ddf8d51f36761fad3";a:0:{}s:32:"f1478c0e6d12221af52feb1f681c6368";a:0:{}s:32:"9fd216090fbd08257a3988a95d45ec3c";a:0:{}s:32:"f2419e13317a4925d86524079feb0c23";a:0:{}s:32:"f865de0471d5c262058275e624dc24f7";N;s:32:"db99c46b62b75633da2af65a029c9835";a:0:{}s:32:"eba3b6e3ed2850aff0800e633129bf1f";a:0:{}s:32:"02492d59a69a14ead8604e3db74bc74a";a:0:{}s:32:"a0275442f0dd9ce91f102ea6d4ec04fa";a:0:{}}', 'no'),
(2502, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.7.5.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.7.5.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.7.5-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.7.5-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.7.5";s:7:"version";s:5:"4.7.5";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1495608839;s:15:"version_checked";s:5:"4.7.5";s:12:"translations";a:0:{}}', 'no'),
(2478, '_transient_feed_mod_07f9ff8c98c9208e4fb710a00972ecab', '1495598560', 'no'),
(2495, 'ftp_credentials', 'a:3:{s:8:"hostname";s:21:"woocommerce.xendit.co";s:8:"username";s:10:"s3adminphp";s:15:"connection_type";s:4:"ftps";}', 'yes');
INSERT INTO `xen_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(2514, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1495608861;s:7:"checked";a:12:{s:19:"akismet/akismet.php";s:5:"3.3.2";s:27:"bulk-delete/bulk-delete.php";s:5:"5.5.5";s:77:"bulk-price-converter-for-woocommerce/bulk-price-converter-for-woocommerce.php";s:5:"1.2.0";s:25:"duplicator/duplicator.php";s:5:"1.2.8";s:55:"ecommerce-product-catalog/ecommerce-product-catalog.php";s:5:"2.7.1";s:9:"hello.php";s:3:"1.6";s:27:"woocommerce/woocommerce.php";s:5:"3.0.7";s:43:"woocommerce-store-toolkit/store-toolkit.php";s:5:"1.7.2";s:106:"woocommerce-extra-charges-to-payment-gateways/woocommerce-extra-charges-option-to-payment-gateways-std.php";s:8:"1.0.12.3";s:80:"mq-woocommerce-products-price-bulk-edit/woocommerce_products_price_bulk_edit.php";s:3:"2.0";s:41:"wordpress-importer/wordpress-importer.php";s:5:"0.6.3";s:57:"xendit-woocommerce-gateway/xendit-woocommerce-gateway.php";s:3:"1.0";}s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:11:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.3.2";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.3.3.2.zip";}s:27:"bulk-delete/bulk-delete.php";O:8:"stdClass":7:{s:2:"id";s:4:"6451";s:4:"slug";s:11:"bulk-delete";s:6:"plugin";s:27:"bulk-delete/bulk-delete.php";s:11:"new_version";s:5:"5.5.5";s:3:"url";s:42:"https://wordpress.org/plugins/bulk-delete/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/bulk-delete.5.5.5.zip";s:14:"upgrade_notice";s:67:"Fixed a bug that caused Jetpack messages to be not deleted properly";}s:77:"bulk-price-converter-for-woocommerce/bulk-price-converter-for-woocommerce.php";O:8:"stdClass":6:{s:2:"id";s:5:"69062";s:4:"slug";s:36:"bulk-price-converter-for-woocommerce";s:6:"plugin";s:77:"bulk-price-converter-for-woocommerce/bulk-price-converter-for-woocommerce.php";s:11:"new_version";s:5:"1.2.0";s:3:"url";s:67:"https://wordpress.org/plugins/bulk-price-converter-for-woocommerce/";s:7:"package";s:85:"https://downloads.wordpress.org/plugin/bulk-price-converter-for-woocommerce.1.2.0.zip";}s:25:"duplicator/duplicator.php";O:8:"stdClass":6:{s:2:"id";s:5:"22600";s:4:"slug";s:10:"duplicator";s:6:"plugin";s:25:"duplicator/duplicator.php";s:11:"new_version";s:5:"1.2.8";s:3:"url";s:41:"https://wordpress.org/plugins/duplicator/";s:7:"package";s:59:"https://downloads.wordpress.org/plugin/duplicator.1.2.8.zip";}s:55:"ecommerce-product-catalog/ecommerce-product-catalog.php";O:8:"stdClass":6:{s:2:"id";s:5:"47397";s:4:"slug";s:25:"ecommerce-product-catalog";s:6:"plugin";s:55:"ecommerce-product-catalog/ecommerce-product-catalog.php";s:11:"new_version";s:5:"2.7.1";s:3:"url";s:56:"https://wordpress.org/plugins/ecommerce-product-catalog/";s:7:"package";s:74:"https://downloads.wordpress.org/plugin/ecommerce-product-catalog.2.7.1.zip";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}s:27:"woocommerce/woocommerce.php";O:8:"stdClass":7:{s:2:"id";s:5:"25331";s:4:"slug";s:11:"woocommerce";s:6:"plugin";s:27:"woocommerce/woocommerce.php";s:11:"new_version";s:5:"3.0.7";s:3:"url";s:42:"https://wordpress.org/plugins/woocommerce/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/woocommerce.3.0.7.zip";s:14:"upgrade_notice";s:132:"3.0 is a major update. Make a full site backup, update your theme and extensions, and review update best practices before upgrading.";}s:43:"woocommerce-store-toolkit/store-toolkit.php";O:8:"stdClass":6:{s:2:"id";s:5:"34163";s:4:"slug";s:25:"woocommerce-store-toolkit";s:6:"plugin";s:43:"woocommerce-store-toolkit/store-toolkit.php";s:11:"new_version";s:5:"1.7.2";s:3:"url";s:56:"https://wordpress.org/plugins/woocommerce-store-toolkit/";s:7:"package";s:68:"https://downloads.wordpress.org/plugin/woocommerce-store-toolkit.zip";}s:106:"woocommerce-extra-charges-to-payment-gateways/woocommerce-extra-charges-option-to-payment-gateways-std.php";O:8:"stdClass":6:{s:2:"id";s:5:"51507";s:4:"slug";s:45:"woocommerce-extra-charges-to-payment-gateways";s:6:"plugin";s:106:"woocommerce-extra-charges-to-payment-gateways/woocommerce-extra-charges-option-to-payment-gateways-std.php";s:11:"new_version";s:8:"1.0.12.3";s:3:"url";s:76:"https://wordpress.org/plugins/woocommerce-extra-charges-to-payment-gateways/";s:7:"package";s:88:"https://downloads.wordpress.org/plugin/woocommerce-extra-charges-to-payment-gateways.zip";}s:80:"mq-woocommerce-products-price-bulk-edit/woocommerce_products_price_bulk_edit.php";O:8:"stdClass":6:{s:2:"id";s:5:"54833";s:4:"slug";s:39:"mq-woocommerce-products-price-bulk-edit";s:6:"plugin";s:80:"mq-woocommerce-products-price-bulk-edit/woocommerce_products_price_bulk_edit.php";s:11:"new_version";s:3:"2.0";s:3:"url";s:70:"https://wordpress.org/plugins/mq-woocommerce-products-price-bulk-edit/";s:7:"package";s:82:"https://downloads.wordpress.org/plugin/mq-woocommerce-products-price-bulk-edit.zip";}s:41:"wordpress-importer/wordpress-importer.php";O:8:"stdClass":6:{s:2:"id";s:5:"14975";s:4:"slug";s:18:"wordpress-importer";s:6:"plugin";s:41:"wordpress-importer/wordpress-importer.php";s:11:"new_version";s:5:"0.6.3";s:3:"url";s:49:"https://wordpress.org/plugins/wordpress-importer/";s:7:"package";s:67:"https://downloads.wordpress.org/plugin/wordpress-importer.0.6.3.zip";}}}', 'no'),
(2509, 'woocommerce_shipping_debug_mode', 'no', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `xen_postmeta`
--

DROP TABLE IF EXISTS `xen_postmeta`;
CREATE TABLE `xen_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `xen_postmeta`
--

INSERT INTO `xen_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(4263, 159, '_prices_include_tax', 'no'),
(4264, 159, '_customer_ip_address', '182.253.73.166'),
(4265, 159, '_customer_user_agent', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(4260, 99, '_wc_review_count', '2'),
(4258, 105, '_wc_review_count', '2'),
(4259, 103, '_wc_review_count', '2'),
(4256, 15, '_wc_review_count', '1'),
(4257, 90, '_wc_review_count', '1'),
(4218, 158, '_billing_email', 'sutayub@gmail.com'),
(4217, 158, '_billing_company', ''),
(4216, 158, '_billing_last_name', 'Noor'),
(4215, 158, '_billing_first_name', 'Hassan'),
(4213, 158, '_cart_hash', 'bc3fe4da2b58486062573b109588237c'),
(4211, 158, '_customer_user', '1'),
(4212, 158, '_created_via', 'checkout'),
(3204, 131, '_weight', ''),
(3205, 131, '_length', ''),
(3206, 131, '_width', ''),
(3198, 131, '_stock_status', 'instock'),
(3199, 131, 'total_sales', '8'),
(3200, 131, '_downloadable', 'no'),
(3201, 131, '_virtual', 'no'),
(3202, 131, '_purchase_note', ''),
(3203, 131, '_featured', 'no'),
(4172, 157, '_customer_user', '1'),
(4173, 157, '_created_via', 'checkout'),
(4174, 157, '_cart_hash', '70d7f283294bacda5f6d5dc3e4eb2a63'),
(4171, 157, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(4170, 157, '_customer_ip_address', '36.82.188.99'),
(4169, 157, '_prices_include_tax', 'no'),
(4168, 157, '_order_currency', 'IDR'),
(4167, 157, '_order_key', 'wc_order_58a2a900c617b'),
(4166, 156, '_order_stock_reduced', '1'),
(4165, 156, '_paid_date', '2017-02-14 14:46:05'),
(4164, 156, '_completed_date', '2017-02-14 14:46:05'),
(4163, 156, '_recorded_sales', 'yes'),
(4162, 156, '_download_permissions_granted', '1'),
(4161, 156, 'Xendit_expiry', '1487141151'),
(4160, 156, 'Xendit_invoice', '58a2a7a017a5a34f20a65e04'),
(4158, 156, '_order_shipping_tax', '0'),
(4159, 156, '_order_total', '2000000.00'),
(4157, 156, '_order_tax', '0'),
(4156, 156, '_cart_discount_tax', '0'),
(4155, 156, '_cart_discount', '0'),
(4154, 156, '_order_shipping', ''),
(4082, 155, '_prices_include_tax', 'no'),
(4012, 153, '_billing_state', 'JT'),
(4013, 153, '_billing_postcode', '56481'),
(4014, 153, '_shipping_first_name', 'Hassan'),
(4015, 153, '_shipping_last_name', 'Noor'),
(4016, 153, '_shipping_company', ''),
(4017, 153, '_shipping_country', 'ID'),
(4018, 153, '_shipping_address_1', 'WONOLELO 05/02, SAWANGAN'),
(4019, 153, '_shipping_address_2', ''),
(4020, 153, '_shipping_city', 'MAGELANG'),
(4021, 153, '_shipping_state', 'JT'),
(4022, 153, '_shipping_postcode', '56481'),
(4023, 153, '_payment_method', 'xendit_gateway'),
(4024, 153, '_payment_method_title', 'Xendit'),
(4025, 153, '_order_shipping', ''),
(4026, 153, '_cart_discount', '0'),
(4027, 153, '_cart_discount_tax', '0'),
(4028, 153, '_order_tax', '0'),
(4029, 153, '_order_shipping_tax', '0'),
(4030, 153, '_order_total', '2000000.00'),
(4031, 153, 'Xendit_invoice', '58a275a017a5a34f20a65df7'),
(4032, 153, 'Xendit_expiry', '1487128352'),
(4033, 153, '_download_permissions_granted', '1'),
(4034, 153, '_recorded_sales', 'yes'),
(4035, 153, '_paid_date', '2017-02-14 11:12:37'),
(4036, 153, '_order_stock_reduced', '1'),
(4037, 154, '_order_key', 'wc_order_58a278e65f350'),
(4038, 154, '_order_currency', 'IDR'),
(4039, 154, '_prices_include_tax', 'no'),
(4040, 154, '_customer_ip_address', '36.82.188.99'),
(4041, 154, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(1328, 16, '_wp_attached_file', '2013/06/T_1_front.jpg'),
(1329, 16, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:21:"2013/06/T_1_front.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"T_1_front-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"T_1_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"T_1_front-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"T_1_front-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"T_1_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:21:"T_1_front-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:23:"clean-commerce-carousel";a:4:{s:4:"file";s:21:"T_1_front-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(4110, 155, '_payment_method_title', 'Xendit'),
(4109, 155, '_payment_method', 'xendit_gateway'),
(4108, 155, '_shipping_postcode', '56481'),
(4107, 155, '_shipping_state', 'JT'),
(4106, 155, '_shipping_city', 'MAGELANG'),
(4105, 155, '_shipping_address_2', ''),
(4104, 155, '_shipping_address_1', 'WONOLELO 05/02, SAWANGAN'),
(4103, 155, '_shipping_country', 'ID'),
(4100, 155, '_shipping_first_name', 'Hassan'),
(4102, 155, '_shipping_company', ''),
(4101, 155, '_shipping_last_name', 'Noor'),
(4098, 155, '_billing_state', 'JT'),
(4099, 155, '_billing_postcode', '56481'),
(4097, 155, '_billing_city', 'MAGELANG'),
(4096, 155, '_billing_address_2', ''),
(4093, 155, '_billing_phone', '081330001060'),
(4094, 155, '_billing_country', 'ID'),
(4095, 155, '_billing_address_1', 'WONOLELO 05/02, SAWANGAN'),
(4092, 155, '_billing_email', 'sutayub@gmail.com'),
(4091, 155, '_billing_company', ''),
(4090, 155, '_billing_last_name', 'Noor'),
(4089, 155, '_billing_first_name', 'Hassan'),
(4085, 155, '_customer_user', '1'),
(4086, 155, '_created_via', 'checkout'),
(4087, 155, '_cart_hash', '1f54b828d618758b339fec9f3a41e59c'),
(4088, 155, '_order_version', '2.6.13'),
(4083, 155, '_customer_ip_address', '36.82.188.99'),
(4084, 155, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(4081, 155, '_order_currency', 'IDR'),
(4080, 155, '_order_key', 'wc_order_58a29612748db'),
(4011, 153, '_billing_city', 'MAGELANG'),
(1331, 17, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:20:"2013/06/T_1_back.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"T_1_back-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"T_1_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"T_1_back-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"T_1_back-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"T_1_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:20:"T_1_back-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:23:"clean-commerce-carousel";a:4:{s:4:"file";s:20:"T_1_back-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1330, 17, '_wp_attached_file', '2013/06/T_1_back.jpg'),
(1333, 48, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:21:"2013/06/T_2_front.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"T_2_front-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"T_2_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"T_2_front-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"T_2_front-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"T_2_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:21:"T_2_front-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:23:"clean-commerce-carousel";a:4:{s:4:"file";s:21:"T_2_front-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1332, 48, '_wp_attached_file', '2013/06/T_2_front.jpg'),
(1335, 21, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:20:"2013/06/T_2_back.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"T_2_back-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"T_2_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"T_2_back-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"T_2_back-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"T_2_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:20:"T_2_back-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:23:"clean-commerce-carousel";a:4:{s:4:"file";s:20:"T_2_back-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1334, 21, '_wp_attached_file', '2013/06/T_2_back.jpg'),
(1339, 26, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:20:"2013/06/T_3_back.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"T_3_back-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"T_3_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"T_3_back-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"T_3_back-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"T_3_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:20:"T_3_back-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:23:"clean-commerce-carousel";a:4:{s:4:"file";s:20:"T_3_back-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1338, 26, '_wp_attached_file', '2013/06/T_3_back.jpg'),
(1336, 25, '_wp_attached_file', '2013/06/T_4_front.jpg'),
(1337, 25, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:21:"2013/06/T_4_front.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"T_4_front-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"T_4_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"T_4_front-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"T_4_front-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"T_4_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:21:"T_4_front-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:23:"clean-commerce-carousel";a:4:{s:4:"file";s:21:"T_4_front-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1340, 27, '_wp_attached_file', '2013/06/T_3_front.jpg'),
(1341, 27, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:21:"2013/06/T_3_front.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"T_3_front-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"T_3_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"T_3_front-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"T_3_front-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"T_3_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:21:"T_3_front-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:23:"clean-commerce-carousel";a:4:{s:4:"file";s:21:"T_3_front-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1343, 49, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:20:"2013/06/T_4_back.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"T_4_back-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"T_4_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"T_4_back-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"T_4_back-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"T_4_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:20:"T_4_back-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:23:"clean-commerce-carousel";a:4:{s:4:"file";s:20:"T_4_back-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1342, 49, '_wp_attached_file', '2013/06/T_4_back.jpg'),
(4254, 83, '_wc_review_count', '0'),
(4255, 93, '_wc_review_count', '0'),
(4253, 96, '_wc_review_count', '2'),
(4252, 76, '_wc_review_count', '1'),
(4251, 107, '_wc_review_count', '2'),
(4248, 104, '_wc_review_count', '3'),
(4249, 102, '_wc_review_count', '1'),
(4250, 34, '_wc_review_count', '0'),
(4247, 73, '_wc_review_count', '2'),
(4246, 87, '_wc_review_count', '1'),
(4245, 79, '_wc_review_count', '0'),
(4244, 158, 'Xendit_expiry', '1487141761'),
(4243, 158, 'Xendit_invoice', '58a2aa0217a5a34f20a65e06'),
(4241, 158, '_order_shipping_tax', '0'),
(4242, 158, '_order_total', '13125.00'),
(4240, 158, '_order_tax', '0'),
(4196, 157, '_payment_method', 'xendit_gateway'),
(1345, 50, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:22:"2013/06/T_4_front1.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"T_4_front1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"T_4_front1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"T_4_front1-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:22:"T_4_front1-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:22:"T_4_front1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:22:"T_4_front1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:23:"clean-commerce-carousel";a:4:{s:4:"file";s:22:"T_4_front1-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1344, 50, '_wp_attached_file', '2013/06/T_4_front1.jpg'),
(1347, 51, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:21:"2013/06/T_5_front.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"T_5_front-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"T_5_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"T_5_front-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"T_5_front-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"T_5_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:21:"T_5_front-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:23:"clean-commerce-carousel";a:4:{s:4:"file";s:21:"T_5_front-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1346, 51, '_wp_attached_file', '2013/06/T_5_front.jpg'),
(1349, 33, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:20:"2013/06/T_5_back.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"T_5_back-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"T_5_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"T_5_back-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"T_5_back-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"T_5_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:20:"T_5_back-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:23:"clean-commerce-carousel";a:4:{s:4:"file";s:20:"T_5_back-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1348, 33, '_wp_attached_file', '2013/06/T_5_back.jpg'),
(1351, 35, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:21:"2013/06/T_6_front.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"T_6_front-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"T_6_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"T_6_front-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"T_6_front-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"T_6_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:21:"T_6_front-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:23:"clean-commerce-carousel";a:4:{s:4:"file";s:21:"T_6_front-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1350, 35, '_wp_attached_file', '2013/06/T_6_front.jpg'),
(1353, 36, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:20:"2013/06/T_6_back.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"T_6_back-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"T_6_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"T_6_back-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"T_6_back-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"T_6_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:20:"T_6_back-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:23:"clean-commerce-carousel";a:4:{s:4:"file";s:20:"T_6_back-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1352, 36, '_wp_attached_file', '2013/06/T_6_back.jpg'),
(1355, 38, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:21:"2013/06/T_7_front.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"T_7_front-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"T_7_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"T_7_front-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"T_7_front-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"T_7_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:21:"T_7_front-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:23:"clean-commerce-carousel";a:4:{s:4:"file";s:21:"T_7_front-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1354, 38, '_wp_attached_file', '2013/06/T_7_front.jpg'),
(1357, 39, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:20:"2013/06/T_7_back.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"T_7_back-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"T_7_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"T_7_back-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"T_7_back-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"T_7_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:20:"T_7_back-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:23:"clean-commerce-carousel";a:4:{s:4:"file";s:20:"T_7_back-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1356, 39, '_wp_attached_file', '2013/06/T_7_back.jpg'),
(713, 28, '_menu_item_type', 'post_type'),
(714, 28, '_menu_item_menu_item_parent', '0'),
(715, 28, '_menu_item_object_id', '4'),
(716, 28, '_menu_item_object', 'page'),
(717, 28, '_menu_item_target', ''),
(718, 28, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(719, 28, '_menu_item_xfn', ''),
(720, 28, '_menu_item_url', ''),
(1361, 44, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:25:"2013/06/hoodie_7_back.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"hoodie_7_back-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"hoodie_7_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"hoodie_7_back-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:25:"hoodie_7_back-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:25:"hoodie_7_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:25:"hoodie_7_back-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:23:"clean-commerce-carousel";a:4:{s:4:"file";s:25:"hoodie_7_back-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(722, 29, '_menu_item_type', 'post_type'),
(723, 29, '_menu_item_menu_item_parent', '0'),
(724, 29, '_menu_item_object_id', '7'),
(725, 29, '_menu_item_object', 'page'),
(726, 29, '_menu_item_target', ''),
(727, 29, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(728, 29, '_menu_item_xfn', ''),
(729, 29, '_menu_item_url', ''),
(731, 30, '_menu_item_type', 'custom'),
(732, 30, '_menu_item_menu_item_parent', '0'),
(733, 30, '_menu_item_object_id', '30'),
(734, 30, '_menu_item_object', 'custom'),
(735, 30, '_menu_item_target', ''),
(736, 30, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(737, 30, '_menu_item_xfn', ''),
(738, 30, '_menu_item_url', '#'),
(1360, 44, '_wp_attached_file', '2013/06/hoodie_7_back.jpg'),
(740, 31, '_menu_item_type', 'post_type'),
(741, 31, '_menu_item_menu_item_parent', '30'),
(742, 31, '_menu_item_object_id', '5'),
(743, 31, '_menu_item_object', 'page'),
(744, 31, '_menu_item_target', ''),
(745, 31, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(746, 31, '_menu_item_xfn', ''),
(747, 31, '_menu_item_url', ''),
(749, 32, '_menu_item_type', 'post_type'),
(750, 32, '_menu_item_menu_item_parent', '30'),
(751, 32, '_menu_item_object_id', '6'),
(752, 32, '_menu_item_object', 'page'),
(753, 32, '_menu_item_target', ''),
(754, 32, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(755, 32, '_menu_item_xfn', ''),
(756, 32, '_menu_item_url', ''),
(1359, 43, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:26:"2013/06/hoodie_7_front.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"hoodie_7_front-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"hoodie_7_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:26:"hoodie_7_front-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:26:"hoodie_7_front-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:26:"hoodie_7_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:26:"hoodie_7_front-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:23:"clean-commerce-carousel";a:4:{s:4:"file";s:26:"hoodie_7_front-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1358, 43, '_wp_attached_file', '2013/06/hoodie_7_front.jpg'),
(4210, 158, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(1363, 52, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:25:"2013/06/hoodie_1_back.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"hoodie_1_back-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"hoodie_1_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"hoodie_1_back-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:25:"hoodie_1_back-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:25:"hoodie_1_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:25:"hoodie_1_back-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:23:"clean-commerce-carousel";a:4:{s:4:"file";s:25:"hoodie_1_back-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1362, 52, '_wp_attached_file', '2013/06/hoodie_1_back.jpg'),
(1365, 53, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:26:"2013/06/hoodie_1_front.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"hoodie_1_front-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"hoodie_1_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:26:"hoodie_1_front-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:26:"hoodie_1_front-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:26:"hoodie_1_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:26:"hoodie_1_front-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:23:"clean-commerce-carousel";a:4:{s:4:"file";s:26:"hoodie_1_front-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1364, 53, '_wp_attached_file', '2013/06/hoodie_1_front.jpg'),
(1367, 54, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:26:"2013/06/hoodie_2_front.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"hoodie_2_front-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"hoodie_2_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:26:"hoodie_2_front-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:26:"hoodie_2_front-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:26:"hoodie_2_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:26:"hoodie_2_front-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:23:"clean-commerce-carousel";a:4:{s:4:"file";s:26:"hoodie_2_front-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1366, 54, '_wp_attached_file', '2013/06/hoodie_2_front.jpg'),
(1369, 55, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:25:"2013/06/hoodie_2_back.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"hoodie_2_back-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"hoodie_2_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"hoodie_2_back-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:25:"hoodie_2_back-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:25:"hoodie_2_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:25:"hoodie_2_back-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:23:"clean-commerce-carousel";a:4:{s:4:"file";s:25:"hoodie_2_back-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1368, 55, '_wp_attached_file', '2013/06/hoodie_2_back.jpg'),
(1371, 56, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:26:"2013/06/hoodie_3_front.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"hoodie_3_front-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"hoodie_3_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:26:"hoodie_3_front-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:26:"hoodie_3_front-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:26:"hoodie_3_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:26:"hoodie_3_front-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:23:"clean-commerce-carousel";a:4:{s:4:"file";s:26:"hoodie_3_front-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1370, 56, '_wp_attached_file', '2013/06/hoodie_3_front.jpg'),
(1373, 57, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:25:"2013/06/hoodie_3_back.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"hoodie_3_back-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"hoodie_3_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"hoodie_3_back-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:25:"hoodie_3_back-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:25:"hoodie_3_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:25:"hoodie_3_back-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:23:"clean-commerce-carousel";a:4:{s:4:"file";s:25:"hoodie_3_back-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1372, 57, '_wp_attached_file', '2013/06/hoodie_3_back.jpg'),
(1375, 58, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:26:"2013/06/hoodie_4_front.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"hoodie_4_front-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"hoodie_4_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:26:"hoodie_4_front-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:26:"hoodie_4_front-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:26:"hoodie_4_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:26:"hoodie_4_front-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:23:"clean-commerce-carousel";a:4:{s:4:"file";s:26:"hoodie_4_front-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1376, 59, '_wp_attached_file', '2013/06/hoodie_4_back.jpg'),
(1382, 62, '_wp_attached_file', '2013/06/hoodie_6_front.jpg'),
(1380, 61, '_wp_attached_file', '2013/06/hoodie_5_back.jpg'),
(1379, 60, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:26:"2013/06/hoodie_5_front.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"hoodie_5_front-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"hoodie_5_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:26:"hoodie_5_front-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:26:"hoodie_5_front-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:26:"hoodie_5_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:26:"hoodie_5_front-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:23:"clean-commerce-carousel";a:4:{s:4:"file";s:26:"hoodie_5_front-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1378, 60, '_wp_attached_file', '2013/06/hoodie_5_front.jpg'),
(1381, 61, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:25:"2013/06/hoodie_5_back.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"hoodie_5_back-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"hoodie_5_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"hoodie_5_back-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:25:"hoodie_5_back-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:25:"hoodie_5_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:25:"hoodie_5_back-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:23:"clean-commerce-carousel";a:4:{s:4:"file";s:25:"hoodie_5_back-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1377, 59, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:25:"2013/06/hoodie_4_back.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"hoodie_4_back-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"hoodie_4_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"hoodie_4_back-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:25:"hoodie_4_back-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:25:"hoodie_4_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:25:"hoodie_4_back-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:23:"clean-commerce-carousel";a:4:{s:4:"file";s:25:"hoodie_4_back-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1374, 58, '_wp_attached_file', '2013/06/hoodie_4_front.jpg'),
(1384, 63, '_wp_attached_file', '2013/06/hoodie_6_back.jpg'),
(1385, 63, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:25:"2013/06/hoodie_6_back.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"hoodie_6_back-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"hoodie_6_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"hoodie_6_back-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:25:"hoodie_6_back-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:25:"hoodie_6_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:25:"hoodie_6_back-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:23:"clean-commerce-carousel";a:4:{s:4:"file";s:25:"hoodie_6_back-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO `xen_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1383, 62, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:26:"2013/06/hoodie_6_front.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"hoodie_6_front-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"hoodie_6_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:26:"hoodie_6_front-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:26:"hoodie_6_front-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:26:"hoodie_6_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:26:"hoodie_6_front-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:23:"clean-commerce-carousel";a:4:{s:4:"file";s:26:"hoodie_6_front-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1386, 68, '_wp_attached_file', '2013/06/poster_1_up.jpg'),
(1387, 68, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:23:"2013/06/poster_1_up.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"poster_1_up-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"poster_1_up-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:23:"poster_1_up-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"poster_1_up-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:23:"poster_1_up-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:23:"poster_1_up-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:23:"clean-commerce-carousel";a:4:{s:4:"file";s:23:"poster_1_up-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1388, 69, '_wp_attached_file', '2013/06/Poster_1_flat.jpg'),
(1389, 69, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:25:"2013/06/Poster_1_flat.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"Poster_1_flat-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"Poster_1_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"Poster_1_flat-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:25:"Poster_1_flat-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:25:"Poster_1_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:25:"Poster_1_flat-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:23:"clean-commerce-carousel";a:4:{s:4:"file";s:25:"Poster_1_flat-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1390, 71, '_wp_attached_file', '2013/06/poster_2_up.jpg'),
(1391, 71, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:23:"2013/06/poster_2_up.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"poster_2_up-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"poster_2_up-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:23:"poster_2_up-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"poster_2_up-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:23:"poster_2_up-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:23:"poster_2_up-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:23:"clean-commerce-carousel";a:4:{s:4:"file";s:23:"poster_2_up-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1392, 72, '_wp_attached_file', '2013/06/Poster_2_flat.jpg'),
(1393, 72, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:25:"2013/06/Poster_2_flat.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"Poster_2_flat-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"Poster_2_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"Poster_2_flat-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:25:"Poster_2_flat-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:25:"Poster_2_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:25:"Poster_2_flat-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:23:"clean-commerce-carousel";a:4:{s:4:"file";s:25:"Poster_2_flat-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1394, 74, '_wp_attached_file', '2013/06/poster_3_up.jpg'),
(1395, 74, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:23:"2013/06/poster_3_up.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"poster_3_up-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"poster_3_up-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:23:"poster_3_up-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"poster_3_up-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:23:"poster_3_up-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:23:"poster_3_up-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:23:"clean-commerce-carousel";a:4:{s:4:"file";s:23:"poster_3_up-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1396, 75, '_wp_attached_file', '2013/06/Poster_3_flat.jpg'),
(1397, 75, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:25:"2013/06/Poster_3_flat.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"Poster_3_flat-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"Poster_3_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"Poster_3_flat-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:25:"Poster_3_flat-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:25:"Poster_3_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:25:"Poster_3_flat-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:23:"clean-commerce-carousel";a:4:{s:4:"file";s:25:"Poster_3_flat-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1398, 77, '_wp_attached_file', '2013/06/poster_4_up.jpg'),
(1399, 77, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:23:"2013/06/poster_4_up.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"poster_4_up-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"poster_4_up-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:23:"poster_4_up-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"poster_4_up-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:23:"poster_4_up-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:23:"poster_4_up-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:23:"clean-commerce-carousel";a:4:{s:4:"file";s:23:"poster_4_up-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1400, 78, '_wp_attached_file', '2013/06/Poster_4_flat.jpg'),
(1401, 78, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:25:"2013/06/Poster_4_flat.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"Poster_4_flat-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"Poster_4_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"Poster_4_flat-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:25:"Poster_4_flat-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:25:"Poster_4_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:25:"Poster_4_flat-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:23:"clean-commerce-carousel";a:4:{s:4:"file";s:25:"Poster_4_flat-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1402, 80, '_wp_attached_file', '2013/06/poster_5_up.jpg'),
(1403, 80, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:23:"2013/06/poster_5_up.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"poster_5_up-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"poster_5_up-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:23:"poster_5_up-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"poster_5_up-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:23:"poster_5_up-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:23:"poster_5_up-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:23:"clean-commerce-carousel";a:4:{s:4:"file";s:23:"poster_5_up-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1404, 81, '_wp_attached_file', '2013/06/Poster_5_flat.jpg'),
(1405, 81, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:25:"2013/06/Poster_5_flat.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"Poster_5_flat-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"Poster_5_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"Poster_5_flat-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:25:"Poster_5_flat-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:25:"Poster_5_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:25:"Poster_5_flat-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:23:"clean-commerce-carousel";a:4:{s:4:"file";s:25:"Poster_5_flat-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1406, 84, '_wp_attached_file', '2013/06/cd_1_angle.jpg'),
(1407, 84, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:22:"2013/06/cd_1_angle.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"cd_1_angle-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"cd_1_angle-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"cd_1_angle-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:22:"cd_1_angle-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:22:"cd_1_angle-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:22:"cd_1_angle-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:23:"clean-commerce-carousel";a:4:{s:4:"file";s:22:"cd_1_angle-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1408, 85, '_wp_attached_file', '2013/06/cd_1_flat.jpg'),
(1409, 85, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:21:"2013/06/cd_1_flat.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"cd_1_flat-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"cd_1_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"cd_1_flat-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"cd_1_flat-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"cd_1_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:21:"cd_1_flat-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:23:"clean-commerce-carousel";a:4:{s:4:"file";s:21:"cd_1_flat-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1410, 88, '_wp_attached_file', '2013/06/cd_2_angle.jpg'),
(1411, 88, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:22:"2013/06/cd_2_angle.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"cd_2_angle-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"cd_2_angle-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"cd_2_angle-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:22:"cd_2_angle-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:22:"cd_2_angle-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:22:"cd_2_angle-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:23:"clean-commerce-carousel";a:4:{s:4:"file";s:22:"cd_2_angle-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1412, 89, '_wp_attached_file', '2013/06/cd_2_flat.jpg'),
(1413, 89, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:21:"2013/06/cd_2_flat.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"cd_2_flat-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"cd_2_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"cd_2_flat-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"cd_2_flat-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"cd_2_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:21:"cd_2_flat-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:23:"clean-commerce-carousel";a:4:{s:4:"file";s:21:"cd_2_flat-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1414, 91, '_wp_attached_file', '2013/06/cd_3_angle.jpg'),
(1415, 91, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:22:"2013/06/cd_3_angle.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"cd_3_angle-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"cd_3_angle-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"cd_3_angle-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:22:"cd_3_angle-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:22:"cd_3_angle-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:22:"cd_3_angle-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:23:"clean-commerce-carousel";a:4:{s:4:"file";s:22:"cd_3_angle-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1416, 92, '_wp_attached_file', '2013/06/cd_3_flat.jpg'),
(1417, 92, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:21:"2013/06/cd_3_flat.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"cd_3_flat-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"cd_3_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"cd_3_flat-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"cd_3_flat-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"cd_3_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:21:"cd_3_flat-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:23:"clean-commerce-carousel";a:4:{s:4:"file";s:21:"cd_3_flat-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1418, 94, '_wp_attached_file', '2013/06/cd_4_flat.jpg'),
(1419, 94, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:21:"2013/06/cd_4_flat.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"cd_4_flat-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"cd_4_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"cd_4_flat-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"cd_4_flat-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"cd_4_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:21:"cd_4_flat-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:23:"clean-commerce-carousel";a:4:{s:4:"file";s:21:"cd_4_flat-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1420, 95, '_wp_attached_file', '2013/06/cd_4_angle.jpg'),
(1421, 95, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:22:"2013/06/cd_4_angle.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"cd_4_angle-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"cd_4_angle-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"cd_4_angle-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:22:"cd_4_angle-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:22:"cd_4_angle-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:22:"cd_4_angle-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:23:"clean-commerce-carousel";a:4:{s:4:"file";s:22:"cd_4_angle-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1422, 97, '_wp_attached_file', '2013/06/cd_5_angle.jpg'),
(1423, 97, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:22:"2013/06/cd_5_angle.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"cd_5_angle-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"cd_5_angle-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"cd_5_angle-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:22:"cd_5_angle-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:22:"cd_5_angle-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:22:"cd_5_angle-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:23:"clean-commerce-carousel";a:4:{s:4:"file";s:22:"cd_5_angle-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1424, 98, '_wp_attached_file', '2013/06/cd_5_flat.jpg'),
(1425, 98, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:21:"2013/06/cd_5_flat.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"cd_5_flat-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"cd_5_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"cd_5_flat-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"cd_5_flat-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"cd_5_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:21:"cd_5_flat-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:23:"clean-commerce-carousel";a:4:{s:4:"file";s:21:"cd_5_flat-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1426, 100, '_wp_attached_file', '2013/06/cd_6_angle.jpg'),
(1427, 100, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:22:"2013/06/cd_6_angle.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"cd_6_angle-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"cd_6_angle-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"cd_6_angle-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:22:"cd_6_angle-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:22:"cd_6_angle-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:22:"cd_6_angle-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:23:"clean-commerce-carousel";a:4:{s:4:"file";s:22:"cd_6_angle-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1428, 101, '_wp_attached_file', '2013/06/cd_6_flat.jpg'),
(1429, 101, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:21:"2013/06/cd_6_flat.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"cd_6_flat-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"cd_6_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"cd_6_flat-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"cd_6_flat-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"cd_6_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:21:"cd_6_flat-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:23:"clean-commerce-carousel";a:4:{s:4:"file";s:21:"cd_6_flat-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1430, 15, '_thumbnail_id', '16'),
(1431, 15, '_visibility', 'visible'),
(1432, 15, '_stock_status', 'instock'),
(1433, 15, 'total_sales', '0'),
(1434, 15, '_downloadable', 'no'),
(1435, 15, '_virtual', 'no'),
(1436, 15, '_product_image_gallery', '17'),
(1437, 15, '_regular_price', '260000'),
(1438, 15, '_sale_price', '234000'),
(1439, 15, '_tax_status', ''),
(1440, 15, '_tax_class', ''),
(1441, 15, '_purchase_note', ''),
(1442, 15, '_featured', 'yes'),
(1443, 15, '_weight', ''),
(1444, 15, '_length', ''),
(1445, 15, '_width', ''),
(1446, 15, '_height', ''),
(1447, 15, '_sku', ''),
(1448, 15, '_product_attributes', 'a:0:{}'),
(1449, 15, '_sale_price_dates_from', ''),
(1450, 15, '_sale_price_dates_to', ''),
(1451, 15, '_price', '234000'),
(1452, 15, '_sold_individually', ''),
(1453, 15, '_stock', '5'),
(1454, 15, '_backorders', 'no'),
(1455, 15, '_manage_stock', 'yes'),
(1456, 15, '_upsell_ids', 'a:1:{i:0;s:2:"60";}'),
(1457, 19, '_thumbnail_id', '48'),
(1458, 19, '_visibility', 'visible'),
(1459, 19, '_stock_status', 'instock'),
(1460, 19, 'total_sales', '0'),
(1461, 19, '_downloadable', 'no'),
(1462, 19, '_virtual', 'no'),
(1463, 19, '_product_image_gallery', '21'),
(1464, 19, '_regular_price', '260000'),
(1465, 19, '_sale_price', ''),
(1466, 19, '_tax_status', ''),
(1467, 19, '_tax_class', ''),
(1468, 19, '_purchase_note', ''),
(1469, 19, '_featured', 'no'),
(1470, 19, '_weight', ''),
(1471, 19, '_length', ''),
(1472, 19, '_width', ''),
(1473, 19, '_height', ''),
(1474, 19, '_sku', ''),
(1475, 19, '_product_attributes', 'a:0:{}'),
(1476, 19, '_sale_price_dates_from', ''),
(1477, 19, '_sale_price_dates_to', ''),
(1478, 19, '_price', '260000'),
(1479, 19, '_sold_individually', ''),
(1480, 19, '_stock', ''),
(1481, 19, '_backorders', 'no'),
(1482, 19, '_manage_stock', 'no'),
(4209, 158, '_customer_ip_address', '36.82.188.99'),
(4208, 158, '_prices_include_tax', 'no'),
(4207, 158, '_order_currency', 'IDR'),
(4206, 158, '_order_key', 'wc_order_58a2aa000a2ef'),
(4203, 157, '_order_total', '2100000.00'),
(4204, 157, 'Xendit_invoice', '58a2a90217a5a34f20a65e05'),
(4205, 157, 'Xendit_expiry', '1487141506'),
(4201, 157, '_order_tax', '0'),
(4202, 157, '_order_shipping_tax', '0'),
(4200, 157, '_cart_discount_tax', '0'),
(4199, 157, '_cart_discount', '0'),
(3224, 131, '_wc_average_rating', '0'),
(4198, 157, '_order_shipping', ''),
(3196, 131, '_edit_last', '1'),
(3197, 131, '_visibility', 'visible'),
(3195, 131, '_edit_lock', '1487039844:1'),
(4153, 156, '_payment_method_title', 'Xendit'),
(4152, 156, '_payment_method', 'xendit_gateway'),
(4151, 156, '_shipping_postcode', '56481'),
(4150, 156, '_shipping_state', 'JT'),
(4148, 156, '_shipping_address_2', ''),
(4149, 156, '_shipping_city', 'MAGELANG'),
(4146, 156, '_shipping_country', 'ID'),
(4147, 156, '_shipping_address_1', 'WONOLELO 05/02, SAWANGAN'),
(1518, 102, '_thumbnail_id', '51'),
(1519, 102, '_visibility', 'visible'),
(1520, 102, '_stock_status', 'instock'),
(1521, 102, 'total_sales', '0'),
(1522, 102, '_downloadable', 'no'),
(1523, 102, '_virtual', 'no'),
(1524, 102, '_product_image_gallery', '33'),
(1525, 102, '_regular_price', '260000'),
(1526, 102, '_sale_price', ''),
(1527, 102, '_tax_status', ''),
(1528, 102, '_tax_class', ''),
(1529, 102, '_purchase_note', ''),
(1530, 102, '_featured', 'no'),
(1531, 102, '_weight', ''),
(1532, 102, '_length', ''),
(1533, 102, '_width', ''),
(1534, 102, '_height', ''),
(1535, 102, '_sku', ''),
(1536, 102, '_product_attributes', 'a:0:{}'),
(1537, 102, '_sale_price_dates_from', ''),
(1538, 102, '_sale_price_dates_to', ''),
(1539, 102, '_price', '260000'),
(1540, 102, '_sold_individually', ''),
(1541, 102, '_stock', ''),
(1542, 102, '_backorders', 'no'),
(1543, 102, '_manage_stock', 'no'),
(1544, 102, '_crosssell_ids', 'a:2:{i:0;s:2:"34";i:1;s:2:"37";}'),
(1545, 102, '_upsell_ids', 'a:1:{i:0;s:2:"56";}'),
(1546, 34, '_thumbnail_id', '35'),
(1547, 34, '_visibility', 'visible'),
(1548, 34, '_stock_status', 'instock'),
(1549, 34, 'total_sales', '0'),
(1550, 34, '_downloadable', 'no'),
(1551, 34, '_virtual', 'no'),
(1552, 34, '_product_image_gallery', '36'),
(1553, 34, '_regular_price', '260000'),
(1554, 34, '_sale_price', ''),
(1555, 34, '_tax_status', ''),
(1556, 34, '_tax_class', ''),
(1557, 34, '_purchase_note', ''),
(1558, 34, '_featured', 'no'),
(1559, 34, '_weight', ''),
(1560, 34, '_length', ''),
(1561, 34, '_width', ''),
(1562, 34, '_height', ''),
(1563, 34, '_sku', ''),
(1564, 34, '_product_attributes', 'a:0:{}'),
(1565, 34, '_sale_price_dates_from', ''),
(1566, 34, '_sale_price_dates_to', ''),
(1567, 34, '_price', '260000'),
(1568, 34, '_sold_individually', ''),
(1569, 34, '_stock', ''),
(1570, 34, '_backorders', 'no'),
(1571, 34, '_manage_stock', 'no'),
(1572, 34, '_crosssell_ids', 'a:2:{i:0;s:2:"37";i:1;s:2:"31";}'),
(1573, 34, '_upsell_ids', 'a:1:{i:0;s:2:"47";}'),
(1574, 37, '_visibility', 'visible'),
(1575, 37, '_stock_status', 'instock'),
(1576, 37, 'total_sales', '0'),
(1577, 37, '_downloadable', 'no'),
(1578, 37, '_virtual', 'no'),
(1579, 37, '_product_image_gallery', '39'),
(1580, 37, '_regular_price', '234000'),
(1581, 37, '_sale_price', ''),
(1582, 37, '_tax_status', ''),
(1583, 37, '_tax_class', ''),
(1584, 37, '_purchase_note', ''),
(1585, 37, '_featured', 'no'),
(1586, 37, '_weight', ''),
(1587, 37, '_length', ''),
(1588, 37, '_width', ''),
(1589, 37, '_height', ''),
(1590, 37, '_sku', ''),
(1591, 37, '_product_attributes', 'a:0:{}'),
(1592, 37, '_sale_price_dates_from', ''),
(1593, 37, '_sale_price_dates_to', ''),
(1594, 37, '_price', '234000'),
(1595, 37, '_sold_individually', ''),
(1596, 37, '_stock', ''),
(1597, 37, '_backorders', 'no'),
(1598, 37, '_manage_stock', 'no'),
(1599, 37, '_thumbnail_id', '38'),
(1600, 37, '_crosssell_ids', 'a:2:{i:0;s:2:"34";i:1;s:2:"31";}'),
(1601, 37, '_upsell_ids', 'a:1:{i:0;s:2:"53";}'),
(4197, 157, '_payment_method_title', 'Xendit'),
(4195, 157, '_shipping_postcode', '56481'),
(4193, 157, '_shipping_city', 'MAGELANG'),
(4194, 157, '_shipping_state', 'JT'),
(4192, 157, '_shipping_address_2', ''),
(4191, 157, '_shipping_address_1', 'WONOLELO 05/02, SAWANGAN'),
(4190, 157, '_shipping_country', 'ID'),
(4188, 157, '_shipping_last_name', 'Noor'),
(4189, 157, '_shipping_company', ''),
(4187, 157, '_shipping_first_name', 'Hassan'),
(4186, 157, '_billing_postcode', '56481'),
(4185, 157, '_billing_state', 'JT'),
(4184, 157, '_billing_city', 'MAGELANG'),
(4180, 157, '_billing_phone', '081330001060'),
(4181, 157, '_billing_country', 'ID'),
(4182, 157, '_billing_address_1', 'WONOLELO 05/02, SAWANGAN'),
(3223, 131, '_wc_rating_count', 'a:0:{}'),
(3221, 131, '_product_version', '2.6.13'),
(3222, 131, '_product_image_gallery', ''),
(3220, 131, '_crosssell_ids', 'a:0:{}'),
(3219, 131, '_upsell_ids', 'a:0:{}'),
(3218, 131, '_stock', ''),
(3217, 131, '_backorders', 'no'),
(3216, 131, '_manage_stock', 'no'),
(1636, 103, '_visibility', 'visible'),
(1637, 103, '_stock_status', 'instock'),
(1638, 103, 'total_sales', '0'),
(1639, 103, '_downloadable', 'no'),
(1640, 103, '_virtual', 'no'),
(1641, 103, '_product_image_gallery', '49'),
(1642, 103, '_regular_price', '455000'),
(1643, 103, '_sale_price', ''),
(1644, 103, '_tax_status', ''),
(1645, 103, '_tax_class', ''),
(1646, 103, '_purchase_note', ''),
(1647, 103, '_featured', 'no'),
(1648, 103, '_weight', ''),
(1649, 103, '_length', ''),
(1650, 103, '_width', ''),
(1651, 103, '_height', ''),
(1652, 103, '_sku', ''),
(1653, 103, '_product_attributes', 'a:0:{}'),
(1654, 103, '_sale_price_dates_from', ''),
(1655, 103, '_sale_price_dates_to', ''),
(1656, 103, '_price', '455000'),
(1657, 103, '_sold_individually', ''),
(1658, 103, '_stock', ''),
(1659, 103, '_backorders', 'no'),
(1660, 103, '_manage_stock', 'no'),
(1661, 103, '_thumbnail_id', '54'),
(1662, 103, '_crosssell_ids', 'a:1:{i:0;s:2:"34";}'),
(1663, 104, '_visibility', 'visible'),
(1664, 104, '_stock_status', 'instock'),
(1665, 104, 'total_sales', '0'),
(1666, 104, '_downloadable', 'no'),
(1667, 104, '_virtual', 'no'),
(1668, 104, '_product_image_gallery', '52'),
(1669, 104, '_regular_price', '455000'),
(1670, 104, '_sale_price', ''),
(1671, 104, '_tax_status', ''),
(1672, 104, '_tax_class', ''),
(1673, 104, '_purchase_note', ''),
(1674, 104, '_featured', 'yes'),
(1675, 104, '_weight', ''),
(1676, 104, '_length', ''),
(1677, 104, '_width', ''),
(1678, 104, '_height', ''),
(1679, 104, '_sku', ''),
(1680, 104, '_product_attributes', 'a:0:{}'),
(1681, 104, '_sale_price_dates_from', ''),
(1682, 104, '_sale_price_dates_to', ''),
(1683, 104, '_price', '455000'),
(1684, 104, '_sold_individually', ''),
(1685, 104, '_stock', ''),
(1686, 104, '_backorders', 'no'),
(1687, 104, '_manage_stock', 'no'),
(1688, 104, '_thumbnail_id', '56'),
(1689, 104, '_crosssell_ids', 'a:1:{i:0;s:2:"53";}'),
(1690, 105, '_thumbnail_id', '58'),
(1691, 105, '_visibility', 'visible'),
(1692, 105, '_stock_status', 'instock'),
(1693, 105, 'total_sales', '0'),
(1694, 105, '_downloadable', 'no'),
(1695, 105, '_virtual', 'no'),
(1696, 105, '_product_image_gallery', '55'),
(1697, 105, '_regular_price', '455000'),
(1698, 105, '_sale_price', ''),
(1699, 105, '_tax_status', ''),
(1700, 105, '_tax_class', ''),
(1701, 105, '_purchase_note', ''),
(1702, 105, '_featured', 'no'),
(1703, 105, '_weight', ''),
(1704, 105, '_length', ''),
(1705, 105, '_width', ''),
(1706, 105, '_height', ''),
(1707, 105, '_sku', ''),
(1708, 105, '_product_attributes', 'a:0:{}'),
(1709, 105, '_sale_price_dates_from', ''),
(1710, 105, '_sale_price_dates_to', ''),
(1711, 105, '_price', '455000'),
(1712, 105, '_sold_individually', ''),
(1713, 105, '_stock', ''),
(1714, 105, '_backorders', 'no'),
(1715, 105, '_manage_stock', 'no'),
(1716, 105, '_crosssell_ids', 'a:1:{i:0;s:2:"37";}'),
(1717, 106, '_visibility', 'visible'),
(1718, 106, '_stock_status', 'instock'),
(1719, 106, 'total_sales', '0'),
(1720, 106, '_downloadable', 'no'),
(1721, 106, '_virtual', 'no'),
(1722, 106, '_product_image_gallery', '58'),
(1723, 106, '_regular_price', '455000'),
(1724, 106, '_sale_price', ''),
(1725, 106, '_tax_status', ''),
(1726, 106, '_tax_class', ''),
(1727, 106, '_purchase_note', ''),
(1728, 106, '_featured', 'yes'),
(1729, 106, '_weight', ''),
(1730, 106, '_length', ''),
(1731, 106, '_width', ''),
(1732, 106, '_height', ''),
(1733, 106, '_sku', ''),
(1734, 106, '_product_attributes', 'a:0:{}'),
(1735, 106, '_sale_price_dates_from', ''),
(1736, 106, '_sale_price_dates_to', ''),
(1737, 106, '_price', '455000'),
(1738, 106, '_sold_individually', ''),
(1739, 106, '_stock', ''),
(1740, 106, '_backorders', 'no'),
(1741, 106, '_manage_stock', 'no'),
(1742, 106, '_thumbnail_id', '60'),
(1743, 106, '_crosssell_ids', 'a:1:{i:0;s:2:"31";}'),
(1744, 107, '_thumbnail_id', '62'),
(1745, 107, '_visibility', 'visible'),
(1746, 107, '_stock_status', 'instock'),
(1747, 107, 'total_sales', '0'),
(1748, 107, '_downloadable', 'no'),
(1749, 107, '_virtual', 'no'),
(1750, 107, '_product_image_gallery', '62'),
(1751, 107, '_regular_price', '455000'),
(1752, 107, '_sale_price', ''),
(1753, 107, '_tax_status', ''),
(1754, 107, '_tax_class', ''),
(1755, 107, '_purchase_note', ''),
(1756, 107, '_featured', 'no'),
(1757, 107, '_weight', ''),
(1758, 107, '_length', ''),
(1759, 107, '_width', ''),
(1760, 107, '_height', ''),
(1761, 107, '_sku', ''),
(1762, 107, '_product_attributes', 'a:0:{}'),
(1763, 107, '_sale_price_dates_from', ''),
(1764, 107, '_sale_price_dates_to', ''),
(1765, 107, '_price', '455000'),
(1766, 107, '_sold_individually', ''),
(1767, 107, '_stock', ''),
(1768, 107, '_backorders', 'no'),
(1769, 107, '_manage_stock', 'no'),
(1770, 107, '_crosssell_ids', 'a:1:{i:0;s:2:"15";}'),
(1771, 67, '_visibility', 'visible'),
(1772, 67, '_stock_status', 'instock'),
(1773, 67, 'total_sales', '16'),
(1774, 67, '_downloadable', 'no'),
(1775, 67, '_virtual', 'no'),
(1776, 67, '_product_image_gallery', '69'),
(1777, 67, '_regular_price', '127000'),
(1778, 67, '_sale_price', '125000'),
(1779, 67, '_tax_status', ''),
(1780, 67, '_tax_class', ''),
(1781, 67, '_purchase_note', ''),
(1782, 67, '_featured', 'no'),
(1783, 67, '_weight', ''),
(1784, 67, '_length', ''),
(1785, 67, '_width', ''),
(1786, 67, '_height', ''),
(1787, 67, '_sku', ''),
(1788, 67, '_product_attributes', 'a:0:{}'),
(1789, 67, '_sale_price_dates_from', ''),
(1790, 67, '_sale_price_dates_to', ''),
(1791, 67, '_price', '125000'),
(1792, 67, '_sold_individually', ''),
(1793, 67, '_stock', ''),
(1794, 67, '_backorders', 'no'),
(1795, 67, '_manage_stock', 'no'),
(1796, 67, '_thumbnail_id', '68'),
(1797, 67, '_upsell_ids', 'a:0:{}'),
(1798, 67, '_crosssell_ids', 'a:0:{}'),
(1799, 70, '_visibility', 'visible'),
(1800, 70, '_stock_status', 'instock'),
(1801, 70, 'total_sales', '1'),
(1802, 70, '_downloadable', 'no'),
(1803, 70, '_virtual', 'no'),
(1804, 70, '_product_image_gallery', '72'),
(1805, 70, '_regular_price', '195000'),
(1806, 70, '_sale_price', '12500'),
(1807, 70, '_tax_status', ''),
(1808, 70, '_tax_class', ''),
(1809, 70, '_purchase_note', ''),
(1810, 70, '_featured', 'no'),
(1811, 70, '_weight', ''),
(1812, 70, '_length', ''),
(1813, 70, '_width', ''),
(1814, 70, '_height', ''),
(1815, 70, '_sku', ''),
(1816, 70, '_product_attributes', 'a:0:{}'),
(1817, 70, '_sale_price_dates_from', ''),
(1818, 70, '_sale_price_dates_to', ''),
(1819, 70, '_price', '12500'),
(1820, 70, '_sold_individually', ''),
(1821, 70, '_stock', ''),
(1822, 70, '_backorders', 'no'),
(1823, 70, '_manage_stock', 'no'),
(1824, 70, '_thumbnail_id', '71'),
(1825, 73, '_visibility', 'visible'),
(1826, 73, '_stock_status', 'instock'),
(1827, 73, 'total_sales', '0'),
(1828, 73, '_downloadable', 'no'),
(1829, 73, '_virtual', 'no'),
(1830, 73, '_product_image_gallery', '75'),
(1831, 73, '_regular_price', '195000'),
(1832, 73, '_sale_price', '156000'),
(1833, 73, '_tax_status', ''),
(1834, 73, '_tax_class', ''),
(1835, 73, '_purchase_note', ''),
(1836, 73, '_featured', 'no'),
(1837, 73, '_weight', ''),
(1838, 73, '_length', ''),
(1839, 73, '_width', ''),
(1840, 73, '_height', ''),
(1841, 73, '_sku', ''),
(1842, 73, '_product_attributes', 'a:0:{}'),
(1843, 73, '_sale_price_dates_from', ''),
(1844, 73, '_sale_price_dates_to', ''),
(1845, 73, '_price', '156000'),
(1846, 73, '_sold_individually', ''),
(1847, 73, '_stock', ''),
(1848, 73, '_backorders', 'no'),
(1849, 73, '_manage_stock', 'no'),
(1850, 73, '_upsell_ids', 'a:1:{i:0;s:2:"19";}'),
(1851, 73, '_thumbnail_id', '74'),
(1852, 76, '_thumbnail_id', '77'),
(1853, 76, '_visibility', 'visible'),
(1854, 76, '_stock_status', 'instock'),
(1855, 76, 'total_sales', '0'),
(1856, 76, '_downloadable', 'no'),
(1857, 76, '_virtual', 'no'),
(1858, 76, '_product_image_gallery', '78'),
(1859, 76, '_regular_price', '130000'),
(1860, 76, '_sale_price', ''),
(1861, 76, '_tax_status', ''),
(1862, 76, '_tax_class', ''),
(1863, 76, '_purchase_note', ''),
(1864, 76, '_featured', 'no'),
(1865, 76, '_weight', ''),
(1866, 76, '_length', ''),
(1867, 76, '_width', ''),
(1868, 76, '_height', ''),
(1869, 76, '_sku', ''),
(1870, 76, '_product_attributes', 'a:0:{}'),
(1871, 76, '_sale_price_dates_from', ''),
(1872, 76, '_sale_price_dates_to', ''),
(1873, 76, '_price', '130000'),
(1874, 76, '_sold_individually', ''),
(1875, 76, '_stock', ''),
(1876, 76, '_backorders', 'no'),
(1877, 76, '_manage_stock', 'no'),
(1878, 76, '_crosssell_ids', 'a:1:{i:0;i:34;}'),
(4145, 156, '_shipping_company', ''),
(4144, 156, '_shipping_last_name', 'Noor'),
(4143, 156, '_shipping_first_name', 'Hassan'),
(4142, 156, '_billing_postcode', '56481'),
(4141, 156, '_billing_state', 'JT'),
(4140, 156, '_billing_city', 'MAGELANG'),
(4138, 156, '_billing_address_1', 'WONOLELO 05/02, SAWANGAN'),
(4139, 156, '_billing_address_2', ''),
(2382, 76, '_product_version', '2.6.13'),
(2381, 76, '_upsell_ids', 'a:0:{}'),
(2380, 67, '_product_version', '2.6.13'),
(3214, 131, '_price', '2000000'),
(3215, 131, '_sold_individually', ''),
(3213, 131, '_sale_price_dates_to', ''),
(3212, 131, '_sale_price_dates_from', ''),
(3211, 131, '_sale_price', ''),
(4137, 156, '_billing_country', 'ID'),
(4136, 156, '_billing_phone', '081330001060'),
(4132, 156, '_billing_first_name', 'Hassan'),
(4134, 156, '_billing_company', ''),
(4135, 156, '_billing_email', 'sutayub@gmail.com'),
(4111, 155, '_order_shipping', ''),
(4112, 155, '_cart_discount', '0'),
(4113, 155, '_cart_discount_tax', '0'),
(4114, 155, '_order_tax', '0'),
(4115, 155, '_order_shipping_tax', '0'),
(4116, 155, '_order_total', '2000000.00'),
(4117, 155, 'Xendit_invoice', '58a2961417a5a34f20a65e00'),
(4118, 155, 'Xendit_expiry', '1487136660'),
(4119, 155, '_download_permissions_granted', '1'),
(4120, 155, '_recorded_sales', 'yes'),
(4121, 155, '_paid_date', '2017-02-14 13:31:10'),
(4122, 155, '_order_stock_reduced', '1'),
(4123, 156, '_order_key', 'wc_order_58a2a79df14c1');
INSERT INTO `xen_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(4124, 156, '_order_currency', 'IDR'),
(4125, 156, '_prices_include_tax', 'no'),
(4126, 156, '_customer_ip_address', '36.82.188.99'),
(4127, 156, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(4128, 156, '_customer_user', '1'),
(4129, 156, '_created_via', 'checkout'),
(4130, 156, '_cart_hash', '1f54b828d618758b339fec9f3a41e59c'),
(1955, 79, '_thumbnail_id', '80'),
(1956, 79, '_visibility', 'visible'),
(1957, 79, '_stock_status', 'instock'),
(1958, 79, 'total_sales', '0'),
(1959, 79, '_downloadable', 'no'),
(1960, 79, '_virtual', 'no'),
(1961, 79, '_product_image_gallery', '81'),
(1962, 79, '_regular_price', '156000'),
(1963, 79, '_sale_price', '128700'),
(1964, 79, '_tax_status', ''),
(1965, 79, '_tax_class', ''),
(1966, 79, '_purchase_note', ''),
(1967, 79, '_featured', 'no'),
(1968, 79, '_weight', ''),
(1969, 79, '_length', ''),
(1970, 79, '_width', ''),
(1971, 79, '_height', ''),
(1972, 79, '_sku', ''),
(1973, 79, '_product_attributes', 'a:0:{}'),
(1974, 79, '_sale_price_dates_from', ''),
(1975, 79, '_sale_price_dates_to', ''),
(1976, 79, '_price', '128700'),
(1977, 79, '_sold_individually', ''),
(1978, 79, '_stock', ''),
(1979, 79, '_backorders', 'no'),
(1980, 79, '_manage_stock', 'no'),
(1981, 79, '_crosssell_ids', 'a:1:{i:0;i:15;}'),
(1982, 83, '_thumbnail_id', '84'),
(1983, 83, '_visibility', 'visible'),
(1984, 83, '_stock_status', 'instock'),
(1985, 83, 'total_sales', '0'),
(1986, 83, '_downloadable', 'yes'),
(1987, 83, '_virtual', 'no'),
(1988, 83, '_product_image_gallery', '85'),
(1989, 83, '_regular_price', '117000'),
(1990, 83, '_sale_price', ''),
(1991, 83, '_tax_status', ''),
(1992, 83, '_tax_class', ''),
(1993, 83, '_purchase_note', ''),
(1994, 83, '_featured', 'no'),
(1995, 83, '_weight', ''),
(1996, 83, '_length', ''),
(1997, 83, '_width', ''),
(1998, 83, '_height', ''),
(1999, 83, '_sku', ''),
(2000, 83, '_product_attributes', 'a:0:{}'),
(2001, 83, '_sale_price_dates_from', ''),
(2002, 83, '_sale_price_dates_to', ''),
(2003, 83, '_price', '117000'),
(2004, 83, '_sold_individually', ''),
(2005, 83, '_stock', ''),
(2006, 83, '_backorders', 'no'),
(2007, 83, '_manage_stock', 'no'),
(2008, 83, '_file_paths', 'a:0:{}'),
(2009, 83, '_download_limit', ''),
(2010, 83, '_download_expiry', ''),
(2011, 87, '_thumbnail_id', '88'),
(2012, 87, '_visibility', 'visible'),
(2013, 87, '_stock_status', 'instock'),
(2014, 87, 'total_sales', '0'),
(2015, 87, '_downloadable', 'yes'),
(2016, 87, '_virtual', 'no'),
(2017, 87, '_product_image_gallery', '89'),
(2018, 87, '_regular_price', '117000'),
(2019, 87, '_sale_price', ''),
(2020, 87, '_tax_status', ''),
(2021, 87, '_tax_class', ''),
(2022, 87, '_purchase_note', ''),
(2023, 87, '_featured', 'yes'),
(2024, 87, '_weight', ''),
(2025, 87, '_length', ''),
(2026, 87, '_width', ''),
(2027, 87, '_height', ''),
(2028, 87, '_sku', ''),
(2029, 87, '_product_attributes', 'a:0:{}'),
(2030, 87, '_sale_price_dates_from', ''),
(2031, 87, '_sale_price_dates_to', ''),
(2032, 87, '_price', '117000'),
(2033, 87, '_sold_individually', ''),
(2034, 87, '_stock', ''),
(2035, 87, '_backorders', 'no'),
(2036, 87, '_manage_stock', 'no'),
(2037, 87, '_file_paths', 'a:0:{}'),
(2038, 87, '_download_limit', ''),
(2039, 87, '_download_expiry', ''),
(2040, 90, '_thumbnail_id', '91'),
(2041, 90, '_visibility', 'visible'),
(2042, 90, '_stock_status', 'instock'),
(2043, 90, 'total_sales', '0'),
(2044, 90, '_downloadable', 'yes'),
(2045, 90, '_virtual', 'no'),
(2046, 90, '_product_image_gallery', '92'),
(2047, 90, '_regular_price', '117000'),
(2048, 90, '_sale_price', ''),
(2049, 90, '_tax_status', ''),
(2050, 90, '_tax_class', ''),
(2051, 90, '_purchase_note', ''),
(2052, 90, '_featured', 'no'),
(2053, 90, '_weight', ''),
(2054, 90, '_length', ''),
(2055, 90, '_width', ''),
(2056, 90, '_height', ''),
(2057, 90, '_sku', ''),
(2058, 90, '_product_attributes', 'a:0:{}'),
(2059, 90, '_sale_price_dates_from', ''),
(2060, 90, '_sale_price_dates_to', ''),
(2061, 90, '_price', '117000'),
(2062, 90, '_sold_individually', ''),
(2063, 90, '_stock', ''),
(2064, 90, '_backorders', 'no'),
(2065, 90, '_manage_stock', 'no'),
(2066, 90, '_file_paths', 'a:0:{}'),
(2067, 90, '_download_limit', ''),
(2068, 90, '_download_expiry', ''),
(2069, 93, '_thumbnail_id', '95'),
(2070, 93, '_visibility', 'visible'),
(2071, 93, '_stock_status', 'instock'),
(2072, 93, 'total_sales', '0'),
(2073, 93, '_downloadable', 'yes'),
(2074, 93, '_virtual', 'no'),
(2075, 93, '_product_image_gallery', '94'),
(2076, 93, '_regular_price', '39000'),
(2077, 93, '_sale_price', ''),
(2078, 93, '_tax_status', ''),
(2079, 93, '_tax_class', ''),
(2080, 93, '_purchase_note', ''),
(2081, 93, '_featured', 'no'),
(2082, 93, '_weight', ''),
(2083, 93, '_length', ''),
(2084, 93, '_width', ''),
(2085, 93, '_height', ''),
(2086, 93, '_sku', ''),
(2087, 93, '_product_attributes', 'a:0:{}'),
(2088, 93, '_sale_price_dates_from', ''),
(2089, 93, '_sale_price_dates_to', ''),
(2090, 93, '_price', '39000'),
(2091, 93, '_sold_individually', ''),
(2092, 93, '_stock', ''),
(2093, 93, '_backorders', 'no'),
(2094, 93, '_manage_stock', 'no'),
(2095, 93, '_file_paths', 'a:0:{}'),
(2096, 93, '_download_limit', ''),
(2097, 93, '_download_expiry', ''),
(2098, 96, '_thumbnail_id', '97'),
(2099, 96, '_visibility', 'visible'),
(2100, 96, '_stock_status', 'instock'),
(2101, 96, 'total_sales', '0'),
(2102, 96, '_downloadable', 'yes'),
(2103, 96, '_virtual', 'no'),
(2104, 96, '_product_image_gallery', '98'),
(2105, 96, '_regular_price', '117000'),
(2106, 96, '_sale_price', ''),
(2107, 96, '_tax_status', ''),
(2108, 96, '_tax_class', ''),
(2109, 96, '_purchase_note', ''),
(2110, 96, '_featured', 'no'),
(2111, 96, '_weight', ''),
(2112, 96, '_length', ''),
(2113, 96, '_width', ''),
(2114, 96, '_height', ''),
(2115, 96, '_sku', ''),
(2116, 96, '_product_attributes', 'a:0:{}'),
(2117, 96, '_sale_price_dates_from', ''),
(2118, 96, '_sale_price_dates_to', ''),
(2119, 96, '_price', '117000'),
(2120, 96, '_sold_individually', ''),
(2121, 96, '_stock', ''),
(2122, 96, '_backorders', 'no'),
(2123, 96, '_manage_stock', 'no'),
(2124, 96, '_file_paths', 'a:0:{}'),
(2125, 96, '_download_limit', ''),
(2126, 96, '_download_expiry', ''),
(2127, 99, '_thumbnail_id', '100'),
(2128, 99, '_visibility', 'visible'),
(2129, 99, '_stock_status', 'instock'),
(2130, 99, 'total_sales', '0'),
(2131, 99, '_downloadable', 'no'),
(2132, 99, '_virtual', 'no'),
(2133, 99, '_product_image_gallery', '101'),
(2134, 99, '_regular_price', '39000'),
(2135, 99, '_sale_price', '26000'),
(2136, 99, '_tax_status', ''),
(2137, 99, '_tax_class', ''),
(2138, 99, '_purchase_note', ''),
(2139, 99, '_featured', 'no'),
(2140, 99, '_weight', ''),
(2141, 99, '_length', ''),
(2142, 99, '_width', ''),
(2143, 99, '_height', ''),
(2144, 99, '_sku', ''),
(2145, 99, '_product_attributes', 'a:0:{}'),
(2146, 99, '_sale_price_dates_from', ''),
(2147, 99, '_sale_price_dates_to', ''),
(2148, 99, '_price', '26000'),
(2149, 99, '_sold_individually', ''),
(2150, 99, '_stock', ''),
(2151, 99, '_backorders', 'no'),
(2152, 99, '_manage_stock', 'no'),
(4079, 154, '_order_stock_reduced', '1'),
(4078, 154, '_paid_date', '2017-02-14 11:26:39'),
(4077, 154, '_recorded_sales', 'yes'),
(4075, 154, 'Xendit_expiry', '1487129192'),
(4074, 154, 'Xendit_invoice', '58a278e817a5a34f20a65df8'),
(4073, 154, '_order_total', '2000000.00'),
(4072, 154, '_order_shipping_tax', '0'),
(4071, 154, '_order_tax', '0'),
(4070, 154, '_cart_discount_tax', '0'),
(4069, 154, '_cart_discount', '0'),
(4068, 154, '_order_shipping', ''),
(4067, 154, '_payment_method_title', 'Xendit'),
(4066, 154, '_payment_method', 'xendit_gateway'),
(4065, 154, '_shipping_postcode', '56481'),
(4064, 154, '_shipping_state', 'JT'),
(4063, 154, '_shipping_city', 'MAGELANG'),
(4062, 154, '_shipping_address_2', ''),
(4061, 154, '_shipping_address_1', 'WONOLELO 05/02, SAWANGAN'),
(4060, 154, '_shipping_country', 'ID'),
(4059, 154, '_shipping_company', ''),
(4058, 154, '_shipping_last_name', 'Noor'),
(4057, 154, '_shipping_first_name', 'Hassan'),
(4056, 154, '_billing_postcode', '56481'),
(2383, 107, '_wc_rating_count', 'a:2:{i:3;s:1:"1";i:5;s:1:"1";}'),
(2384, 107, '_wc_average_rating', '4.00'),
(2828, 106, '_wc_average_rating', '4.17'),
(2387, 105, '_wc_rating_count', 'a:2:{i:1;s:1:"1";i:5;s:1:"1";}'),
(2388, 105, '_wc_average_rating', '3.00'),
(2389, 104, '_wc_rating_count', 'a:2:{i:4;s:1:"1";i:5;s:1:"2";}'),
(2390, 104, '_wc_average_rating', '4.67'),
(2391, 103, '_wc_rating_count', 'a:2:{i:4;s:1:"1";i:5;s:1:"1";}'),
(2392, 103, '_wc_average_rating', '4.50'),
(2393, 102, '_wc_rating_count', 'a:1:{i:5;s:1:"1";}'),
(2394, 102, '_wc_average_rating', '5.00'),
(2395, 34, '_wc_rating_count', 'a:0:{}'),
(2396, 34, '_wc_average_rating', '0'),
(2397, 19, '_wc_rating_count', 'a:2:{i:4;s:1:"1";i:5;s:1:"1";}'),
(2398, 19, '_wc_average_rating', '4.50'),
(2399, 37, '_wc_rating_count', 'a:1:{i:5;s:1:"2";}'),
(2400, 37, '_wc_average_rating', '5.00'),
(2401, 15, '_wc_rating_count', 'a:1:{i:4;s:1:"1";}'),
(2402, 15, '_wc_average_rating', '4.00'),
(2403, 70, '_wc_rating_count', 'a:3:{i:3;s:1:"1";i:4;s:1:"2";i:5;s:1:"1";}'),
(2404, 70, '_wc_average_rating', '4.00'),
(2405, 73, '_wc_rating_count', 'a:2:{i:1;s:1:"1";i:3;s:1:"1";}'),
(2406, 73, '_wc_average_rating', '2.00'),
(2407, 67, '_wc_rating_count', 'a:0:{}'),
(2408, 67, '_wc_average_rating', '0'),
(2409, 83, '_wc_rating_count', 'a:0:{}'),
(2410, 83, '_wc_average_rating', '0'),
(2827, 106, '_wc_rating_count', 'a:3:{i:1;s:1:"1";i:4;s:1:"1";i:5;s:1:"4";}'),
(2412, 112, '_edit_last', '1'),
(2413, 112, '_edit_lock', '1485153775:1'),
(2414, 112, '_visibility', 'visible'),
(2415, 112, '_stock_status', 'instock'),
(2416, 112, '_thumbnail_id', '95'),
(2417, 112, 'total_sales', '8'),
(2418, 112, '_downloadable', 'no'),
(2419, 112, '_virtual', 'no'),
(2420, 112, '_purchase_note', ''),
(2421, 112, '_featured', 'no'),
(2422, 112, '_weight', ''),
(2423, 112, '_length', ''),
(2424, 112, '_width', ''),
(2425, 112, '_height', ''),
(2426, 112, '_sku', ''),
(2427, 112, '_product_attributes', 'a:0:{}'),
(2428, 112, '_regular_price', '2000000'),
(2429, 112, '_sale_price', '1000000'),
(2430, 112, '_sale_price_dates_from', ''),
(2431, 112, '_sale_price_dates_to', ''),
(2432, 112, '_price', '1000000'),
(2433, 112, '_sold_individually', ''),
(2434, 112, '_manage_stock', 'no'),
(2435, 112, '_backorders', 'no'),
(2436, 112, '_stock', ''),
(2437, 112, '_upsell_ids', 'a:0:{}'),
(2438, 112, '_crosssell_ids', 'a:0:{}'),
(2439, 112, '_product_version', '2.6.13'),
(2440, 112, '_product_image_gallery', ''),
(2441, 112, '_wc_rating_count', 'a:0:{}'),
(2442, 112, '_wc_review_count', '0'),
(2443, 112, '_wc_average_rating', '0'),
(4055, 154, '_billing_state', 'JT'),
(4053, 154, '_billing_address_2', ''),
(4054, 154, '_billing_city', 'MAGELANG'),
(4052, 154, '_billing_address_1', 'WONOLELO 05/02, SAWANGAN'),
(4051, 154, '_billing_country', 'ID'),
(4050, 154, '_billing_phone', '081330001060'),
(4049, 154, '_billing_email', 'sutayub@gmail.com'),
(4048, 154, '_billing_company', ''),
(4047, 154, '_billing_last_name', 'Noor'),
(4046, 154, '_billing_first_name', 'Hassan'),
(4044, 154, '_cart_hash', '1f54b828d618758b339fec9f3a41e59c'),
(4045, 154, '_order_version', '2.6.13'),
(4043, 154, '_created_via', 'checkout'),
(4042, 154, '_customer_user', '1'),
(2684, 70, '_wc_review_count', '4'),
(2685, 76, '_wc_rating_count', 'a:1:{i:4;s:1:"1";}'),
(2686, 76, '_wc_average_rating', '4.00'),
(2687, 79, '_wc_rating_count', 'a:0:{}'),
(2688, 79, '_wc_average_rating', '0'),
(2689, 87, '_wc_rating_count', 'a:1:{i:4;s:1:"1";}'),
(2690, 87, '_wc_average_rating', '4.00'),
(2691, 90, '_wc_rating_count', 'a:1:{i:3;s:1:"1";}'),
(2692, 90, '_wc_average_rating', '3.00'),
(2693, 96, '_wc_rating_count', 'a:1:{i:5;s:1:"2";}'),
(2694, 96, '_wc_average_rating', '5.00'),
(2695, 93, '_wc_rating_count', 'a:0:{}'),
(2696, 93, '_wc_average_rating', '0'),
(2697, 99, '_wc_rating_count', 'a:2:{i:4;s:1:"1";i:5;s:1:"1";}'),
(2698, 99, '_wc_average_rating', '4.50'),
(2699, 67, '_wc_review_count', '0'),
(4010, 153, '_billing_address_2', ''),
(4009, 153, '_billing_address_1', 'WONOLELO 05/02, SAWANGAN'),
(4008, 153, '_billing_country', 'ID'),
(4005, 153, '_billing_company', ''),
(4006, 153, '_billing_email', 'sutayub@gmail.com'),
(4007, 153, '_billing_phone', '081330001060'),
(4004, 153, '_billing_last_name', 'Noor'),
(4003, 153, '_billing_first_name', 'Hassan'),
(4002, 153, '_order_version', '2.6.13'),
(4001, 153, '_cart_hash', '1f54b828d618758b339fec9f3a41e59c'),
(4000, 153, '_created_via', 'checkout'),
(3999, 153, '_customer_user', '1'),
(3998, 153, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(3997, 153, '_customer_ip_address', '36.82.188.99'),
(3996, 153, '_prices_include_tax', 'no'),
(3995, 153, '_order_currency', 'IDR'),
(3994, 153, '_order_key', 'wc_order_58a2759e7a1b9'),
(3993, 152, '_order_stock_reduced', '1'),
(3992, 152, '_paid_date', '2017-02-14 11:02:22'),
(3991, 152, '_recorded_sales', 'yes'),
(3990, 152, '_download_permissions_granted', '1'),
(3989, 152, 'Xendit_expiry', '1487127736'),
(3988, 152, 'Xendit_invoice', '58a2733817a5a34f20a65df6'),
(3987, 152, '_order_total', '2000000.00'),
(3986, 152, '_order_shipping_tax', '0'),
(3985, 152, '_order_tax', '0'),
(3984, 152, '_cart_discount_tax', '0'),
(3983, 152, '_cart_discount', '0'),
(3982, 152, '_order_shipping', ''),
(3981, 152, '_payment_method_title', 'Xendit'),
(3980, 152, '_payment_method', 'xendit_gateway'),
(3979, 152, '_shipping_postcode', '56481'),
(3978, 152, '_shipping_state', 'JT'),
(3977, 152, '_shipping_city', 'MAGELANG'),
(3976, 152, '_shipping_address_2', ''),
(3975, 152, '_shipping_address_1', 'WONOLELO 05/02, SAWANGAN'),
(3974, 152, '_shipping_country', 'ID'),
(3967, 152, '_billing_address_2', ''),
(3968, 152, '_billing_city', 'MAGELANG'),
(3969, 152, '_billing_state', 'JT'),
(3970, 152, '_billing_postcode', '56481'),
(3971, 152, '_shipping_first_name', 'Hassan'),
(3972, 152, '_shipping_last_name', 'Noor'),
(3973, 152, '_shipping_company', ''),
(2352, 76, '_edit_last', '1'),
(2353, 76, '_edit_lock', '1485127156:1'),
(2354, 67, '_edit_last', '1'),
(2355, 67, '_edit_lock', '1485127125:1'),
(4076, 154, '_download_permissions_granted', '1'),
(2357, 70, '_edit_lock', '1485127017:1'),
(2358, 70, '_edit_last', '1'),
(2359, 70, '_upsell_ids', 'a:0:{}'),
(2360, 70, '_crosssell_ids', 'a:0:{}'),
(2361, 70, '_product_version', '2.6.13'),
(2362, 79, '_edit_lock', '1485127087:1'),
(2363, 79, '_edit_last', '1'),
(2364, 79, '_upsell_ids', 'a:0:{}'),
(2365, 79, '_product_version', '2.6.13'),
(4239, 158, '_cart_discount_tax', '0'),
(4214, 158, '_order_version', '2.6.13'),
(4183, 157, '_billing_address_2', ''),
(3210, 131, '_regular_price', '2000000'),
(4133, 156, '_billing_last_name', 'Noor'),
(4131, 156, '_order_version', '2.6.13'),
(4238, 158, '_cart_discount', '0'),
(4179, 157, '_billing_email', 'sutayub@gmail.com'),
(4178, 157, '_billing_company', ''),
(4177, 157, '_billing_last_name', 'Noor'),
(4175, 157, '_order_version', '2.6.13'),
(4176, 157, '_billing_first_name', 'Hassan'),
(3207, 131, '_height', ''),
(3208, 131, '_sku', ''),
(3209, 131, '_product_attributes', 'a:0:{}'),
(4299, 159, 'Xendit_expiry', '1488248666'),
(4300, 161, '_order_key', 'wc_order_58b38ea240e8c'),
(4301, 161, '_order_currency', 'IDR'),
(4302, 161, '_prices_include_tax', 'no'),
(4303, 161, '_customer_ip_address', '182.253.73.166'),
(4304, 161, '_customer_user_agent', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(4305, 161, '_customer_user', '1'),
(4237, 158, '_order_shipping', ''),
(4236, 158, '_payment_method_title', 'Xendit'),
(4235, 158, '_payment_method', 'xendit_gateway'),
(4233, 158, '_shipping_state', 'JT'),
(4234, 158, '_shipping_postcode', '56481'),
(4231, 158, '_shipping_address_2', ''),
(4232, 158, '_shipping_city', 'MAGELANG'),
(4230, 158, '_shipping_address_1', 'WONOLELO 05/02, SAWANGAN'),
(4228, 158, '_shipping_company', ''),
(4229, 158, '_shipping_country', 'ID'),
(4225, 158, '_billing_postcode', '56481'),
(4226, 158, '_shipping_first_name', 'Hassan'),
(4227, 158, '_shipping_last_name', 'Noor'),
(4224, 158, '_billing_state', 'JT'),
(4223, 158, '_billing_city', 'MAGELANG'),
(4222, 158, '_billing_address_2', ''),
(4221, 158, '_billing_address_1', 'WONOLELO 05/02, SAWANGAN'),
(4220, 158, '_billing_country', 'ID'),
(4219, 158, '_billing_phone', '081330001060'),
(3311, 131, '_wc_review_count', '0'),
(4396, 164, '_billing_state', 'JT'),
(4397, 164, '_billing_postcode', '56481'),
(4398, 164, '_shipping_first_name', 'Hassan'),
(4392, 164, '_billing_country', 'ID'),
(4393, 164, '_billing_address_1', 'WONOLELO 05/02, SAWANGAN'),
(4395, 164, '_billing_city', 'MAGELANG'),
(4394, 164, '_billing_address_2', ''),
(4391, 164, '_billing_phone', '081330001060'),
(4390, 164, '_billing_email', 'sutayub@gmail.com'),
(4389, 164, '_billing_company', ''),
(4387, 164, '_billing_first_name', 'Hassan'),
(4388, 164, '_billing_last_name', 'Noor'),
(4386, 164, '_order_version', '2.6.13'),
(4384, 164, '_created_via', 'checkout'),
(4385, 164, '_cart_hash', 'bc3fe4da2b58486062573b109588237c'),
(4383, 164, '_customer_user', '1'),
(4381, 164, '_customer_ip_address', '118.100.20.58'),
(4382, 164, '_customer_user_agent', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(4380, 164, '_prices_include_tax', 'no'),
(4379, 164, '_order_currency', 'IDR'),
(4378, 164, '_order_key', 'wc_order_58c0b90317eb8'),
(4377, 163, 'Xendit_expiry', '1489111501'),
(4376, 163, 'Xendit_invoice', '58c0b84f1c9d45e536dccd12'),
(4375, 163, '_order_total', '2113125.00'),
(4372, 163, '_cart_discount_tax', '0'),
(4373, 163, '_order_tax', '0'),
(4374, 163, '_order_shipping_tax', '0'),
(4366, 163, '_shipping_state', 'JT'),
(4367, 163, '_shipping_postcode', '56481'),
(4368, 163, '_payment_method', 'xendit_gateway'),
(4369, 163, '_payment_method_title', 'Xendit'),
(4370, 163, '_order_shipping', ''),
(4371, 163, '_cart_discount', '0'),
(4365, 163, '_shipping_city', 'MAGELANG'),
(4364, 163, '_shipping_address_2', ''),
(4362, 163, '_shipping_country', 'ID'),
(4363, 163, '_shipping_address_1', 'WONOLELO 05/02, SAWANGAN'),
(4298, 159, 'Xendit_invoice', '58b38ddb17a5a34f20a66670'),
(4297, 159, '_order_total', '245700.00'),
(4294, 159, '_cart_discount_tax', '0'),
(4295, 159, '_order_tax', '0'),
(4296, 159, '_order_shipping_tax', '0'),
(4293, 159, '_cart_discount', '0'),
(4292, 159, '_order_shipping', ''),
(4291, 159, '_payment_method_title', 'Xendit'),
(4290, 159, '_payment_method', 'xendit_gateway'),
(4289, 159, '_shipping_postcode', '12940'),
(4288, 159, '_shipping_state', 'JK'),
(4287, 159, '_shipping_city', 'Jakarta Selatan'),
(4286, 159, '_shipping_address_2', 'Jl. Prof. DR. Satrio No.3-5'),
(4285, 159, '_shipping_address_1', 'Ascott Kuningan #44G'),
(4284, 159, '_shipping_country', 'ID'),
(4283, 159, '_shipping_company', 'Xendit'),
(4282, 159, '_shipping_last_name', 'Contini'),
(4281, 159, '_shipping_first_name', 'Giuseppe'),
(4280, 159, '_billing_postcode', '12940'),
(4279, 159, '_billing_state', 'JK'),
(4278, 159, '_billing_city', 'Jakarta Selatan'),
(4277, 159, '_billing_address_2', 'Jl. Prof. DR. Satrio No.3-5'),
(4276, 159, '_billing_address_1', 'Ascott Kuningan #44G'),
(4275, 159, '_billing_country', 'ID'),
(4274, 159, '_billing_phone', '6281213835254'),
(4273, 159, '_billing_email', 'joe@xendit.co'),
(4272, 159, '_billing_company', 'Xendit'),
(4271, 159, '_billing_last_name', 'Contini'),
(4270, 159, '_billing_first_name', 'Giuseppe'),
(4269, 159, '_order_version', '2.6.13'),
(4266, 159, '_customer_user', '0'),
(4267, 159, '_created_via', 'checkout'),
(4268, 159, '_cart_hash', '285eb01dc9fad73f89de766b75eb722d'),
(3441, 37, '_wc_review_count', '2'),
(4360, 163, '_shipping_last_name', 'Noor'),
(4361, 163, '_shipping_company', ''),
(4359, 163, '_shipping_first_name', 'Hassan'),
(3956, 152, '_customer_user', '1'),
(3957, 152, '_created_via', 'checkout'),
(3958, 152, '_cart_hash', '1f54b828d618758b339fec9f3a41e59c'),
(3959, 152, '_order_version', '2.6.13'),
(3960, 152, '_billing_first_name', 'Hassan'),
(3961, 152, '_billing_last_name', 'Noor'),
(3962, 152, '_billing_company', ''),
(3963, 152, '_billing_email', 'sutayub@gmail.com'),
(3964, 152, '_billing_phone', '081330001060'),
(3965, 152, '_billing_country', 'ID'),
(4424, 165, '_cart_hash', 'bc3fe4da2b58486062573b109588237c'),
(4423, 165, '_created_via', 'checkout'),
(4422, 165, '_customer_user', '0'),
(4421, 165, '_customer_user_agent', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(4420, 165, '_customer_ip_address', '182.253.73.163'),
(4419, 165, '_prices_include_tax', 'no'),
(4418, 165, '_order_currency', 'IDR'),
(4417, 165, '_order_key', 'wc_order_58c0d743ba903'),
(4416, 164, 'Xendit_expiry', '1489111684'),
(4415, 164, 'Xendit_invoice', '58c0b9061c9d45e536dccd13'),
(4414, 164, '_order_total', '13125.00'),
(4413, 164, '_order_shipping_tax', '0'),
(4412, 164, '_order_tax', '0'),
(4411, 164, '_cart_discount_tax', '0'),
(4410, 164, '_cart_discount', '0'),
(4399, 164, '_shipping_last_name', 'Noor'),
(4400, 164, '_shipping_company', ''),
(4401, 164, '_shipping_country', 'ID'),
(4402, 164, '_shipping_address_1', 'WONOLELO 05/02, SAWANGAN'),
(4403, 164, '_shipping_address_2', ''),
(4404, 164, '_shipping_city', 'MAGELANG'),
(4405, 164, '_shipping_state', 'JT'),
(4406, 164, '_shipping_postcode', '56481'),
(4407, 164, '_payment_method', 'xendit_gateway'),
(4408, 164, '_payment_method_title', 'Xendit'),
(4409, 164, '_order_shipping', ''),
(4441, 165, '_shipping_address_1', 'Ascott Kuningan #44G'),
(4440, 165, '_shipping_country', 'ID'),
(4439, 165, '_shipping_company', 'Xendit'),
(4438, 165, '_shipping_last_name', 'Contini'),
(4437, 165, '_shipping_first_name', 'Giuseppe'),
(4436, 165, '_billing_postcode', '12940'),
(4435, 165, '_billing_state', 'JK'),
(4434, 165, '_billing_city', 'Jakarta Selatan'),
(4433, 165, '_billing_address_2', 'Jl. Prof. DR. Satrio No.3-5'),
(4432, 165, '_billing_address_1', 'Ascott Kuningan #44G'),
(4431, 165, '_billing_country', 'ID'),
(4430, 165, '_billing_phone', '6281213835254'),
(4429, 165, '_billing_email', 'joe@xendit.co'),
(4428, 165, '_billing_company', 'Xendit'),
(4427, 165, '_billing_last_name', 'Contini'),
(4426, 165, '_billing_first_name', 'Giuseppe'),
(4425, 165, '_order_version', '2.6.13'),
(4456, 165, '_edit_lock', '1489032958:1'),
(4455, 165, 'Xendit_expiry', '1489119430'),
(4454, 165, 'Xendit_invoice', '58c0d7471c9d45e536dccd36'),
(4453, 165, '_order_total', '13125.00'),
(4452, 165, '_order_shipping_tax', '0'),
(4451, 165, '_order_tax', '0'),
(4450, 165, '_cart_discount_tax', '0'),
(4449, 165, '_cart_discount', '0'),
(4448, 165, '_order_shipping', ''),
(4447, 165, '_payment_method_title', 'Xendit'),
(4446, 165, '_payment_method', 'xendit_gateway'),
(4445, 165, '_shipping_postcode', '12940'),
(4444, 165, '_shipping_state', 'JK'),
(4443, 165, '_shipping_city', 'Jakarta Selatan'),
(4442, 165, '_shipping_address_2', 'Jl. Prof. DR. Satrio No.3-5'),
(3640, 106, '_wc_review_count', '6'),
(3641, 19, '_wc_review_count', '2'),
(4261, 159, '_order_key', 'wc_order_58b38dd85ce08'),
(4262, 159, '_order_currency', 'IDR'),
(4358, 163, '_billing_postcode', '56481'),
(4357, 163, '_billing_state', 'JT'),
(4356, 163, '_billing_city', 'MAGELANG'),
(4355, 163, '_billing_address_2', ''),
(4354, 163, '_billing_address_1', 'WONOLELO 05/02, SAWANGAN'),
(4353, 163, '_billing_country', 'ID'),
(4352, 163, '_billing_phone', '081330001060'),
(4350, 163, '_billing_company', ''),
(4351, 163, '_billing_email', 'sutayub@gmail.com'),
(4349, 163, '_billing_last_name', 'Noor'),
(4347, 163, '_order_version', '2.6.13'),
(4348, 163, '_billing_first_name', 'Hassan'),
(4346, 163, '_cart_hash', '063110d3c1e9419193169a4a2b85bfca'),
(4345, 163, '_created_via', 'checkout'),
(4344, 163, '_customer_user', '1'),
(4343, 163, '_customer_user_agent', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(4342, 163, '_customer_ip_address', '118.100.20.58'),
(4340, 163, '_order_currency', 'IDR'),
(4341, 163, '_prices_include_tax', 'no'),
(4339, 163, '_order_key', 'wc_order_58c0b84ae7b1f'),
(4338, 161, 'Xendit_expiry', '1488248867'),
(4337, 161, 'Xendit_invoice', '58b38ea417a5a34f20a66671'),
(4336, 161, '_order_total', '2100000.00'),
(4335, 161, '_order_shipping_tax', '0'),
(4334, 161, '_order_tax', '0'),
(4306, 161, '_created_via', 'checkout'),
(4307, 161, '_cart_hash', '70d7f283294bacda5f6d5dc3e4eb2a63'),
(4308, 161, '_order_version', '2.6.13'),
(4309, 161, '_billing_first_name', 'Hassan'),
(4310, 161, '_billing_last_name', 'Noor'),
(4311, 161, '_billing_company', ''),
(4312, 161, '_billing_email', 'sutayub@gmail.com'),
(4313, 161, '_billing_phone', '081330001060'),
(4314, 161, '_billing_country', 'ID'),
(4315, 161, '_billing_address_1', 'WONOLELO 05/02, SAWANGAN'),
(4316, 161, '_billing_address_2', ''),
(4317, 161, '_billing_city', 'MAGELANG'),
(4318, 161, '_billing_state', 'JT'),
(4319, 161, '_billing_postcode', '56481'),
(4320, 161, '_shipping_first_name', 'Hassan'),
(4321, 161, '_shipping_last_name', 'Noor'),
(4322, 161, '_shipping_company', ''),
(4323, 161, '_shipping_country', 'ID'),
(4324, 161, '_shipping_address_1', 'WONOLELO 05/02, SAWANGAN'),
(4325, 161, '_shipping_address_2', ''),
(4326, 161, '_shipping_city', 'MAGELANG'),
(4327, 161, '_shipping_state', 'JT'),
(4328, 161, '_shipping_postcode', '56481'),
(4329, 161, '_payment_method', 'xendit_gateway'),
(4330, 161, '_payment_method_title', 'Xendit'),
(4331, 161, '_order_shipping', ''),
(4332, 161, '_cart_discount', '0'),
(4333, 161, '_cart_discount_tax', '0'),
(3966, 152, '_billing_address_1', 'WONOLELO 05/02, SAWANGAN'),
(3951, 152, '_order_key', 'wc_order_58a2733687234'),
(3952, 152, '_order_currency', 'IDR'),
(3953, 152, '_prices_include_tax', 'no'),
(3954, 152, '_customer_ip_address', '36.82.188.99'),
(3955, 152, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(4457, 167, '_order_key', 'wc_order_590b1741d4a9c'),
(4458, 167, '_order_currency', 'IDR'),
(4459, 167, '_prices_include_tax', 'no'),
(4460, 167, '_customer_ip_address', '127.0.0.1'),
(4461, 167, '_customer_user_agent', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.81 Safari/537.36'),
(4462, 167, '_customer_user', '1'),
(4463, 167, '_created_via', 'checkout'),
(4464, 167, '_cart_hash', 'bc3fe4da2b58486062573b109588237c'),
(4465, 167, '_order_version', '2.6.13'),
(4466, 167, '_billing_first_name', 'Hassan'),
(4467, 167, '_billing_last_name', 'Noor'),
(4468, 167, '_billing_company', ''),
(4469, 167, '_billing_email', 'sutayub@gmail.com'),
(4470, 167, '_billing_phone', '081330001060'),
(4471, 167, '_billing_country', 'ID'),
(4472, 167, '_billing_address_1', 'WONOLELO 05/02, SAWANGAN'),
(4473, 167, '_billing_address_2', ''),
(4474, 167, '_billing_city', 'MAGELANG'),
(4475, 167, '_billing_state', 'JT'),
(4476, 167, '_billing_postcode', '56481'),
(4477, 167, '_shipping_first_name', 'Hassan'),
(4478, 167, '_shipping_last_name', 'Noor'),
(4479, 167, '_shipping_company', ''),
(4480, 167, '_shipping_country', 'ID'),
(4481, 167, '_shipping_address_1', 'WONOLELO 05/02, SAWANGAN'),
(4482, 167, '_shipping_address_2', ''),
(4483, 167, '_shipping_city', 'MAGELANG'),
(4484, 167, '_shipping_state', 'JT'),
(4485, 167, '_shipping_postcode', '56481'),
(4486, 167, '_payment_method', 'xendit_gateway'),
(4487, 167, '_payment_method_title', 'Xendit'),
(4488, 167, '_order_shipping', ''),
(4489, 167, '_cart_discount', '0'),
(4490, 167, '_cart_discount_tax', '0'),
(4491, 167, '_order_tax', '0'),
(4492, 167, '_order_shipping_tax', '0'),
(4493, 167, '_order_total', '13125.00'),
(4494, 167, 'Xendit_invoice', '590b1744fd4dfece498b62a3'),
(4495, 167, 'Xendit_expiry', '1493985476'),
(4496, 155, '_wp_trash_meta_status', 'wc-processing'),
(4497, 155, '_wp_trash_meta_time', '1495598635'),
(4498, 155, '_wp_desired_post_slug', 'order-feb-14-2017-0530-am'),
(4499, 155, '_wp_trash_meta_comments_status', 'a:3:{i:169;s:1:"1";i:171;s:1:"1";i:170;s:1:"1";}'),
(4500, 154, '_wp_trash_meta_status', 'wc-processing'),
(4501, 154, '_wp_trash_meta_time', '1495598637'),
(4502, 154, '_wp_desired_post_slug', 'order-feb-14-2017-0326-am'),
(4503, 154, '_wp_trash_meta_comments_status', 'a:3:{i:167;s:1:"1";i:166;s:1:"1";i:168;s:1:"1";}'),
(4504, 153, '_wp_trash_meta_status', 'wc-processing'),
(4505, 153, '_wp_trash_meta_time', '1495598639'),
(4506, 153, '_wp_desired_post_slug', 'order-feb-14-2017-0312-am'),
(4507, 153, '_wp_trash_meta_comments_status', 'a:3:{i:164;s:1:"1";i:165;s:1:"1";i:163;s:1:"1";}'),
(4508, 152, '_wp_trash_meta_status', 'wc-processing'),
(4509, 152, '_wp_trash_meta_time', '1495598640'),
(4510, 152, '_wp_desired_post_slug', 'order-feb-14-2017-0302-am'),
(4511, 152, '_wp_trash_meta_comments_status', 'a:3:{i:162;s:1:"1";i:160;s:1:"1";i:161;s:1:"1";}'),
(4512, 167, '_wp_trash_meta_status', 'wc-cancelled'),
(4513, 167, '_wp_trash_meta_time', '1495598655'),
(4514, 167, '_wp_desired_post_slug', 'order-may-04-2017-1157-am'),
(4515, 167, '_wp_trash_meta_comments_status', 'a:1:{i:196;s:1:"1";}'),
(4516, 165, '_wp_trash_meta_status', 'wc-cancelled'),
(4517, 165, '_wp_trash_meta_time', '1495598655'),
(4518, 165, '_wp_desired_post_slug', 'order-mar-09-2017-0417-am'),
(4519, 165, '_wp_trash_meta_comments_status', 'a:1:{i:193;s:1:"1";}'),
(4520, 164, '_wp_trash_meta_status', 'wc-cancelled'),
(4521, 164, '_wp_trash_meta_time', '1495598656'),
(4522, 164, '_wp_desired_post_slug', 'order-mar-09-2017-0208-am'),
(4523, 164, '_wp_trash_meta_comments_status', 'a:1:{i:192;s:1:"1";}'),
(4524, 163, '_wp_trash_meta_status', 'wc-cancelled'),
(4525, 163, '_wp_trash_meta_time', '1495598656'),
(4526, 163, '_wp_desired_post_slug', 'order-mar-09-2017-0204-am'),
(4527, 163, '_wp_trash_meta_comments_status', 'a:1:{i:191;s:1:"1";}'),
(4528, 159, '_wp_trash_meta_status', 'wc-cancelled'),
(4529, 159, '_wp_trash_meta_time', '1495598656'),
(4530, 159, '_wp_desired_post_slug', 'order-feb-27-2017-0224-am'),
(4531, 159, '_wp_trash_meta_comments_status', 'a:1:{i:189;s:1:"1";}'),
(4532, 161, '_wp_trash_meta_status', 'wc-cancelled'),
(4533, 161, '_wp_trash_meta_time', '1495598656'),
(4534, 161, '_wp_desired_post_slug', 'order-feb-27-2017-0227-am'),
(4535, 161, '_wp_trash_meta_comments_status', 'a:1:{i:190;s:1:"1";}'),
(4536, 158, '_wp_trash_meta_status', 'wc-cancelled'),
(4537, 158, '_wp_trash_meta_time', '1495598656'),
(4538, 158, '_wp_desired_post_slug', 'order-feb-14-2017-0656-am'),
(4539, 158, '_wp_trash_meta_comments_status', 'a:1:{i:176;s:1:"1";}'),
(4540, 157, '_wp_trash_meta_status', 'wc-cancelled'),
(4541, 157, '_wp_trash_meta_time', '1495598656'),
(4542, 157, '_wp_desired_post_slug', 'order-feb-14-2017-0651-am'),
(4543, 157, '_wp_trash_meta_comments_status', 'a:1:{i:175;s:1:"1";}'),
(4544, 156, '_wp_trash_meta_status', 'wc-completed'),
(4545, 156, '_wp_trash_meta_time', '1495598656'),
(4546, 156, '_wp_desired_post_slug', 'order-feb-14-2017-0645-am'),
(4547, 156, '_wp_trash_meta_comments_status', 'a:3:{i:172;s:1:"1";i:173;s:1:"1";i:174;s:1:"1";}');

-- --------------------------------------------------------

--
-- Table structure for table `xen_posts`
--

DROP TABLE IF EXISTS `xen_posts`;
CREATE TABLE `xen_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `xen_posts`
--

INSERT INTO `xen_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-01-20 14:07:30', '2017-01-20 14:07:30', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2017-01-20 14:07:30', '2017-01-20 14:07:30', '', 0, 'http://xendit.projectby.id/wp/?p=1', 0, 'post', '', 0),
(2, 1, '2017-01-20 14:07:30', '2017-01-20 14:07:30', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://xendit.projectby.id/wp/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2017-01-20 14:07:30', '2017-01-20 14:07:30', '', 0, 'http://xendit.projectby.id/wp/?page_id=2', 0, 'page', '', 0),
(4, 1, '2017-01-20 14:13:25', '2017-01-20 14:13:25', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2017-01-20 14:13:25', '2017-01-20 14:13:25', '', 0, 'http://xendit.projectby.id/wp/shop/', 0, 'page', '', 0),
(5, 1, '2017-01-20 14:13:25', '2017-01-20 14:13:25', '[woocommerce_cart]', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2017-01-20 14:13:25', '2017-01-20 14:13:25', '', 0, 'http://xendit.projectby.id/wp/cart/', 0, 'page', '', 0),
(6, 1, '2017-01-20 14:13:25', '2017-01-20 14:13:25', '[woocommerce_checkout]', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2017-01-20 14:13:25', '2017-01-20 14:13:25', '', 0, 'http://xendit.projectby.id/wp/checkout/', 0, 'page', '', 0),
(7, 1, '2017-01-20 14:13:25', '2017-01-20 14:13:25', '[woocommerce_my_account]', 'My Account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2017-01-20 14:13:25', '2017-01-20 14:13:25', '', 0, 'http://xendit.projectby.id/wp/my-account/', 0, 'page', '', 0),
(131, 1, '2017-01-27 18:34:35', '2017-01-27 10:34:35', 'Invoice has been paid using unique amount method and will initiate API callback to your callback URL.\r\n\r\nThis will only work with a development API key where amount = 2000000', '[Dev] Successful invoice payment', '', 'publish', 'open', 'closed', '', 'dev-successful-invoice-payment', '', '', '2017-01-27 18:34:35', '2017-01-27 10:34:35', '', 0, 'http://xendit.projectby.id/wp/?post_type=product&#038;p=131', 0, 'product', '', 0),
(112, 1, '2017-01-23 12:21:47', '2017-01-23 04:21:47', 'Percobaan Produc', 'Produk Satu', '', 'publish', 'open', 'closed', '', 'produk-satu', '', '', '2017-01-23 14:45:11', '2017-01-23 06:45:11', '', 0, 'http://xendit.projectby.id/wp/?post_type=product&#038;p=112', 0, 'product', '', 0),
(152, 1, '2017-02-14 11:02:21', '2017-02-14 03:02:21', '', 'Order &ndash; February 14, 2017 @ 11:02 AM', '', 'trash', 'open', 'closed', 'order_58a2733685939', 'order-feb-14-2017-0302-am__trashed', '', '', '2017-05-24 12:04:00', '2017-05-24 04:04:00', '', 0, 'http://xendit.projectby.id/wp/?post_type=shop_order&#038;p=152', 0, 'shop_order', '', 3),
(153, 1, '2017-02-14 11:12:37', '2017-02-14 03:12:37', '', 'Order &ndash; February 14, 2017 @ 11:12 AM', '', 'trash', 'open', 'closed', 'order_58a2759e786ba', 'order-feb-14-2017-0312-am__trashed', '', '', '2017-05-24 12:03:59', '2017-05-24 04:03:59', '', 0, 'http://xendit.projectby.id/wp/?post_type=shop_order&#038;p=153', 0, 'shop_order', '', 3),
(16, 1, '2013-06-07 10:35:28', '2013-06-07 10:35:28', '', 'T_1_front', '', 'inherit', 'open', 'open', '', 't_1_front', '', '', '2013-06-07 10:35:28', '2013-06-07 10:35:28', '', 15, 'http://xendit.projectby.id/wp/wp-content/uploads/2013/06/T_1_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2013-06-07 10:35:39', '2013-06-07 10:35:39', '', 'T_1_back', '', 'inherit', 'open', 'open', '', 't_1_back', '', '', '2013-06-07 10:35:39', '2013-06-07 10:35:39', '', 15, 'http://xendit.projectby.id/wp/wp-content/uploads/2013/06/T_1_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2013-06-07 10:41:23', '2013-06-07 10:41:23', '', 'T_2_front', '', 'inherit', 'open', 'open', '', 't_2_front', '', '', '2013-06-07 10:41:23', '2013-06-07 10:41:23', '', 19, 'http://xendit.projectby.id/wp/wp-content/uploads/2013/06/T_2_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2013-06-07 10:41:34', '2013-06-07 10:41:34', '', 'T_2_back', '', 'inherit', 'open', 'open', '', 't_2_back', '', '', '2013-06-07 10:41:34', '2013-06-07 10:41:34', '', 19, 'http://xendit.projectby.id/wp/wp-content/uploads/2013/06/T_2_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2013-06-07 10:45:14', '2013-06-07 10:45:14', '', 'T_4_front', '', 'inherit', 'open', 'open', '', 't_4_front', '', '', '2013-06-07 10:45:14', '2013-06-07 10:45:14', '', 0, 'http://xendit.projectby.id/wp/wp-content/uploads/2013/06/T_4_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(26, 1, '2013-06-07 10:45:26', '2013-06-07 10:45:26', '', 'T_3_back', '', 'inherit', 'open', 'open', '', 't_3_back', '', '', '2013-06-07 10:45:26', '2013-06-07 10:45:26', '', 0, 'http://xendit.projectby.id/wp/wp-content/uploads/2013/06/T_3_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2013-06-07 10:45:27', '2013-06-07 10:45:27', '', 'T_3_front', '', 'inherit', 'open', 'open', '', 't_3_front', '', '', '2013-06-07 10:45:27', '2013-06-07 10:45:27', '', 0, 'http://xendit.projectby.id/wp/wp-content/uploads/2013/06/T_3_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2013-06-07 10:45:29', '2013-06-07 10:45:29', '', 'T_4_back', '', 'inherit', 'open', 'open', '', 't_4_back', '', '', '2013-06-07 10:45:29', '2013-06-07 10:45:29', '', 0, 'http://xendit.projectby.id/wp/wp-content/uploads/2013/06/T_4_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2013-06-07 10:45:30', '2013-06-07 10:45:30', '', 'T_4_front', '', 'inherit', 'open', 'open', '', 't_4_front-2', '', '', '2013-06-07 10:45:30', '2013-06-07 10:45:30', '', 0, 'http://xendit.projectby.id/wp/wp-content/uploads/2013/06/T_4_front1.jpg', 0, 'attachment', 'image/jpeg', 0),
(165, 1, '2017-03-09 20:31:13', '2017-03-09 12:31:13', '', 'Order &ndash; March 9, 2017 @ 08:31 PM', '', 'trash', 'open', 'closed', 'order_58c0d743b8d10', 'order-mar-09-2017-0417-am__trashed', '', '', '2017-05-24 12:04:15', '2017-05-24 04:04:15', '', 0, 'http://xendit.projectby.id/wp/?post_type=shop_order&#038;p=165', 0, 'shop_order', '', 1),
(51, 1, '2013-06-07 10:49:13', '2013-06-07 10:49:13', '', 'T_5_front', '', 'inherit', 'open', 'open', '', 't_5_front', '', '', '2013-06-07 10:49:13', '2013-06-07 10:49:13', '', 102, 'http://xendit.projectby.id/wp/wp-content/uploads/2013/06/T_5_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2013-06-07 10:49:23', '2013-06-07 10:49:23', '', 'T_5_back', '', 'inherit', 'open', 'open', '', 't_5_back', '', '', '2013-06-07 10:49:23', '2013-06-07 10:49:23', '', 102, 'http://xendit.projectby.id/wp/wp-content/uploads/2013/06/T_5_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(35, 1, '2013-06-07 10:51:51', '2013-06-07 10:51:51', '', 'T_6_front', '', 'inherit', 'open', 'open', '', 't_6_front', '', '', '2013-06-07 10:51:51', '2013-06-07 10:51:51', '', 34, 'http://xendit.projectby.id/wp/wp-content/uploads/2013/06/T_6_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2013-06-07 10:52:02', '2013-06-07 10:52:02', '', 'T_6_back', '', 'inherit', 'open', 'open', '', 't_6_back', '', '', '2013-06-07 10:52:02', '2013-06-07 10:52:02', '', 34, 'http://xendit.projectby.id/wp/wp-content/uploads/2013/06/T_6_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2013-06-07 10:52:55', '2013-06-07 10:52:55', '', 'T_7_front', '', 'inherit', 'open', 'open', '', 't_7_front', '', '', '2013-06-07 10:52:55', '2013-06-07 10:52:55', '', 37, 'http://xendit.projectby.id/wp/wp-content/uploads/2013/06/T_7_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2013-06-07 10:53:29', '2013-06-07 10:53:29', '', 'T_7_back', '', 'inherit', 'open', 'open', '', 't_7_back', '', '', '2013-06-07 10:53:29', '2013-06-07 10:53:29', '', 37, 'http://xendit.projectby.id/wp/wp-content/uploads/2013/06/T_7_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2013-06-07 10:59:40', '2013-06-07 10:59:40', '', 'hoodie_7_front', '', 'inherit', 'open', 'open', '', 'hoodie_7_front', '', '', '2013-06-07 10:59:40', '2013-06-07 10:59:40', '', 0, 'http://xendit.projectby.id/wp/wp-content/uploads/2013/06/hoodie_7_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2013-06-07 10:59:54', '2013-06-07 10:59:54', '', 'hoodie_7_back', '', 'inherit', 'open', 'open', '', 'hoodie_7_back', '', '', '2013-06-07 10:59:54', '2013-06-07 10:59:54', '', 0, 'http://xendit.projectby.id/wp/wp-content/uploads/2013/06/hoodie_7_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2013-06-07 11:00:00', '2013-06-07 11:00:00', '', 'hoodie_1_back', '', 'inherit', 'open', 'open', '', 'hoodie_1_back', '', '', '2013-06-07 11:00:00', '2013-06-07 11:00:00', '', 0, 'http://xendit.projectby.id/wp/wp-content/uploads/2013/06/hoodie_1_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2017-01-22 19:12:56', '2017-01-22 11:12:56', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2017-01-22 19:12:56', '2017-01-22 11:12:56', '', 0, 'http://xendit.projectby.id/wp/?p=28', 1, 'nav_menu_item', '', 0),
(29, 1, '2017-01-22 19:12:56', '2017-01-22 11:12:56', ' ', '', '', 'publish', 'closed', 'closed', '', '29', '', '', '2017-01-22 19:12:56', '2017-01-22 11:12:56', '', 0, 'http://xendit.projectby.id/wp/?p=29', 2, 'nav_menu_item', '', 0),
(30, 1, '2017-01-22 19:12:56', '2017-01-22 11:12:56', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2017-01-22 19:12:56', '2017-01-22 11:12:56', '', 0, 'http://xendit.projectby.id/wp/?p=30', 3, 'nav_menu_item', '', 0),
(31, 1, '2017-01-22 19:12:56', '2017-01-22 11:12:56', ' ', '', '', 'publish', 'closed', 'closed', '', '31', '', '', '2017-01-22 19:12:56', '2017-01-22 11:12:56', '', 0, 'http://xendit.projectby.id/wp/?p=31', 4, 'nav_menu_item', '', 0),
(32, 1, '2017-01-22 19:12:56', '2017-01-22 11:12:56', ' ', '', '', 'publish', 'closed', 'closed', '', '32', '', '', '2017-01-22 19:12:56', '2017-01-22 11:12:56', '', 0, 'http://xendit.projectby.id/wp/?p=32', 5, 'nav_menu_item', '', 0),
(53, 1, '2013-06-07 11:00:01', '2013-06-07 11:00:01', '', 'hoodie_1_front', '', 'inherit', 'open', 'open', '', 'hoodie_1_front', '', '', '2013-06-07 11:00:01', '2013-06-07 11:00:01', '', 0, 'http://xendit.projectby.id/wp/wp-content/uploads/2013/06/hoodie_1_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2013-06-07 11:01:23', '2013-06-07 11:01:23', '', 'hoodie_2_front', '', 'inherit', 'open', 'open', '', 'hoodie_2_front', '', '', '2013-06-07 11:01:23', '2013-06-07 11:01:23', '', 103, 'http://xendit.projectby.id/wp/wp-content/uploads/2013/06/hoodie_2_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2013-06-07 11:02:26', '2013-06-07 11:02:26', '', 'hoodie_2_back', '', 'inherit', 'open', 'open', '', 'hoodie_2_back', '', '', '2013-06-07 11:02:26', '2013-06-07 11:02:26', '', 103, 'http://xendit.projectby.id/wp/wp-content/uploads/2013/06/hoodie_2_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2013-06-07 11:03:16', '2013-06-07 11:03:16', '', 'hoodie_3_front', '', 'inherit', 'open', 'open', '', 'hoodie_3_front', '', '', '2013-06-07 11:03:16', '2013-06-07 11:03:16', '', 104, 'http://xendit.projectby.id/wp/wp-content/uploads/2013/06/hoodie_3_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2013-06-07 11:03:50', '2013-06-07 11:03:50', '', 'hoodie_3_back', '', 'inherit', 'open', 'open', '', 'hoodie_3_back', '', '', '2013-06-07 11:03:50', '2013-06-07 11:03:50', '', 104, 'http://xendit.projectby.id/wp/wp-content/uploads/2013/06/hoodie_3_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2013-06-07 11:05:03', '2013-06-07 11:05:03', '', 'hoodie_4_front', '', 'inherit', 'open', 'open', '', 'hoodie_4_front', '', '', '2013-06-07 11:05:03', '2013-06-07 11:05:03', '', 105, 'http://xendit.projectby.id/wp/wp-content/uploads/2013/06/hoodie_4_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(59, 1, '2013-06-07 11:05:13', '2013-06-07 11:05:13', '', 'hoodie_4_back', '', 'inherit', 'open', 'open', '', 'hoodie_4_back', '', '', '2013-06-07 11:05:13', '2013-06-07 11:05:13', '', 105, 'http://xendit.projectby.id/wp/wp-content/uploads/2013/06/hoodie_4_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2013-06-07 11:06:32', '2013-06-07 11:06:32', '', 'hoodie_5_front', '', 'inherit', 'open', 'open', '', 'hoodie_5_front', '', '', '2013-06-07 11:06:32', '2013-06-07 11:06:32', '', 106, 'http://xendit.projectby.id/wp/wp-content/uploads/2013/06/hoodie_5_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(61, 1, '2013-06-07 11:07:10', '2013-06-07 11:07:10', '', 'hoodie_5_back', '', 'inherit', 'open', 'open', '', 'hoodie_5_back', '', '', '2013-06-07 11:07:10', '2013-06-07 11:07:10', '', 106, 'http://xendit.projectby.id/wp/wp-content/uploads/2013/06/hoodie_5_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2013-06-07 11:12:02', '2013-06-07 11:12:02', '', 'hoodie_6_front', '', 'inherit', 'open', 'open', '', 'hoodie_6_front', '', '', '2013-06-07 11:12:02', '2013-06-07 11:12:02', '', 107, 'http://xendit.projectby.id/wp/wp-content/uploads/2013/06/hoodie_6_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(63, 1, '2013-06-07 11:12:16', '2013-06-07 11:12:16', '', 'hoodie_6_back', '', 'inherit', 'open', 'open', '', 'hoodie_6_back', '', '', '2013-06-07 11:12:16', '2013-06-07 11:12:16', '', 107, 'http://xendit.projectby.id/wp/wp-content/uploads/2013/06/hoodie_6_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 1, '2013-06-07 11:21:34', '2013-06-07 11:21:34', '', 'poster_1_up', '', 'inherit', 'open', 'open', '', 'poster_1_up', '', '', '2013-06-07 11:21:34', '2013-06-07 11:21:34', '', 67, 'http://xendit.projectby.id/wp/wp-content/uploads/2013/06/poster_1_up.jpg', 0, 'attachment', 'image/jpeg', 0),
(69, 1, '2013-06-07 11:22:05', '2013-06-07 11:22:05', '', 'Poster_1_flat', '', 'inherit', 'open', 'open', '', 'poster_1_flat', '', '', '2013-06-07 11:22:05', '2013-06-07 11:22:05', '', 67, 'http://xendit.projectby.id/wp/wp-content/uploads/2013/06/Poster_1_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(71, 1, '2013-06-07 11:24:19', '2013-06-07 11:24:19', '', 'poster_2_up', '', 'inherit', 'open', 'open', '', 'poster_2_up', '', '', '2013-06-07 11:24:19', '2013-06-07 11:24:19', '', 70, 'http://xendit.projectby.id/wp/wp-content/uploads/2013/06/poster_2_up.jpg', 0, 'attachment', 'image/jpeg', 0),
(72, 1, '2013-06-07 11:24:47', '2013-06-07 11:24:47', '', 'Poster_2_flat', '', 'inherit', 'open', 'open', '', 'poster_2_flat', '', '', '2013-06-07 11:24:47', '2013-06-07 11:24:47', '', 70, 'http://xendit.projectby.id/wp/wp-content/uploads/2013/06/Poster_2_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(74, 1, '2013-06-07 11:26:47', '2013-06-07 11:26:47', '', 'poster_3_up', '', 'inherit', 'open', 'open', '', 'poster_3_up', '', '', '2013-06-07 11:26:47', '2013-06-07 11:26:47', '', 73, 'http://xendit.projectby.id/wp/wp-content/uploads/2013/06/poster_3_up.jpg', 0, 'attachment', 'image/jpeg', 0),
(75, 1, '2013-06-07 11:27:31', '2013-06-07 11:27:31', '', 'Poster_3_flat', '', 'inherit', 'open', 'open', '', 'poster_3_flat', '', '', '2013-06-07 11:27:31', '2013-06-07 11:27:31', '', 73, 'http://xendit.projectby.id/wp/wp-content/uploads/2013/06/Poster_3_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(77, 1, '2013-06-07 11:28:07', '2013-06-07 11:28:07', '', 'poster_4_up', '', 'inherit', 'open', 'open', '', 'poster_4_up', '', '', '2013-06-07 11:28:07', '2013-06-07 11:28:07', '', 76, 'http://xendit.projectby.id/wp/wp-content/uploads/2013/06/poster_4_up.jpg', 0, 'attachment', 'image/jpeg', 0),
(78, 1, '2013-06-07 11:28:20', '2013-06-07 11:28:20', '', 'Poster_4_flat', '', 'inherit', 'open', 'open', '', 'poster_4_flat', '', '', '2013-06-07 11:28:20', '2013-06-07 11:28:20', '', 76, 'http://xendit.projectby.id/wp/wp-content/uploads/2013/06/Poster_4_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(80, 1, '2013-06-07 11:29:26', '2013-06-07 11:29:26', '', 'poster_5_up', '', 'inherit', 'open', 'open', '', 'poster_5_up', '', '', '2013-06-07 11:29:26', '2013-06-07 11:29:26', '', 79, 'http://xendit.projectby.id/wp/wp-content/uploads/2013/06/poster_5_up.jpg', 0, 'attachment', 'image/jpeg', 0),
(81, 1, '2013-06-07 11:29:37', '2013-06-07 11:29:37', '', 'Poster_5_flat', '', 'inherit', 'open', 'open', '', 'poster_5_flat', '', '', '2013-06-07 11:29:37', '2013-06-07 11:29:37', '', 79, 'http://xendit.projectby.id/wp/wp-content/uploads/2013/06/Poster_5_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(84, 1, '2013-06-07 11:32:44', '2013-06-07 11:32:44', '', 'cd_1_angle', '', 'inherit', 'open', 'open', '', 'cd_1_angle', '', '', '2013-06-07 11:32:44', '2013-06-07 11:32:44', '', 83, 'http://xendit.projectby.id/wp/wp-content/uploads/2013/06/cd_1_angle.jpg', 0, 'attachment', 'image/jpeg', 0),
(85, 1, '2013-06-07 11:32:57', '2013-06-07 11:32:57', '', 'cd_1_flat', '', 'inherit', 'open', 'open', '', 'cd_1_flat', '', '', '2013-06-07 11:32:57', '2013-06-07 11:32:57', '', 83, 'http://xendit.projectby.id/wp/wp-content/uploads/2013/06/cd_1_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(88, 1, '2013-06-07 11:33:53', '2013-06-07 11:33:53', '', 'cd_2_angle', '', 'inherit', 'open', 'open', '', 'cd_2_angle', '', '', '2013-06-07 11:33:53', '2013-06-07 11:33:53', '', 87, 'http://xendit.projectby.id/wp/wp-content/uploads/2013/06/cd_2_angle.jpg', 0, 'attachment', 'image/jpeg', 0),
(89, 1, '2013-06-07 11:34:07', '2013-06-07 11:34:07', '', 'cd_2_flat', '', 'inherit', 'open', 'open', '', 'cd_2_flat', '', '', '2013-06-07 11:34:07', '2013-06-07 11:34:07', '', 87, 'http://xendit.projectby.id/wp/wp-content/uploads/2013/06/cd_2_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(91, 1, '2013-06-07 11:34:58', '2013-06-07 11:34:58', '', 'cd_3_angle', '', 'inherit', 'open', 'open', '', 'cd_3_angle', '', '', '2013-06-07 11:34:58', '2013-06-07 11:34:58', '', 90, 'http://xendit.projectby.id/wp/wp-content/uploads/2013/06/cd_3_angle.jpg', 0, 'attachment', 'image/jpeg', 0),
(92, 1, '2013-06-07 11:35:10', '2013-06-07 11:35:10', '', 'cd_3_flat', '', 'inherit', 'open', 'open', '', 'cd_3_flat', '', '', '2013-06-07 11:35:10', '2013-06-07 11:35:10', '', 90, 'http://xendit.projectby.id/wp/wp-content/uploads/2013/06/cd_3_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(94, 1, '2013-06-07 11:36:10', '2013-06-07 11:36:10', '', 'cd_4_flat', '', 'inherit', 'open', 'open', '', 'cd_4_flat', '', '', '2013-06-07 11:36:10', '2013-06-07 11:36:10', '', 93, 'http://xendit.projectby.id/wp/wp-content/uploads/2013/06/cd_4_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(95, 1, '2013-06-07 11:36:22', '2013-06-07 11:36:22', '', 'cd_4_angle', '', 'inherit', 'open', 'open', '', 'cd_4_angle', '', '', '2013-06-07 11:36:22', '2013-06-07 11:36:22', '', 93, 'http://xendit.projectby.id/wp/wp-content/uploads/2013/06/cd_4_angle.jpg', 0, 'attachment', 'image/jpeg', 0),
(97, 1, '2013-06-07 11:37:04', '2013-06-07 11:37:04', '', 'cd_5_angle', '', 'inherit', 'open', 'open', '', 'cd_5_angle', '', '', '2013-06-07 11:37:04', '2013-06-07 11:37:04', '', 96, 'http://xendit.projectby.id/wp/wp-content/uploads/2013/06/cd_5_angle.jpg', 0, 'attachment', 'image/jpeg', 0),
(98, 1, '2013-06-07 11:37:17', '2013-06-07 11:37:17', '', 'cd_5_flat', '', 'inherit', 'open', 'open', '', 'cd_5_flat', '', '', '2013-06-07 11:37:17', '2013-06-07 11:37:17', '', 96, 'http://xendit.projectby.id/wp/wp-content/uploads/2013/06/cd_5_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(100, 1, '2013-06-07 11:37:51', '2013-06-07 11:37:51', '', 'cd_6_angle', '', 'inherit', 'open', 'open', '', 'cd_6_angle', '', '', '2013-06-07 11:37:51', '2013-06-07 11:37:51', '', 99, 'http://xendit.projectby.id/wp/wp-content/uploads/2013/06/cd_6_angle.jpg', 0, 'attachment', 'image/jpeg', 0),
(101, 1, '2013-06-07 11:38:03', '2013-06-07 11:38:03', '', 'cd_6_flat', '', 'inherit', 'open', 'open', '', 'cd_6_flat', '', '', '2013-06-07 11:38:03', '2013-06-07 11:38:03', '', 99, 'http://xendit.projectby.id/wp/wp-content/uploads/2013/06/cd_6_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(15, 1, '2013-06-07 10:35:51', '2013-06-07 10:35:51', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Logo', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-logo', '', '', '2013-06-07 10:35:51', '2013-06-07 10:35:51', '', 0, 'http://demo.woothemes.com/woocommerce/?post_type=product&amp;p=15', 0, 'product', '', 1),
(19, 1, '2013-06-07 10:41:52', '2013-06-07 10:41:52', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Premium Quality', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'premium-quality', '', '', '2013-06-07 10:41:52', '2013-06-07 10:41:52', '', 0, 'http://demo.woothemes.com/woocommerce/?post_type=product&amp;p=19', 0, 'product', '', 2),
(156, 1, '2017-02-14 14:46:04', '2017-02-14 06:46:04', '', 'Order &ndash; February 14, 2017 @ 02:46 PM', '', 'trash', 'open', 'closed', 'order_58a2a79def87f', 'order-feb-14-2017-0645-am__trashed', '', '', '2017-05-24 12:04:16', '2017-05-24 04:04:16', '', 0, 'http://xendit.projectby.id/wp/?post_type=shop_order&#038;p=156', 0, 'shop_order', '', 3),
(157, 1, '2017-02-14 14:54:07', '2017-02-14 06:54:07', '', 'Order &ndash; February 14, 2017 @ 02:54 PM', '', 'trash', 'open', 'closed', 'order_58a2a900c4634', 'order-feb-14-2017-0651-am__trashed', '', '', '2017-05-24 12:04:16', '2017-05-24 04:04:16', '', 0, 'http://xendit.projectby.id/wp/?post_type=shop_order&#038;p=157', 0, 'shop_order', '', 1),
(102, 1, '2013-06-07 10:49:51', '2013-06-07 10:49:51', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Ninja Silhouette', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'ninja-silhouette', '', '', '2013-06-07 10:49:51', '2013-06-07 10:49:51', '', 0, 'http://demo.woothemes.com/woocommerce/?post_type=product&amp;p=31', 0, 'product', '', 1),
(34, 1, '2013-06-07 10:52:06', '2013-06-07 10:52:06', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Ninja', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-ninja', '', '', '2013-06-07 10:52:06', '2013-06-07 10:52:06', '', 0, 'http://demo.woothemes.com/woocommerce/?post_type=product&amp;p=34', 0, 'product', '', 0),
(37, 1, '2013-06-07 10:53:15', '2013-06-07 10:53:15', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Happy Ninja', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'happy-ninja', '', '', '2013-06-07 10:53:15', '2013-06-07 10:53:15', '', 0, 'http://demo.woothemes.com/woocommerce/?post_type=product&amp;p=37', 0, 'product', '', 2),
(103, 1, '2013-06-07 11:02:31', '2013-06-07 11:02:31', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Ninja', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-ninja-2', '', '', '2013-06-07 11:02:31', '2013-06-07 11:02:31', '', 0, 'http://demo.woothemes.com/woocommerce/?post_type=product&amp;p=47', 0, 'product', '', 2),
(104, 1, '2013-06-07 11:03:56', '2013-06-07 11:03:56', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Patient Ninja', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'patient-ninja', '', '', '2013-06-07 11:03:56', '2013-06-07 11:03:56', '', 0, 'http://demo.woothemes.com/woocommerce/?post_type=product&amp;p=50', 0, 'product', '', 3),
(105, 1, '2013-06-07 11:05:37', '2013-06-07 11:05:37', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Happy Ninja', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'happy-ninja-2', '', '', '2013-06-07 11:05:37', '2013-06-07 11:05:37', '', 0, 'http://demo.woothemes.com/woocommerce/?post_type=product&amp;p=53', 0, 'product', '', 2),
(106, 1, '2013-06-07 11:07:19', '2013-06-07 11:07:19', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Ninja Silhouette', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'ninja-silhouette-2', '', '', '2013-06-07 11:07:19', '2013-06-07 11:07:19', '', 0, 'http://demo.woothemes.com/woocommerce/?post_type=product&amp;p=56', 0, 'product', '', 6),
(107, 1, '2013-06-07 11:12:55', '2013-06-07 11:12:55', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Logo', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-logo-2', '', '', '2013-06-07 11:12:55', '2013-06-07 11:12:55', '', 0, 'http://demo.woothemes.com/woocommerce/?post_type=product&amp;p=60', 0, 'product', '', 2),
(67, 1, '2013-06-07 11:22:50', '2013-06-07 03:22:50', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Ship Your Idea', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'ship-your-idea-3', '', '', '2017-01-23 07:21:05', '2017-01-22 23:21:05', '', 0, 'http://demo.woothemes.com/woocommerce/?post_type=product&#038;p=67', 0, 'product', '', 0),
(70, 1, '2013-06-07 11:25:01', '2013-06-07 11:25:01', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Flying Ninja', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'flying-ninja', '', '', '2017-01-23 07:19:17', '2017-01-22 23:19:17', '', 0, 'http://demo.woothemes.com/woocommerce/?post_type=product&#038;p=70', 0, 'product', '', 4),
(73, 1, '2013-06-07 11:27:38', '2013-06-07 11:27:38', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Premium Quality', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'premium-quality-2', '', '', '2013-06-07 11:27:38', '2013-06-07 11:27:38', '', 0, 'http://demo.woothemes.com/woocommerce/?post_type=product&amp;p=73', 0, 'product', '', 2),
(76, 1, '2013-06-07 11:28:45', '2013-06-07 03:28:45', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Ninja', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-ninja-3', '', '', '2017-01-23 07:21:36', '2017-01-22 23:21:36', '', 0, 'http://demo.woothemes.com/woocommerce/?post_type=product&#038;p=76', 0, 'product', '', 1),
(158, 1, '2017-02-15 19:00:48', '2017-02-15 11:00:48', '', 'Order &ndash; February 15, 2017 @ 07:00 PM', '', 'trash', 'open', 'closed', 'order_58a2aa0006085', 'order-feb-14-2017-0656-am__trashed', '', '', '2017-05-24 12:04:16', '2017-05-24 04:04:16', '', 0, 'http://xendit.projectby.id/wp/?post_type=shop_order&#038;p=158', 0, 'shop_order', '', 1),
(79, 1, '2013-06-07 11:29:44', '2013-06-07 11:29:44', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Logo', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-logo-3', '', '', '2017-01-23 07:20:27', '2017-01-22 23:20:27', '', 0, 'http://demo.woothemes.com/woocommerce/?post_type=product&#038;p=79', 0, 'product', '', 0),
(83, 1, '2013-06-07 11:33:05', '2013-06-07 11:33:05', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Album #1', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-album-1', '', '', '2013-06-07 11:33:05', '2013-06-07 11:33:05', '', 0, 'http://demo.woothemes.com/woocommerce/?post_type=product&amp;p=83', 0, 'product', '', 0),
(87, 1, '2013-06-07 11:34:14', '2013-06-07 11:34:14', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Album #2', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-album-2', '', '', '2013-06-07 11:34:14', '2013-06-07 11:34:14', '', 0, 'http://demo.woothemes.com/woocommerce/?post_type=product&amp;p=87', 0, 'product', '', 1),
(90, 1, '2013-06-07 11:35:18', '2013-06-07 11:35:18', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Album #3', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-album-3', '', '', '2013-06-07 11:35:18', '2013-06-07 11:35:18', '', 0, 'http://demo.woothemes.com/woocommerce/?post_type=product&amp;p=90', 0, 'product', '', 1),
(93, 1, '2013-06-07 11:36:34', '2013-06-07 11:36:34', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Single #1', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-single-1', '', '', '2013-06-07 11:36:34', '2013-06-07 11:36:34', '', 0, 'http://demo.woothemes.com/woocommerce/?post_type=product&amp;p=93', 0, 'product', '', 0),
(96, 1, '2013-06-07 11:37:23', '2013-06-07 11:37:23', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Album #4', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-album-4', '', '', '2013-06-07 11:37:23', '2013-06-07 11:37:23', '', 0, 'http://demo.woothemes.com/woocommerce/?post_type=product&amp;p=96', 0, 'product', '', 2),
(99, 1, '2013-06-07 11:38:12', '2013-06-07 11:38:12', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Single #2', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-single-2', '', '', '2013-06-07 11:38:12', '2013-06-07 11:38:12', '', 0, 'http://demo.woothemes.com/woocommerce/?post_type=product&amp;p=99', 0, 'product', '', 2),
(154, 1, '2017-02-14 11:26:39', '2017-02-14 03:26:39', '', 'Order &ndash; February 14, 2017 @ 11:26 AM', '', 'trash', 'open', 'closed', 'order_58a278e65c466', 'order-feb-14-2017-0326-am__trashed', '', '', '2017-05-24 12:03:57', '2017-05-24 04:03:57', '', 0, 'http://xendit.projectby.id/wp/?post_type=shop_order&#038;p=154', 0, 'shop_order', '', 3),
(155, 1, '2017-02-14 13:31:09', '2017-02-14 05:31:09', '', 'Order &ndash; February 14, 2017 @ 01:31 PM', '', 'trash', 'open', 'closed', 'order_58a2961272ef6', 'order-feb-14-2017-0530-am__trashed', '', '', '2017-05-24 12:03:55', '2017-05-24 04:03:55', '', 0, 'http://xendit.projectby.id/wp/?post_type=shop_order&#038;p=155', 0, 'shop_order', '', 3),
(159, 1, '2017-02-27 12:06:36', '2017-02-27 04:06:36', '', 'Order &ndash; February 27, 2017 @ 12:06 PM', '', 'trash', 'open', 'closed', 'order_58b38dd852713', 'order-feb-27-2017-0224-am__trashed', '', '', '2017-05-24 12:04:16', '2017-05-24 04:04:16', '', 0, 'http://xendit.projectby.id/wp/?post_type=shop_order&#038;p=159', 0, 'shop_order', '', 1),
(168, 1, '2017-05-24 12:02:36', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-05-24 12:02:36', '0000-00-00 00:00:00', '', 0, 'https://woocommerce.xendit.co/?p=168', 0, 'post', '', 0),
(161, 1, '2017-02-27 12:06:36', '2017-02-27 04:06:36', '', 'Order &ndash; February 27, 2017 @ 12:06 PM', '', 'trash', 'open', 'closed', 'order_58b38ea23f1d5', 'order-feb-27-2017-0227-am__trashed', '', '', '2017-05-24 12:04:16', '2017-05-24 04:04:16', '', 0, 'http://xendit.projectby.id/wp/?post_type=shop_order&#038;p=161', 0, 'shop_order', '', 1),
(163, 1, '2017-03-09 10:07:16', '2017-03-09 02:07:16', '', 'Order &ndash; March 9, 2017 @ 10:07 AM', '', 'trash', 'open', 'closed', 'order_58c0b84ae2f66', 'order-mar-09-2017-0204-am__trashed', '', '', '2017-05-24 12:04:16', '2017-05-24 04:04:16', '', 0, 'http://xendit.projectby.id/wp/?post_type=shop_order&#038;p=163', 0, 'shop_order', '', 1),
(164, 1, '2017-03-09 12:16:17', '2017-03-09 04:16:17', '', 'Order &ndash; March 9, 2017 @ 12:16 PM', '', 'trash', 'open', 'closed', 'order_58c0b90316478', 'order-mar-09-2017-0208-am__trashed', '', '', '2017-05-24 12:04:16', '2017-05-24 04:04:16', '', 0, 'http://xendit.projectby.id/wp/?post_type=shop_order&#038;p=164', 0, 'shop_order', '', 1),
(167, 1, '2017-05-04 20:59:45', '2017-05-04 12:59:45', '', 'Order &ndash; May 4, 2017 @ 08:59 PM', '', 'trash', 'open', 'closed', 'order_590b1741d1bc1', 'order-may-04-2017-1157-am__trashed', '', '', '2017-05-24 12:04:15', '2017-05-24 04:04:15', '', 0, 'http://woocommerce.xendit.dev/?post_type=shop_order&#038;p=167', 0, 'shop_order', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `xen_termmeta`
--

DROP TABLE IF EXISTS `xen_termmeta`;
CREATE TABLE `xen_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `xen_termmeta`
--

INSERT INTO `xen_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 10, 'order', '0'),
(2, 11, 'order', '0'),
(3, 12, 'order', '0'),
(4, 13, 'order', '0'),
(5, 14, 'order', '0'),
(6, 15, 'order', '0'),
(7, 16, 'order', '0'),
(8, 10, 'product_count_product_cat', '10'),
(9, 15, 'product_count_product_cat', '5'),
(10, 11, 'product_count_product_cat', '5'),
(11, 13, 'product_count_product_cat', '5'),
(12, 16, 'product_count_product_cat', '4'),
(13, 12, 'product_count_product_cat', '7'),
(14, 14, 'product_count_product_cat', '2');

-- --------------------------------------------------------

--
-- Table structure for table `xen_terms`
--

DROP TABLE IF EXISTS `xen_terms`;
CREATE TABLE `xen_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `xen_terms`
--

INSERT INTO `xen_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'Main Menu', 'main-menu', 0),
(7, 'Black', 'black', 0),
(8, 'Blue', 'blue', 0),
(9, 'Green', 'green', 0),
(10, 'Clothing', 'clothing', 0),
(11, 'Hoodies', 'hoodies', 0),
(12, 'Music', 'music', 0),
(13, 'Posters', 'posters', 0),
(14, 'Singles', 'singles', 0),
(15, 'T-shirts', 't-shirts', 0),
(16, 'Albums', 'albums', 0),
(17, 'exclude-from-search', 'exclude-from-search', 0),
(18, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(19, 'featured', 'featured', 0),
(20, 'outofstock', 'outofstock', 0),
(21, 'rated-1', 'rated-1', 0),
(22, 'rated-2', 'rated-2', 0),
(23, 'rated-3', 'rated-3', 0),
(24, 'rated-4', 'rated-4', 0),
(25, 'rated-5', 'rated-5', 0);

-- --------------------------------------------------------

--
-- Table structure for table `xen_term_relationships`
--

DROP TABLE IF EXISTS `xen_term_relationships`;
CREATE TABLE `xen_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `xen_term_relationships`
--

INSERT INTO `xen_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(28, 6, 0),
(29, 6, 0),
(30, 6, 0),
(31, 6, 0),
(32, 6, 0),
(15, 10, 0),
(15, 15, 0),
(15, 2, 0),
(19, 10, 0),
(19, 15, 0),
(19, 2, 0),
(112, 12, 0),
(112, 2, 0),
(131, 2, 0),
(102, 10, 0),
(102, 15, 0),
(102, 2, 0),
(34, 10, 0),
(34, 15, 0),
(34, 2, 0),
(37, 10, 0),
(37, 15, 0),
(37, 2, 0),
(103, 10, 0),
(103, 11, 0),
(103, 2, 0),
(104, 10, 0),
(104, 11, 0),
(104, 2, 0),
(105, 10, 0),
(105, 11, 0),
(105, 2, 0),
(106, 10, 0),
(106, 11, 0),
(106, 2, 0),
(107, 10, 0),
(107, 11, 0),
(107, 2, 0),
(67, 13, 0),
(67, 2, 0),
(70, 13, 0),
(70, 2, 0),
(73, 13, 0),
(73, 2, 0),
(76, 13, 0),
(76, 2, 0),
(79, 13, 0),
(79, 2, 0),
(83, 16, 0),
(83, 12, 0),
(83, 2, 0),
(87, 16, 0),
(87, 12, 0),
(87, 2, 0),
(90, 16, 0),
(90, 12, 0),
(90, 2, 0),
(93, 12, 0),
(93, 14, 0),
(93, 2, 0),
(96, 16, 0),
(96, 12, 0),
(96, 2, 0),
(99, 12, 0),
(99, 14, 0),
(99, 2, 0),
(15, 19, 0),
(104, 19, 0),
(106, 19, 0),
(87, 19, 0),
(73, 22, 0),
(105, 23, 0),
(90, 23, 0),
(107, 24, 0),
(106, 24, 0),
(103, 24, 0),
(19, 24, 0),
(15, 24, 0),
(70, 24, 0),
(76, 24, 0),
(87, 24, 0),
(99, 24, 0),
(104, 25, 0),
(102, 25, 0),
(37, 25, 0),
(96, 25, 0);

-- --------------------------------------------------------

--
-- Table structure for table `xen_term_taxonomy`
--

DROP TABLE IF EXISTS `xen_term_taxonomy`;
CREATE TABLE `xen_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `xen_term_taxonomy`
--

INSERT INTO `xen_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'product_type', '', 0, 23),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'nav_menu', '', 0, 5),
(7, 7, 'pa_color', '', 0, 0),
(8, 8, 'pa_color', '', 0, 0),
(9, 9, 'pa_color', '', 0, 0),
(10, 10, 'product_cat', '', 0, 10),
(11, 11, 'product_cat', '', 10, 5),
(12, 12, 'product_cat', '', 0, 7),
(13, 13, 'product_cat', '', 0, 5),
(14, 14, 'product_cat', '', 12, 2),
(15, 15, 'product_cat', '', 10, 5),
(16, 16, 'product_cat', '', 12, 4),
(17, 17, 'product_visibility', '', 0, 0),
(18, 18, 'product_visibility', '', 0, 0),
(19, 19, 'product_visibility', '', 0, 0),
(20, 20, 'product_visibility', '', 0, 0),
(21, 21, 'product_visibility', '', 0, 0),
(22, 22, 'product_visibility', '', 0, 0),
(23, 23, 'product_visibility', '', 0, 0),
(24, 24, 'product_visibility', '', 0, 0),
(25, 25, 'product_visibility', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `xen_usermeta`
--

DROP TABLE IF EXISTS `xen_usermeta`;
CREATE TABLE `xen_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `xen_usermeta`
--

INSERT INTO `xen_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'xendit@projectby.id'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', ''),
(11, 1, 'xen_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(12, 1, 'xen_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', ''),
(14, 1, 'show_welcome_panel', '0'),
(15, 1, 'session_tokens', 'a:1:{s:64:"701ac611e24992345b510c7e7de42fabd5182675ba159a7af4b9087a91913534";a:4:{s:10:"expiration";i:1495771356;s:2:"ip";s:14:"175.140.169.26";s:2:"ua";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36";s:5:"login";i:1495598556;}}'),
(16, 1, 'xen_dashboard_quick_press_last_post_id', '168'),
(17, 1, 'manageedit-shop_ordercolumnshidden', 'a:1:{i:0;s:15:"billing_address";}'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:5:{i:0;s:30:"woocommerce_endpoints_nav_link";i:1;s:21:"add-post-type-product";i:2;s:12:"add-post_tag";i:3;s:15:"add-product_cat";i:4;s:15:"add-product_tag";}'),
(41, 1, 'closedpostboxes_shop_order', 'a:1:{i:0;s:25:"woocommerce-order-actions";}'),
(42, 1, 'metaboxhidden_shop_order', 'a:0:{}'),
(50, 2, 'nickname', 'teofebano.stei'),
(51, 2, 'first_name', 'Teofebano'),
(52, 2, 'last_name', 'Kristo'),
(53, 2, 'description', ''),
(21, 1, 'billing_first_name', 'Test'),
(22, 1, 'billing_last_name', 'Admin'),
(23, 1, 'billing_company', 'Xendit'),
(24, 1, 'billing_email', 'tommy@xendit.co'),
(25, 1, 'billing_phone', '0123456789'),
(26, 1, 'billing_country', 'ID'),
(27, 1, 'billing_address_1', 'No. 1, Xendit Road'),
(28, 1, 'billing_address_2', ''),
(29, 1, 'billing_city', 'Jakarta'),
(30, 1, 'billing_state', 'JK'),
(31, 1, 'billing_postcode', '56481'),
(32, 1, 'last_update', '1495598867'),
(44, 1, 'xen_user-settings', 'libraryContent=browse'),
(45, 1, 'xen_user-settings-time', '1485145303'),
(76, 1, 'closedpostboxes_dashboard', 'a:3:{i:0;s:18:"dashboard_activity";i:1;s:18:"woo_vl_news_widget";i:2;s:17:"dashboard_primary";}'),
(77, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(78, 1, 'meta-box-order_dashboard', 'a:4:{s:6:"normal";s:69:"dashboard_right_now,woo_st-dashboard_right_now,woo_st-dashboard_sales";s:4:"side";s:143:"dashboard_quick_press,woocommerce_dashboard_status,woocommerce_dashboard_recent_reviews,dashboard_activity,woo_vl_news_widget,dashboard_primary";s:7:"column3";s:0:"";s:7:"column4";s:0:"";}'),
(54, 2, 'rich_editing', 'true'),
(55, 2, 'comment_shortcuts', 'false'),
(56, 2, 'admin_color', 'fresh'),
(57, 2, 'use_ssl', '0'),
(58, 2, 'show_admin_bar_front', 'true'),
(59, 2, 'locale', ''),
(60, 2, 'xen_capabilities', 'a:1:{s:8:"customer";b:1;}'),
(61, 2, 'xen_user_level', '0'),
(64, 2, 'last_update', '1485310755'),
(65, 2, 'billing_first_name', 'Teofebano'),
(66, 2, 'billing_last_name', 'Kristo'),
(67, 2, 'billing_company', 'Xendit'),
(68, 2, 'billing_email', 'teofebano.stei@bonbon.com'),
(69, 2, 'billing_phone', '0897121346123'),
(70, 2, 'billing_country', 'ID'),
(71, 2, 'billing_address_1', 'jalan langsat'),
(72, 2, 'billing_address_2', 'suite'),
(73, 2, 'billing_city', 'bandung'),
(74, 2, 'billing_state', 'KI'),
(75, 2, 'billing_postcode', '12345'),
(92, 1, '_woocommerce_persistent_cart', 'a:1:{s:4:"cart";a:2:{s:32:"7cbbc409ec990f19c78c75bd1e06f215";a:9:{s:10:"product_id";i:70;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:10:"line_total";d:12500;s:8:"line_tax";i:0;s:13:"line_subtotal";i:12500;s:17:"line_subtotal_tax";i:0;s:13:"line_tax_data";a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}}s:32:"a5bfc9e07964f8dddeb95fc584cd965d";a:9:{s:10:"product_id";i:37;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:10:"line_total";d:234000;s:8:"line_tax";i:0;s:13:"line_subtotal";i:234000;s:17:"line_subtotal_tax";i:0;s:13:"line_tax_data";a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}}}}'),
(81, 1, 'paying_customer', '1');

-- --------------------------------------------------------

--
-- Table structure for table `xen_users`
--

DROP TABLE IF EXISTS `xen_users`;
CREATE TABLE `xen_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `xen_users`
--

INSERT INTO `xen_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin@xendit.co', '$1$udil6nUG$xKKG52g3HW766on3yivr.1', 'admin', 'admin@xendit.co', '', '2017-01-20 14:07:30', '', 0, 'admin'),
(2, 'joe@xendit.co', '$1$udil6nUG$xKKG52g3HW766on3yivr.1', 'admin2', 'joe@xendit.co', '', '2017-01-25 02:19:15', '', 0, 'Joe');

-- --------------------------------------------------------

--
-- Table structure for table `xen_woocommerce_api_keys`
--

DROP TABLE IF EXISTS `xen_woocommerce_api_keys`;
CREATE TABLE `xen_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_520_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xen_woocommerce_attribute_taxonomies`
--

DROP TABLE IF EXISTS `xen_woocommerce_attribute_taxonomies`;
CREATE TABLE `xen_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `xen_woocommerce_attribute_taxonomies`
--

INSERT INTO `xen_woocommerce_attribute_taxonomies` (`attribute_id`, `attribute_name`, `attribute_label`, `attribute_type`, `attribute_orderby`, `attribute_public`) VALUES
(1, 'color', 'color', 'select', 'menu_order', 0);

-- --------------------------------------------------------

--
-- Table structure for table `xen_woocommerce_downloadable_product_permissions`
--

DROP TABLE IF EXISTS `xen_woocommerce_downloadable_product_permissions`;
CREATE TABLE `xen_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xen_woocommerce_log`
--

DROP TABLE IF EXISTS `xen_woocommerce_log`;
CREATE TABLE `xen_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xen_woocommerce_order_itemmeta`
--

DROP TABLE IF EXISTS `xen_woocommerce_order_itemmeta`;
CREATE TABLE `xen_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `xen_woocommerce_order_itemmeta`
--

INSERT INTO `xen_woocommerce_order_itemmeta` (`meta_id`, `order_item_id`, `meta_key`, `meta_value`) VALUES
(688, 77, '_variation_id', '0'),
(687, 77, '_product_id', '70'),
(686, 77, '_tax_class', ''),
(685, 77, '_qty', '1'),
(648, 72, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(684, 76, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(647, 72, '_line_tax', '0'),
(646, 72, '_line_subtotal_tax', '0'),
(645, 72, '_line_total', '2000000'),
(644, 72, '_line_subtotal', '2000000'),
(643, 72, '_variation_id', '0'),
(642, 72, '_product_id', '131'),
(641, 72, '_tax_class', ''),
(640, 72, '_qty', '1'),
(630, 70, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(629, 70, '_line_tax', '0'),
(628, 70, '_line_subtotal_tax', '0'),
(627, 70, '_line_total', '234000'),
(626, 70, '_line_subtotal', '234000'),
(625, 70, '_variation_id', '0'),
(622, 70, '_qty', '1'),
(623, 70, '_tax_class', ''),
(624, 70, '_product_id', '37'),
(621, 69, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(683, 76, '_line_tax', '0'),
(682, 76, '_line_subtotal_tax', '0'),
(681, 76, '_line_total', '12500'),
(680, 76, '_line_subtotal', '12500'),
(679, 76, '_variation_id', '0'),
(620, 69, '_line_tax', '0'),
(619, 69, '_line_subtotal_tax', '0'),
(618, 69, '_line_total', '12500'),
(617, 69, '_line_subtotal', '12500'),
(616, 69, '_variation_id', '0'),
(615, 69, '_product_id', '70'),
(614, 69, '_tax_class', ''),
(613, 69, '_qty', '1'),
(559, 63, '_qty', '1'),
(560, 63, '_tax_class', ''),
(561, 63, '_product_id', '131'),
(562, 63, '_variation_id', '0'),
(563, 63, '_line_subtotal', '2000000'),
(564, 63, '_line_total', '2000000'),
(565, 63, '_line_subtotal_tax', '0'),
(566, 63, '_line_tax', '0'),
(567, 63, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(568, 64, '_qty', '1'),
(569, 64, '_tax_class', ''),
(570, 64, '_product_id', '131'),
(571, 64, '_variation_id', '0'),
(572, 64, '_line_subtotal', '2000000'),
(573, 64, '_line_total', '2000000'),
(574, 64, '_line_subtotal_tax', '0'),
(575, 64, '_line_tax', '0'),
(576, 64, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(577, 65, '_qty', '1'),
(578, 65, '_tax_class', ''),
(579, 65, '_product_id', '131'),
(580, 65, '_variation_id', '0'),
(581, 65, '_line_subtotal', '2000000'),
(582, 65, '_line_total', '2000000'),
(583, 65, '_line_subtotal_tax', '0'),
(584, 65, '_line_tax', '0'),
(585, 65, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(586, 66, '_qty', '1'),
(587, 66, '_tax_class', ''),
(588, 66, '_product_id', '131'),
(589, 66, '_variation_id', '0'),
(590, 66, '_line_subtotal', '2000000'),
(591, 66, '_line_total', '2000000'),
(592, 66, '_line_subtotal_tax', '0'),
(593, 66, '_line_tax', '0'),
(594, 66, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(595, 67, '_qty', '1'),
(596, 67, '_tax_class', ''),
(597, 67, '_product_id', '131'),
(598, 67, '_variation_id', '0'),
(599, 67, '_line_subtotal', '2000000'),
(600, 67, '_line_total', '2000000'),
(601, 67, '_line_subtotal_tax', '0'),
(602, 67, '_line_tax', '0'),
(603, 67, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(604, 68, '_qty', '1'),
(605, 68, '_tax_class', ''),
(606, 68, '_product_id', '131'),
(607, 68, '_variation_id', '0'),
(608, 68, '_line_subtotal', '2000000'),
(609, 68, '_line_total', '2000000'),
(610, 68, '_line_subtotal_tax', '0'),
(611, 68, '_line_tax', '0'),
(612, 68, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(689, 77, '_line_subtotal', '12500'),
(674, 75, '_line_tax', '0'),
(675, 75, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(676, 76, '_qty', '1'),
(677, 76, '_tax_class', ''),
(678, 76, '_product_id', '70'),
(693, 77, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(690, 77, '_line_total', '12500'),
(691, 77, '_line_subtotal_tax', '0'),
(692, 77, '_line_tax', '0'),
(694, 78, '_qty', '1'),
(695, 78, '_tax_class', ''),
(696, 78, '_product_id', '70'),
(697, 78, '_variation_id', '0'),
(698, 78, '_line_subtotal', '12500'),
(699, 78, '_line_total', '12500'),
(700, 78, '_line_subtotal_tax', '0'),
(701, 78, '_line_tax', '0'),
(702, 78, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(673, 75, '_line_subtotal_tax', '0'),
(672, 75, '_line_total', '2000000'),
(669, 75, '_product_id', '131'),
(670, 75, '_variation_id', '0'),
(671, 75, '_line_subtotal', '2000000'),
(667, 75, '_qty', '1'),
(668, 75, '_tax_class', ''),
(703, 79, '_qty', '1'),
(704, 79, '_tax_class', ''),
(705, 79, '_product_id', '70'),
(706, 79, '_variation_id', '0'),
(707, 79, '_line_subtotal', '12500'),
(708, 79, '_line_total', '12500'),
(709, 79, '_line_subtotal_tax', '0'),
(710, 79, '_line_tax', '0'),
(711, 79, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}');

-- --------------------------------------------------------

--
-- Table structure for table `xen_woocommerce_order_items`
--

DROP TABLE IF EXISTS `xen_woocommerce_order_items`;
CREATE TABLE `xen_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `xen_woocommerce_order_items`
--

INSERT INTO `xen_woocommerce_order_items` (`order_item_id`, `order_item_name`, `order_item_type`, `order_id`) VALUES
(63, '[Dev] Successful invoice payment', 'line_item', 152),
(64, '[Dev] Successful invoice payment', 'line_item', 153),
(65, '[Dev] Successful invoice payment', 'line_item', 154),
(66, '[Dev] Successful invoice payment', 'line_item', 155),
(67, '[Dev] Successful invoice payment', 'line_item', 156),
(68, '[Dev] Successful invoice payment', 'line_item', 157),
(69, 'Flying Ninja', 'line_item', 158),
(70, 'Happy Ninja', 'line_item', 159),
(72, '[Dev] Successful invoice payment', 'line_item', 161),
(75, '[Dev] Successful invoice payment', 'line_item', 163),
(76, 'Flying Ninja', 'line_item', 163),
(77, 'Flying Ninja', 'line_item', 164),
(78, 'Flying Ninja', 'line_item', 165),
(79, 'Flying Ninja', 'line_item', 167);

-- --------------------------------------------------------

--
-- Table structure for table `xen_woocommerce_payment_tokenmeta`
--

DROP TABLE IF EXISTS `xen_woocommerce_payment_tokenmeta`;
CREATE TABLE `xen_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xen_woocommerce_payment_tokens`
--

DROP TABLE IF EXISTS `xen_woocommerce_payment_tokens`;
CREATE TABLE `xen_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xen_woocommerce_sessions`
--

DROP TABLE IF EXISTS `xen_woocommerce_sessions`;
CREATE TABLE `xen_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `xen_woocommerce_sessions`
--

INSERT INTO `xen_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(449, '1', 'a:21:{s:4:"cart";s:614:"a:2:{s:32:"7cbbc409ec990f19c78c75bd1e06f215";a:9:{s:10:"product_id";i:70;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:10:"line_total";d:12500;s:8:"line_tax";i:0;s:13:"line_subtotal";i:12500;s:17:"line_subtotal_tax";i:0;s:13:"line_tax_data";a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}}s:32:"a5bfc9e07964f8dddeb95fc584cd965d";a:9:{s:10:"product_id";i:37;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:10:"line_total";d:234000;s:8:"line_tax";i:0;s:13:"line_subtotal";i:234000;s:17:"line_subtotal_tax";i:0;s:13:"line_tax_data";a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}}}";s:15:"applied_coupons";s:6:"a:0:{}";s:23:"coupon_discount_amounts";s:6:"a:0:{}";s:27:"coupon_discount_tax_amounts";s:6:"a:0:{}";s:21:"removed_cart_contents";s:6:"a:0:{}";s:19:"cart_contents_total";d:258825;s:5:"total";d:258825;s:8:"subtotal";i:246500;s:15:"subtotal_ex_tax";i:246500;s:9:"tax_total";i:0;s:5:"taxes";s:6:"a:0:{}";s:14:"shipping_taxes";s:6:"a:0:{}";s:13:"discount_cart";i:0;s:17:"discount_cart_tax";i:0;s:14:"shipping_total";N;s:18:"shipping_tax_total";i:0;s:9:"fee_total";i:0;s:4:"fees";s:6:"a:0:{}";s:10:"wc_notices";N;s:21:"chosen_payment_method";s:14:"xendit_gateway";s:8:"customer";s:782:"a:24:{s:8:"postcode";s:5:"56481";s:4:"city";s:7:"Jakarta";s:9:"address_1";s:18:"No. 1, Xendit Road";s:7:"address";s:18:"No. 1, Xendit Road";s:9:"address_2";s:0:"";s:5:"state";s:2:"JK";s:7:"country";s:2:"ID";s:17:"shipping_postcode";s:5:"56481";s:13:"shipping_city";s:7:"Jakarta";s:18:"shipping_address_1";s:18:"No. 1, Xendit Road";s:16:"shipping_address";s:18:"No. 1, Xendit Road";s:18:"shipping_address_2";s:0:"";s:14:"shipping_state";s:2:"JK";s:16:"shipping_country";s:2:"ID";s:13:"is_vat_exempt";b:0;s:19:"calculated_shipping";b:1;s:10:"first_name";s:4:"Test";s:9:"last_name";s:5:"Admin";s:7:"company";s:6:"Xendit";s:5:"phone";s:10:"0123456789";s:5:"email";s:15:"tommy@xendit.co";s:19:"shipping_first_name";s:0:"";s:18:"shipping_last_name";s:0:"";s:16:"shipping_company";s:0:"";}";}', 1495771380);

-- --------------------------------------------------------

--
-- Table structure for table `xen_woocommerce_shipping_zones`
--

DROP TABLE IF EXISTS `xen_woocommerce_shipping_zones`;
CREATE TABLE `xen_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xen_woocommerce_shipping_zone_locations`
--

DROP TABLE IF EXISTS `xen_woocommerce_shipping_zone_locations`;
CREATE TABLE `xen_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xen_woocommerce_shipping_zone_methods`
--

DROP TABLE IF EXISTS `xen_woocommerce_shipping_zone_methods`;
CREATE TABLE `xen_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xen_woocommerce_tax_rates`
--

DROP TABLE IF EXISTS `xen_woocommerce_tax_rates`;
CREATE TABLE `xen_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xen_woocommerce_tax_rate_locations`
--

DROP TABLE IF EXISTS `xen_woocommerce_tax_rate_locations`;
CREATE TABLE `xen_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `xen_commentmeta`
--
ALTER TABLE `xen_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `xen_comments`
--
ALTER TABLE `xen_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Indexes for table `xen_duplicator_packages`
--
ALTER TABLE `xen_duplicator_packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hash` (`hash`);

--
-- Indexes for table `xen_links`
--
ALTER TABLE `xen_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `xen_options`
--
ALTER TABLE `xen_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `xen_postmeta`
--
ALTER TABLE `xen_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `xen_posts`
--
ALTER TABLE `xen_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `xen_termmeta`
--
ALTER TABLE `xen_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `xen_terms`
--
ALTER TABLE `xen_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `xen_term_relationships`
--
ALTER TABLE `xen_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `xen_term_taxonomy`
--
ALTER TABLE `xen_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `xen_usermeta`
--
ALTER TABLE `xen_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `xen_users`
--
ALTER TABLE `xen_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `xen_woocommerce_api_keys`
--
ALTER TABLE `xen_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `xen_woocommerce_attribute_taxonomies`
--
ALTER TABLE `xen_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(191));

--
-- Indexes for table `xen_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `xen_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(191),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`);

--
-- Indexes for table `xen_woocommerce_log`
--
ALTER TABLE `xen_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `xen_woocommerce_order_itemmeta`
--
ALTER TABLE `xen_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `xen_woocommerce_order_items`
--
ALTER TABLE `xen_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `xen_woocommerce_payment_tokenmeta`
--
ALTER TABLE `xen_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `xen_woocommerce_payment_tokens`
--
ALTER TABLE `xen_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `xen_woocommerce_sessions`
--
ALTER TABLE `xen_woocommerce_sessions`
  ADD PRIMARY KEY (`session_key`),
  ADD UNIQUE KEY `session_id` (`session_id`);

--
-- Indexes for table `xen_woocommerce_shipping_zones`
--
ALTER TABLE `xen_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `xen_woocommerce_shipping_zone_locations`
--
ALTER TABLE `xen_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type` (`location_type`),
  ADD KEY `location_type_code` (`location_type`,`location_code`(90));

--
-- Indexes for table `xen_woocommerce_shipping_zone_methods`
--
ALTER TABLE `xen_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexes for table `xen_woocommerce_tax_rates`
--
ALTER TABLE `xen_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(191)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(191)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `xen_woocommerce_tax_rate_locations`
--
ALTER TABLE `xen_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type` (`location_type`),
  ADD KEY `location_type_code` (`location_type`,`location_code`(90));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `xen_commentmeta`
--
ALTER TABLE `xen_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=234;
--
-- AUTO_INCREMENT for table `xen_comments`
--
ALTER TABLE `xen_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;
--
-- AUTO_INCREMENT for table `xen_duplicator_packages`
--
ALTER TABLE `xen_duplicator_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `xen_links`
--
ALTER TABLE `xen_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `xen_options`
--
ALTER TABLE `xen_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2534;
--
-- AUTO_INCREMENT for table `xen_postmeta`
--
ALTER TABLE `xen_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4548;
--
-- AUTO_INCREMENT for table `xen_posts`
--
ALTER TABLE `xen_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;
--
-- AUTO_INCREMENT for table `xen_termmeta`
--
ALTER TABLE `xen_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `xen_terms`
--
ALTER TABLE `xen_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `xen_term_taxonomy`
--
ALTER TABLE `xen_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `xen_usermeta`
--
ALTER TABLE `xen_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;
--
-- AUTO_INCREMENT for table `xen_users`
--
ALTER TABLE `xen_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `xen_woocommerce_api_keys`
--
ALTER TABLE `xen_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `xen_woocommerce_attribute_taxonomies`
--
ALTER TABLE `xen_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `xen_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `xen_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `xen_woocommerce_log`
--
ALTER TABLE `xen_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `xen_woocommerce_order_itemmeta`
--
ALTER TABLE `xen_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=712;
--
-- AUTO_INCREMENT for table `xen_woocommerce_order_items`
--
ALTER TABLE `xen_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT for table `xen_woocommerce_payment_tokenmeta`
--
ALTER TABLE `xen_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `xen_woocommerce_payment_tokens`
--
ALTER TABLE `xen_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `xen_woocommerce_sessions`
--
ALTER TABLE `xen_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=450;
--
-- AUTO_INCREMENT for table `xen_woocommerce_shipping_zones`
--
ALTER TABLE `xen_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `xen_woocommerce_shipping_zone_locations`
--
ALTER TABLE `xen_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `xen_woocommerce_shipping_zone_methods`
--
ALTER TABLE `xen_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `xen_woocommerce_tax_rates`
--
ALTER TABLE `xen_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `xen_woocommerce_tax_rate_locations`
--
ALTER TABLE `xen_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
