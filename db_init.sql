CREATE DATABASE IF NOT EXISTS blogapp2;
USE blogapp2;

DROP TABLE IF EXISTS new_table;
CREATE TABLE new_table (
  Id INT PRIMARY KEY,
  ProductName VARCHAR(45),
  Description TEXT,
  IMG VARCHAR(45),
  ProductPrice VARCHAR(45),
  EndirimQiymeti VARCHAR(45),
  Apply TINYINT(1),
  BackName VARCHAR(45),
  Shoes TINYINT(1),
  Bags TINYINT(1)
);

INSERT INTO new_table VALUES
(1,'ADIDAS','idman ayaqqabısı','1.jpg','250 AZN','220 AZN',1,'shoes',1,0),
(2,'NIKE','idman ayaqqabısı','2.jpg','270 AZN','240 AZN',1,'shoes',1,0),
(3,'ADIDAS','idman ayaqqabısı','3.jpg','260 AZN','230 AZN',1,'shoes',1,0),
(4,'JORDAN','idman ayaqqabısı','4.jpg','300 AZN','270 AZN',1,'shoes',1,0),
(5,'MIU MIU','brend çanta','5.jpg','2200 AZN','2000 AZN',1,'bags',0,1),
(6,'GUCCI','brend çanta','6.jpg','1500 AZN','1350 AZN',1,'bags',0,1),
(7,'DOLCE & GABBANA','brend çanta','7.jpg','1800 AZN','1600 AZN',1,'bags',0,1),
(8,'COACH','brend çanta','8.jpg','900 AZN','800 AZN',1,'bags',0,1),
(9,'ADIDAS','idman ayaqqabısı','9.jpg','250 AZN','220 AZN',1,'shoes',1,0),
(10,'NIKE','idman ayaqqabısı','10.jpg','270 AZN','240 AZN',1,'shoes',1,0),
(11,'ADIDAS','idman ayaqqabısı','11.jpg','260 AZN','230 AZN',1,'shoes',1,0),
(12,'JORDAN','idman ayaqqabısı','1.jpg','300 AZN','270 AZN',1,'shoes',1,0),
(13,'MIU MIU','brend çanta','2.jpg','2200 AZN','2000 AZN',1,'bags',0,1),
(14,'GUCCI','brend çanta','3.jpg','1500 AZN','1350 AZN',1,'bags',0,1),
(15,'DOLCE & GABBANA','brend çanta','4.jpg','1800 AZN','1600 AZN',1,'bags',0,1),
(16,'COACH','brend çanta','6.jpg','900 AZN','800 AZN',1,'bags',0,1);