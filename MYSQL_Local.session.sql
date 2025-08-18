use day2;
create TABLE library (
    book_id int,
    book_name varchar(50),
    author VARCHAR(50),
    category VARCHAR(50),
    price int
);
insert into library (book_id,book_name,author,category,price) values 
(100,'game of thrones','george martin','historical',1200),
(101,'breaking bad','heisenberg','chemicology',2000),
(102,'stranger things','steve harrington','childology',1000),
(103,'LCU','Lokesh kangaraj','drug free society',3000),
(104,'Doctor','Nelson','mafia',2500),
(105,'annatha','siva','emotional',300),
(106,'Mersal','atlee','draumatic',5600),
(107,'VCU','Vetrimaran','gangster',10000),
(108,'INTERSTELLER','NOLAN','space',20000);

select * from library

 ##FILTERINGROWS

 select * from library where price ='1200';
 SELECT * from library where book_id != 105;

 ##ARITHMETIC OPERATORS

 select book_name,price, (price+100) as GST from library
 select book_name,price,(price - 500) as Discount_rate from library

##Comparitive operators

select * from library where price > 1000;
select book_name,price from library where price < 3000;
select book_name,price,author from library where price <=> 10000;

##PATTERN MATCHING

select * from library where price in (2000,3000,10000,5600);
select * from library where author in ('vetrimaran');
select book_name,author,category,price from library where price  between  2000 and 6000;
select book_name ,author from library where book_name like 's%';
select * from library where book_name like '%u';


##LOGICAL OPERATORS

select * from library where  not price = 3000;
select * from library where price = 3000 or price = 2001;
select * FROM library where author = 'nolan' or author = 'atlee';
select * from library where price = 3000 or book_name = 'stranger things';
select * from library where price = 3000 and book_name='lcu';
SELECT * from library where price = 1200  and book_name = 'game of thrones';

##sorting & limiting

select * from library order by price desc;
select * from library order by price ASC;
select * from library order by price desc limit 5;
select * from library order by price asc limit 4;

##ELIMINATING DUPLICATES
select distinct category from library;

