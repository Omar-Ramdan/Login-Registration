CREATE TABLE `employees` (
  `ID` int NOT NULL,
  `FIRST_NAME_EN` varchar(255) NOT NULL,
  `FIRST_NAME_AR` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `LAST_NAME_EN` varchar(255) NOT NULL,
  `LAST_NAME_AR` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `AGE` int NOT NULL,
  `ADDRESS` varchar(255) NOT NULL,
  `PHONE_NUMBER` varchar(50) DEFAULT NULL,
  `EMAIL` varchar(255) NOT NULL,
  `SALARY` int NOT NULL,
  `JOB_DESCRIPTION` varchar(255) NOT NULL,
  `MANAGER_ID` int NOT NULL,
  `TITEL_ID` int NOT NULL,
  `DEPARTMENT_ID` int NOT NULL,
  `USER_ID` int NOT NULL,
  `JOIN_DATE` date NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `MANAGER_ID` (`MANAGER_ID`),
  KEY `DEPARTMENT_ID` (`DEPARTMENT_ID`),
  KEY `TITEL_ID` (`TITEL_ID`),
  KEY `fk_l_id` (`USER_ID`),
  CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`MANAGER_ID`) REFERENCES `employees` (`ID`),
  CONSTRAINT `employees_ibfk_2` FOREIGN KEY (`DEPARTMENT_ID`) REFERENCES `departments` (`ID`),
  CONSTRAINT `employees_ibfk_3` FOREIGN KEY (`TITEL_ID`) REFERENCES `titels` (`ID`),
  CONSTRAINT `fk_l_id` FOREIGN KEY (`USER_ID`) REFERENCES `users` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci