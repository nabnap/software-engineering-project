CREATE TABLE `Tags` (
  `TagName` varchar(30),
  `TagID` int NOT NULL AUTO_INCREMENT ,
  PRIMARY KEY (`TagID`)
);

CREATE TABLE `VideoTags` (
  `VideoID` int,
  `TagID` int,
  PRIMARY KEY (`VideoID`, `TagID`)
);

CREATE TABLE `Video Rating` (
  `Video ID` int,
  `Rated` tinyint,
  `User ID` int,
  PRIMARY KEY (`Video ID`)
);

CREATE TABLE `Comment Rating` (
  `Comment ID` int,
  `Rated` tinyint,
  `User ID` int,
  PRIMARY KEY (`Comment ID`)
);

CREATE TABLE `User` (
  `UserID` int NOT NULL AUTO_INCREMENT,
  `AuthO ID` varchar(100),
  PRIMARY KEY (`UserID`)
);

CREATE TABLE `Video` (
  `Video ID` int NOT NULL AUTO_INCREMENT,
  `User ID` int,
  `Views` int,
  `Description` TEXT,
  `Location of Video on server` varchar(200),
  `Location of Thumbnail on server` varchar(200),
  `Catagory` varchar(40),
  PRIMARY KEY (`Video ID`)
);

CREATE TABLE `Comments` (
  `Video ID` int,
  `Comment ID` int NOT NULL AUTO_INCREMENT,
  `ParentToId` tinyint,
  `UserID` int,
  `comment` varchar(255),
  PRIMARY KEY (`Comment ID`)
);

