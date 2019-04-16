DROP SCHEMA IF EXISTS java_final ;

-- -----------------------------------------------------
-- Schema java_final
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS java_final DEFAULT CHARACTER SET utf8 ;
USE java_final ;

-- -----------------------------------------------------
-- Table User
-- -----------------------------------------------------
DROP TABLE IF EXISTS user ;

CREATE TABLE IF NOT EXISTS user (
  idUser INT(11) NOT NULL AUTO_INCREMENT,
  userStatusId INT(11) NOT NULL,
  login VARCHAR(45) NOT NULL,
  password VARCHAR(45) NOT NULL,
  changeDate DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  enabled TINYINT NOT NULL DEFAULT 1 ,
  PRIMARY KEY (idUser))
ENGINE = InnoDB
AUTO_INCREMENT = 1
DEFAULT CHARACTER SET = utf8
COMMENT = 'User general info\n';

CREATE UNIQUE INDEX login_UNIQUE ON User (login ASC);

 CREATE INDEX fk_User_Status_idx ON User (userStatusId ASC);


  CREATE TABLE user_roles (
  user_role_id int(11) NOT NULL AUTO_INCREMENT,
  username varchar(45) NOT NULL,
  role varchar(45) NOT NULL,
  PRIMARY KEY (user_role_id),
  UNIQUE KEY uni_username_role (role,username),
  KEY fk_username_idx (username),
  CONSTRAINT fk_username FOREIGN KEY (username) REFERENCES user (login));



-- -----------------------------------------------------
-- Table shoppingList
-- -----------------------------------------------------
DROP TABLE IF EXISTS shoppingList ;

CREATE TABLE IF NOT EXISTS shoppingList (
  statusTransactionId INT(11) NOT NULL,
  statusTransactionDate DATE NOT NULL,
  newStatusId INT(11) NOT NULL,
  sum DOUBLE NOT NULL,
  success TINYINT(1) NOT NULL,
  PRIMARY KEY (statusTransactionId))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

 CREATE UNIQUE INDEX statusTransactionId_UNIQUE ON shoppingList (statusTransactionId ASC);

 CREATE INDEX fk_shoppingList_status_idx ON shoppingList (newStatusId ASC);


-- -----------------------------------------------------
-- Table transaction
-- -----------------------------------------------------
DROP TABLE IF EXISTS transaction ;

CREATE TABLE IF NOT EXISTS transaction (
  idtransaction INT(11) NOT NULL AUTO_INCREMENT,
  transactionDate DATE NOT NULL,
  transactionCity VARCHAR(45) NOT NULL,
  PRIMARY KEY (idtransaction))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE UNIQUE INDEX idtransaction_UNIQUE ON transaction (idtransaction ASC);


-- -----------------------------------------------------
-- Table userStatus
-- -----------------------------------------------------
DROP TABLE IF EXISTS userStatus ;

CREATE TABLE IF NOT EXISTS userStatus (
  userStatusId INT(11) NOT NULL,
  status VARCHAR(45) NOT NULL,
  userRequestsAmount INT(11) NOT NULL,
  PRIMARY KEY (userStatusId))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

INSERT INTO userStatus(userStatusId,status,userRequestsAmount) VALUES (1,'ROLE_START',3);
INSERT INTO userStatus(userStatusId,status,userRequestsAmount) VALUES (2,'ROLE_BASIC',5);
INSERT INTO userStatus(userStatusId,status,userRequestsAmount) VALUES (3,'ROLE_PREMI',15);

INSERT INTO user(userStatusId,login,password) VALUES(1, 'Kolya', '1234');
INSERT INTO user(userStatusId,login,password) VALUES(2, 'Alex', '1234');
INSERT INTO user(userStatusId,login,password) VALUES(3, 'Steve', '1234');
INSERT INTO user(userStatusId,login,password) VALUES(3, 'Artyom', '1234');
INSERT INTO user(userStatusId,login,password) VALUES(3, 'Craq', '1234');

INSERT INTO user_roles(username,role) VALUES ('Kolya','ROLE_START');
INSERT INTO user_roles(username,role) VALUES ('Artyom','ROLE_START');
INSERT INTO user_roles(username,role) VALUES ('Alex','ROLE_START');
INSERT INTO user_roles(username,role) VALUES ('Steve','ROLE_START');
INSERT INTO user_roles(username,role) VALUES ('Craq','ROLE_START');

INSERT INTO user_roles(username,role) VALUES ('Alex','ROLE_BASIC');
INSERT INTO user_roles(username,role) VALUES ('Steve','ROLE_BASIC');
INSERT INTO user_roles(username,role) VALUES ('Artyom','ROLE_BASIC');
INSERT INTO user_roles(username,role) VALUES ('Craq','ROLE_BASIC');

INSERT INTO user_roles(username,role) VALUES ('Artyom','ROLE_PREMI');
INSERT INTO user_roles(username,role) VALUES ('Steve','ROLE_PREMI');
INSERT INTO user_roles(username,role) VALUES ('Craq','ROLE_PREMI');

