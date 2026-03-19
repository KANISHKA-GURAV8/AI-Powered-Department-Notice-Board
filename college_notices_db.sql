CREATE DATABASE college_notices1;

USE college_notices1;

CREATE TABLE notices (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    category ENUM('cultural','technical','general') NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


DESCRIBE notices;
ALTER TABLE notices 
ADD COLUMN image_url VARCHAR(255),
ADD COLUMN expiry_date DATE;

select * from notices;
SELECT id, title, category, image_url FROM notices;
ALTER TABLE notices 
ADD COLUMN semester VARCHAR(50);
ALTER TABLE notices MODIFY COLUMN category VARCHAR(50) NULL;
alter table notices drop column category;
SET SQL_SAFE_UPDATES = 0;
DROP DATABASE IF EXISTS college9notices_notices;
SET GLOBAL net_read_timeout = 600;
SET GLOBAL net_write_timeout = 600;
SET GLOBAL wait_timeout = 600;
SET GLOBAL interactive_timeout = 600;
SET GLOBAL max_allowed_packet = 1073741824;
SELECT table_name AS 'Table',
       round(((data_length + index_length) / 1024 / 1024), 2) AS 'Size (MB)'
FROM information_schema.TABLES
WHERE table_schema = DATABASE()
AND table_name = 'notices';
ALTER TABLE notices DROP COLUMN category, ALGORITHM=INPLACE, LOCK=NONE;
CREATE TABLE notices_backup AS SELECT * FROM notices;
SELECT COUNT(*) FROM notices_backup;
SHOW CREATE TABLE notices;
CREATE TABLE notices (
  id INT NOT NULL AUTO_INCREMENT,
  title VARCHAR(255) NOT NULL,
  description TEXT NOT NULL,
  created_at TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  image_url VARCHAR(255) DEFAULT NULL,
  expiry_date DATE DEFAULT NULL,
  semester VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO notices_new (id, title, description, created_at, image_url, expiry_date, semester)
SELECT id, title, description, created_at, image_url, expiry_date, semester
FROM notices;
RENAME TABLE notices TO notices_old, notices_new TO notices;
select * from notices;

DROP TABLE notices_old;


ALTER TABLE notices 
ADD COLUMN category VARCHAR(50) not null;

SELECT id, title, semester, category FROM notices;
TRUNCATE TABLE notices;


SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE notices;
SET FOREIGN_KEY_CHECKS = 1;
SET SQL_SAFE_UPDATES = 0;
DELETE FROM notices LIMIT 50000;
CHECK TABLE notices;

DESCRIBE notices_new;
drop database college_notices;
drop database notice_board;
drop database department_noticeboard;
drop database department_db;
show databases;
drop table notices;