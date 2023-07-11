create table member_tbl_02 ( custno number(6) NOT NULL, custoname varchar2(20), phone varchar2(13), address varchar2(60), joindate date, grade char(1), city char(2), Primary key ( custno ) ) ;
insert into member_tbl_02
values (100001, '���ູ', '010-2222-2222', '���� ���빮�� �ְ�1��', '20151201', 'B', '01');
insert into member_tbl_02
values (100002, '���ູ', '010-3322-3322', '���� ���빮�� �ְ�2��', '20151203', 'A', '01');
insert into member_tbl_02
values (100003, '�����', '010-4422-4422', '�︪�� �︪�� ����1��', '20151206', 'B', '30');
insert into member_tbl_02
values (100004, '�ֻ��', '010-6722-6722', '�︪�� �︪�� ����2��', '20151121', 'B', '30');
insert into member_tbl_02
values (100005, '��海', '010-7777-7777', '���� ���빮�� �ְ�3��', '20151222', 'B', '01');
insert into member_tbl_02
values (100006, '������', '010-1122-1122', '���ֵ� ���ֽ� ��������', '20151231', 'C', '60');

create table money_tbl_02 (custno number(6) NOT NULL, salenol number(8) NOT NULL, pcost number(8), amount number(4), 
price number(8), pcode varchar2(4), sdate date, Primary key (custno, salenol));

insert into money_tbl_02
values (100001, 20160001, 500, 5, 2500, 'A001', '20160101');

insert into money_tbl_02
values (100001, 20160002, 1000, 4, 4000, 'A008', '20160101');

insert into money_tbl_02
values (100001, 20160003, 500, 3, 1500, 'A004', '20160102');

insert into money_tbl_02
values (100002, 20160004, 2000, 1, 2000, 'A001', '20160103');

insert into money_tbl_02
values (100001, 20160005, 500, 1, 500, 'A001', '20160103');

insert into money_tbl_02
values (100003, 20160006, 1500, 2, 3000, 'A003', '20160103');

insert into money_tbl_02
values (100004, 20160007, 500, 5, 1000, 'A001', '20160104');

insert into money_tbl_02
values (100004, 20160008, 300, 1, 300, 'A005', '20160104');

insert into money_tbl_02
values (100004, 20160009, 600, 1, 600, 'A006', '20160104');

select * from money_tbl_02
