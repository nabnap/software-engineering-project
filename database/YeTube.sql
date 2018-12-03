CREATE DATABASE IF NOT EXISTS YeTube2;

CREATE TABLE `tags` (
  `tag_name` varchar(30),
  `tag_id` int NOT NULL AUTO_INCREMENT ,
  PRIMARY KEY (`tag_id`)
);

CREATE TABLE `videoTags` (
  `video_id` int,
  `tag_id` int,
  PRIMARY KEY (`video_id`, `tag_id`)
);

CREATE TABLE `Video Rating` (
  `video_id` int,
  `rated` tinyint,
  `user_id` int,
  PRIMARY KEY (`video_id`)
);

CREATE TABLE `Comment Rating` (
  `comment_id` int,
  `rated` tinyint,
  `user_id` int,
  PRIMARY KEY (`comment_id`)
);

CREATE TABLE `User` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `auth0_id` varchar(100),
  PRIMARY KEY (`user_id`)
);

CREATE TABLE `Video` (
  `video_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int,
  `views` int,
  `description` TEXT,
  `video_path` varchar(200),
  `thumbnail_path` varchar(200),
  `Catagory` varchar(40),
  PRIMARY KEY (`video_id`)
);

CREATE TABLE `Comments` (
  `video_id` int,
  `comment_id` int NOT NULL AUTO_INCREMENT,
  `parent_id` tinyint,
  `user_id` int,
  `comment` varchar(255),
  PRIMARY KEY (`comment_id`)
);

