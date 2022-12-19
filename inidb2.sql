DROP DATABASE IF EXISTS study;

CREATE DATABASE IF NOT EXISTS study DEFAULT CHARACTER SET utf8mb4;
USE study;

DROP TABLE IF EXISTS product;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS supplier;

CREATE TABLE product ( 
  pdcd CHAR(4) NOT NULL PRIMARY KEY,
  name VARCHAR(32) NOT NULL, 
  kcd CHAR(4),
  splcd INT,
  price INT 
);

INSERT INTO product (pdcd, name, kcd, splcd, price) VALUES ('0012', 'アップルパイ', 'F014',12,420);
INSERT INTO product (pdcd, name, kcd, splcd, price) VALUES ('0013', 'イタリアンスフレ', 'F014',12,560);
INSERT INTO product (pdcd, name, kcd, splcd, price) VALUES ('0016', 'ワッフル', 'F014',15,430);
INSERT INTO product (pdcd, name, kcd, splcd, price) VALUES ('0021', '鉛筆', 'F026',26,120);
INSERT INTO product (pdcd, name, kcd, splcd, price) VALUES ('0022', 'ボールペン', 'F026',32,220);
INSERT INTO product (pdcd, name, kcd, splcd, price) VALUES ('0034', 'ダイニングテーブル', 'D028',34,39000);
INSERT INTO product (pdcd, name, kcd, splcd, price) VALUES ('0041', 'さばの水煮', 'F015',34,350);
INSERT INTO product (pdcd, name, kcd, splcd, price) VALUES ('0045', '赤ワイン', 'F023',57,3600);
INSERT INTO product (pdcd, name, kcd, splcd, price) VALUES ('0052', 'シャンパン', 'F023',57,4850);
INSERT INTO product (pdcd, name, kcd, splcd, price) VALUES ('0064', 'ロゼワイン', 'F023',57,4680);
INSERT INTO product (pdcd, name, kcd, splcd, price) VALUES ('0072', 'ウィスキー', 'F023',57,3450);
INSERT INTO product (pdcd, name, kcd, splcd, price) VALUES ('0089', 'いわしの缶詰', 'F015',34,2420);
INSERT INTO product (pdcd, name, kcd, splcd) VALUES ('0117', 'シャープペンシル', 'F026',57);
INSERT INTO product (pdcd, name, splcd) VALUES ('0189', '椅子',26);


CREATE TABLE category ( 
  kcd CHAR(4) NOT NULL PRIMARY KEY,
  name VARCHAR(32) NOT NULL 
);

INSERT INTO category (kcd, name) VALUES ('F014', '菓子類');
INSERT INTO category (kcd, name) VALUES ('F015', '缶詰');
INSERT INTO category (kcd, name) VALUES ('F023', '酒類');
INSERT INTO category (kcd, name) VALUES ('F026', '文具');
INSERT INTO category (kcd, name) VALUES ('P006', 'アクセサリー');
INSERT INTO category (kcd, name) VALUES ('D028', '家具');
INSERT INTO category (kcd, name) VALUES ('E139', '家電');


CREATE TABLE supplier ( 
  splcd INT NOT NULL PRIMARY KEY,
  name VARCHAR(64) NOT NULL 
);

INSERT INTO supplier (splcd, name) VALUES (12, '岩本商事');
INSERT INTO supplier (splcd, name) VALUES (15, '東西貿易');
INSERT INTO supplier (splcd, name) VALUES (26, '埼玉商会');
INSERT INTO supplier (splcd, name) VALUES (32, '新日本商事');
INSERT INTO supplier (splcd, name) VALUES (34, '東北商会');
INSERT INTO supplier (splcd, name) VALUES (57, '関西空輸貿易');

