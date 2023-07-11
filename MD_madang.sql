


select R1.A, R1.B, R1.C, R2.B, R2.C, R2.D from R1 right outer join R2 on R1.B = R2.B;

desc orders;

select sum(saleprice) from Orders;

select sum(saleprice) AS Total From Orders Where custid=2;

select custid, count(*) AS BOOKS from Orders Where saleprice >=8000 group by custid having count(*) >=2;

select bookname, price from book;
select bookid, bookname, publisher, price from book;
select * from book where price <20000;
select * from book where price between 2000 and 15000;
select * from book where price >=10000 and price <= 20000;
select * from book where publisher in ('굿스포츠','대한미디어');

select custid, count(*) As 도서수량 from orders
where saleprice >=8000
group by custid having count(*) >= 2;

select name, bookname from customer, orders, book where customer.custid = orders.custid and orders.custid = book.bookid;

select name, sum(saleprice) from customer, orders where customer.custid = orders.custid group by customer.name order by customer.name;
select customer.name, book.bookname from customer, orders, book where customer.custid = orders.custid and orders.bookid=book.bookid;
SELECT max(price)
FROM book;

SELECT bookname, price
FROM book
where price=35000;

SELECT bookname, price
FROM book
where price=(select max(price)from book);

SELECT name from customer where custid in (1,2,3,4);

select name, --custid 등 다른 속성값 넣어주면 여러 속성이 나옴
from customer
where custid in(select custid
                from orders
                where bookid in(select bookid
                                from book
                                where publisher='대한미디어'));
                                

select b1.bookname
from book b1
where b1.price > (select avg(b2.price)
                  from book b2
                  where b2.publisher=b1.publisher);

select name from customer where custid in(select custid from orders);
                  
select name, address from customer cs
where exists(select * from orders od where cs.custid = od.custid);

select name, address from customer cs
where not exists(select * from orders od where cs.custid = od.custid);

desc new book


create table newcustomer(
custid number primary key,
name varchar2(40),
address varchar2(40),
phone varchar2(30));


create table neworders(
orderid number,
custid number not null,
bookid number not null,
saleprice number,
orderdate date,
primary key(orderid),
foreign key(custid) references newcustomer(custid)on delete cascade);

alter table newbook add isbn varchar2(13);
alter table newbook modify isbn number;

alter table newbook drop column isbn;
alter table newbook modify bookid number not null;

alter table newbook add primary key(bookid);

desc newbook;




