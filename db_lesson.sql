Q1
CREATE TABLE `departments`(
department_id INT UNSIGNED  PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(20) NOT NULL,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

Q2
ALTER TABLE people ADD department_id INT unsigned AFTER email;

Q3
INSERT INTO departments (name)
VALUES
('営業'),
('開発'),
('経理'),
('人事'),
('情報システム');

INSERT INTO people (name, email, age, gender, department_id)
VALUES
('営いちろう', 'ehito@gizumo.jp', 22, 1, 1),
('業にこ', 'gouniko@gizumo.jp', 43, 2, 1),
('営業みつお', 'egmitu@gizumo.jp', 51, 1, 1),
('開いちか', 'kaiichi@gizumo.jp', 32, 2, 2),
('発じろう', 'hatsuziro@gizumo.jp', 54, 1, 2),
('栗さんた', 'kurisan@gizumo.jp', 39, 1, 2),
('出部ようこ', 'debuyo@gizumo.jp', 42, 2, 2),
('経ひとり', 'keiiti@gizumo.co.jp', 51, 1, 3),
('人ひとこ', 'zinniti@gizumo.co.jp', 46, 2, 4),
('情わんた', 'zyouhito@gizumo.co.jp', 64, 1, 5);

INSERT INTO reports (person_id, content)
VALUES
(11, '日報追加1'),
(12, '日報追加2'),
(13, '日報追加3'),
(14, '日報追加4'),
(15, '日報追加5'),
(16, '日報追加6'),
(17, '日報追加7'),
(18, '日報追加8'),
(19, '日報追加9'),
(20, '日報追加10');

Q4
UPDATE people SET department_id = 1 WHERE person_id = 1;
UPDATE people SET department_id = 2 WHERE person_id = 2;
UPDATE people SET department_id = 3 WHERE person_id = 3;
UPDATE people SET department_id = 4 WHERE person_id = 4;
UPDATE people SET department_id = 5 WHERE person_id = 6;

Q5
SELECT * FROM people WHERE gender = 1 ORDER BY age ASC;

Q6
peopleテーブル内で department_idカラムが1（営業部署）のレコードの、
name,email,ageカラムを、レコードの作成日時順に昇順で表示する。

Q7
SELECT name FROM people WHERE gender = 2 AND age BETWEEN 20 AND 29 OR gender = 1 AND age BETWEEN 40 AND 49;

Q8
 SELECT * FROM people WHERE department_id = 1 ORDER BY age ASC;

Q9
SELECT AVG(age) AS average_age FROM people WHERE department_id = 2 AND gender = 2;

Q10
SELECT p.department_id, p.name, r.content FROM people p JOIN reports r USING (person_id);

Q11
SELECT p.name FROM people p LEFT OUTER JOIN reports r USING (person_id) WHERE content IS NULL;