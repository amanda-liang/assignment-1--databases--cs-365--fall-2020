DROP DATABASE IF EXISTS passwords;

CREATE DATABASE passwords DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;

USE passwords;

/* create tables */

CREATE TABLE user (
  user_id    SMALLINT(5) NOT NULL,
  firstname VARCHAR(60) NOT NULL,
  lastname  VARCHAR(60) NOT NULL,
  PRIMARY KEY (user_id)
);

CREATE TABLE site (
  site_id SMALLINT(5)  NOT NULL,
  website VARCHAR(128) NOT NULL,
  url     VARCHAR(128) NOT NULL,
  PRIMARY KEY (site_id)
);

CREATE TABLE account (
  user_id    SMALLINT(5) NOT NULL,
  site_id    SMALLINT(5) NOT NULL,
  account_id SMALLINT(5) NOT NULL,
  username   VARCHAR(60) NOT NULL,
  password   VARCHAR(60) NOT NULL,
  email      VARCHAR(60) NOT NULL,
  time       TIMESTAMP   NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  comment      VARCHAR(200),
  PRIMARY KEY (user_id, site_id, account_id)
);

/* insert values */

INSERT INTO user VALUES (1,"Harry","Potter");
INSERT INTO user VALUES (2,"Ron","Weasly");
INSERT INTO user VALUES (3,"Hermione","Granger");

INSERT INTO site VALUES (1, "Youtube", "https://www.youtube.com/");
INSERT INTO site VALUES (2, "facebook", "https://www.facebook.com/");
INSERT INTO site VALUES (3, "Minecraft", "https://www.minecraft.net/");
INSERT INTO site VALUES (4, "Audible", "https://www.audible.com/");
INSERT INTO site VALUES (5, "Pottermore", "https://www.wizardingworld.com/");

