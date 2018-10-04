CREATE TABLE `Comments` (
  `Video ID` <type>,
  `Comment ID` <type>,
  `Comment` <type>,
  `ParentToID` <type>,
  `UserID` <type>,
  PRIMARY KEY (`Comment ID`)
);

CREATE TABLE `Video Rating` (
  `Video ID` <type>,
  `Rated` <type>,
  `User ID` <type>,
  PRIMARY KEY (`Video ID`)
);

CREATE TABLE `Comment Rating` (
  `Comment ID` <type>,
  `Rated` <type>,
  `User ID` <type>,
  PRIMARY KEY (`Comment ID`)
);

CREATE TABLE `Video` (
  `Video ID` <type>,
  `User ID` <type>,
  `Rating` <type>,
  `Views` <type>,
  `Description` <type>,
  `Video` <type>,
  PRIMARY KEY (`Video ID`)
);

CREATE TABLE `User` (
  `User ID (Auto Incrament)` <type>,
  `AuthO ID` <type>,
  PRIMARY KEY (`User ID (Auto Incrament)`)
);
