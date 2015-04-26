-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 10, 2015 at 03:24 PM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


-- --------------------------------------------------------

ALTER TABLE  `votes` CHANGE  `album_id`  `item_id` INT( 11 ) NOT NULL
ALTER TABLE  `votes` ADD  `item_type` VARCHAR( 255 ) NOT NULL AFTER  `user_id`
ALTER TABLE  `votes` ADD PRIMARY KEY (  `vote_id` )
ALTER TABLE  `votes` CHANGE  `vote_id`  `vote_id` INT( 11 ) NOT NULL AUTO_INCREMENT
ALTER TABLE  `votes` CHANGE  `user_id`  `user_id` VARCHAR( 255 ) NOT NULL