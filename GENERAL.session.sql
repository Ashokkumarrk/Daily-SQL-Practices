show databases;
use day1;
CREATE TABLE Hospital(
    patient_id INT,
    Name VARCHAR(50),
    Age INT,
    Fees_charge int
);
insert INTO hospital (patient_id,Name,Age,Fees_charge) values
(1,'Ashok',22,5000),
(2,'Vijay',25,8000),
(3,'ajay',20,10000),
(4,'ajith',27,2000),
(5,'surya',30,3000),
(6,'karthik',25,6000),
(7,'siva',45,9000);
SELECT * FROM hospital

## arithmeticoperators
## comparitiveoperators
## logicaloperators

SELECT Name,age,Fees_charge ,Fees_charge + (Fees_charge + 50) from hospital where Age > '25';
select name,age,Fees_charge,fees_charge - 100 from hospital where Age < '25';
SELECT name,Fees_charge from hospital where Fees_charge >= '5000';
select name,Fees_charge from hospital where Fees_charge >= '5000' and Fees_charge < '9000';
select * from hospital where Age = '25' or Age = '27';
select name,Fees_charge from hospital where not Fees_charge < '8000';

select * FROM hospital