create database test;

use test;

CREATE TABLE diaries (id INT PRIMARY KEY AUTO_INCREMENT,content VARCHAR(255),FULLTEXT INDEX (content)) ENGINE = Mroonga DEFAULT CHARSET utf8;

INSERT INTO diaries (content) VALUES ("It'll be fine tomorrow.");
INSERT INTO diaries (content) VALUES ("It'll rain tomorrow");

INSERT INTO diaries (content) VALUES ("明日は晴れるでしょう");
INSERT INTO diaries (content) VALUES ("晴れ時々曇りとなります");
INSERT INTO diaries (content) VALUES ("雨上がりはいいですね");
INSERT INTO diaries (content) VALUES ("梅雨の季節になりました");

