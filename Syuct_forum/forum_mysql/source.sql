DROP DATABASE IF EXISTS `Syuct_forum`;

CREATE DATABASE
    `Syuct_forum`;

use Syuct_forum;

DROP DATABASE IF EXISTS `user`;

CREATE TABLE
    `user` (
        `id` bigint NOT NULL AUTO_INCREMENT,
        `username` varchar(20) NOT NULL,
        `password` varchar(60) NOT NULL,
        `email` varchar(60) NOT NULL,
        `avatar` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci  NOT NULL DEFAULT '/static/picture/defaultavatar.jpg',
        `code` varchar(50) DEFAULT NULL,
        `state` int DEFAULT NULL,
        `rid` int NOT NULL DEFAULT '1',
        PRIMARY KEY (`id`, `email`),
        UNIQUE KEY `email` (`email`)
    ) ENGINE = InnoDB AUTO_INCREMENT = 1781596165 DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci;

DROP DATABASE IF EXISTS `post`;

CREATE TABLE
    `post` (
        `id` bigint NOT NULL,
        `user_email` varchar(50) NOT NULL,
        `title` varchar(50) NOT NULL,
        `content` text NOT NULL,
        `type` int DEFAULT NULL,
        `status` int NOT NULL DEFAULT '0',
        `tag` int DEFAULT NULL,
        `create_time` datetime NOT NULL,
        `comment_count` int DEFAULT NULL,
        `score` double NOT NULL,
        `liked` int NOT NULL DEFAULT '0',
        `user_id` bigint NOT NULL,
        PRIMARY KEY (`id`),
        KEY `user_email_index` (`user_email`)
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci;

DROP DATABASE IF EXISTS `message`;

CREATE TABLE
    `message` (
        `id` bigint NOT NULL AUTO_INCREMENT,
        `from_id` bigint NOT NULL,
        `to_id` bigint NOT NULL,
        `entity_id` bigint DEFAULT NULL,
        `content` text NOT NULL,
        `status` int DEFAULT '0',
        `create_time` datetime NOT NULL,
        `type` int NOT NULL,
        PRIMARY KEY (`id`)
    ) ENGINE = InnoDB AUTO_INCREMENT = 1725501940956176387 DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci;

DROP DATABASE IF EXISTS `comment`;

CREATE TABLE
    `comment` (
        `id` bigint NOT NULL AUTO_INCREMENT,
        `user_id` bigint NOT NULL,
        `entity_id` bigint NOT NULL,
        `entity_type` int NOT NULL,
        `target_id` bigint NOT NULL DEFAULT '0',
        `content` varchar(150) NOT NULL,
        `status` int DEFAULT NULL,
        `create_time` datetime NOT NULL,
        PRIMARY KEY (`id`)
    ) ENGINE = InnoDB AUTO_INCREMENT = 1725501940763238402 DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci;