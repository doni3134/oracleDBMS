<Doctor>

CREATE TABLE Doctors (
	doc_id varchar2(20) NOT NULL,
	major_treat varchar2(25) NOT NULL,
	doc_name varchar2(20) NOT NULL,
	doc_gen char(1) NOT NULL,
	doc_phone varchar2(15) NULL,
	doc_email varchar2(20) UNIQUE,
	doc_position varchar2(20) NOT NULL
	);

ALTER TABLE Doctors
	ADD CONSTRAINT doc_id_pk PRIMARY KEY (doc_id);

<Nurses>
CREATE TABLE Nurses (
	nur_id varchar2(20) NOT NULL,
	major_job varchar2(25) NOT NULL,
	nur_name varchar2(20) NOT NULL,
	nur_gen char(1) NOT NULL,
	nur_phone varchar2(15) NULL,
	nur_email varchar2(20) UNIQUE,
	nur_position varchar2(20) NOT NULL
	);

ALTER TABLE Nurses
	ADD CONSTRAINT nur_id_pk PRIMARY KEY (nur_id);
    
    
<�ǻ�>
insert into Doctors
values ('070576', '�Ǻΰ�', 'ȫ�浿', 'F', '016-333-7263', 'lja@hanbh.com', '������');
insert into Doctors
values ('980312', '�Ҿư�' , '������' , 'M' , '010-333-1340' , 'ltj@hanbh.com' , '����');
insert into Doctors
values ( '000601' , '����' , '�ȼ���' , 'M' , '011-222-0987' , 'ask@hanbh.com' , '����');
insert into Doctors
values ( '001208' , '�ܰ�' , '�����' , 'M' , '010-333-8743' , 'kmj@hanbh.com' , '����');
insert into Doctors
values ( '020403' , '�Ǻΰ�' , '���¼�' , 'M' , '019-777-3764' , 'lts@hanbh.com' , '����');
insert into Doctors
values ( '050900' , '�Ҿư�' , '�迬��' , 'F' , '010-555-3746' , 'kya@hanbh.com' , '������');
insert into Doctors
values ( '050101' , '����' , '������' , 'M' , '011-222-7643' , 'cth@hanbh.com' , '������');
insert into Doctors
values ( '062019' , '�Ҿư�' , '������' , 'F' , '010-999-1265' , 'jjh@hanbh.com' , '������');
insert into Doctors
values ( '080543' , '��缱��' , '���缮' , 'M' , '010-222-1263' , 'yjs@hanbh.com' , '����');
insert into Doctors
values ( '091001' , '�ܰ�' , '�躴��' , 'M' , '010-555-3542' , 'kbm@hanbh.com' , '������');

<��ȣ��>
insert into Nurses
values ( '050302' , '�Ҿư�' , '������' , 'F' , '010-555-8751' , 'key@hanbh.com' , '����ȣ��');
insert into Nurses
values ( '050021', '����' , '������' , 'F' , '016-333-8745' , 'ysa@hanbh.com' , '����ȣ��');
insert into Nurses
values ( '040089' , '�Ǻΰ�' , '������' , 'M' , '010-666-7646' , 'sjw@hanbh.com' , '����');
insert into Nurses
values ( '070605' , '��缱��' , '����ȭ' , 'F' , '010-333-4588' , 'yjh@hanbh.com' , '����');
insert into Nurses
values ( '070804' , '����' , '���ϳ�' , 'F' , '010-222-1340' , 'nhn@hanbh.com' , '����');
insert into Nurses
values ( '071018' , '�Ҿư�' , '��ȭ��' , 'F' , '019-888-4116' , 'khk@hanbh.com' , '����');
insert into Nurses
values ( '100356' , '�Ҿư�' , '�̼���' , 'M' , '010-777-1234' , 'lsy@hanbh.com' , '��ȣ��');
insert into Nurses
values ( '104145' , '�ܰ�' , '����' , 'M' , '010-999-8520' , 'kh@hanbh.com' , '��ȣ��');
insert into Nurses
values ( '120309' , '�Ǻΰ�' , '�ڼ���' , 'M' , '010-777-4996' , 'psw@hanbh.com' , '��ȣ��');
insert into Nurses
values ( '130211' , '�ܰ�' , '�̼���' , 'F' , '010-222-3214' , 'lsy2@hanbh.com' , '��ȣ�� ');

select * from doctors where doc_id like '07%';
select * from nurses where nur_id like '05%';

CREATE TABLE PATIENTS(
PAT_ID varchar2(20) NOT NULL,
NUR_ID varchar2(20) NOT NULL,
DOC_ID varchar2(20) NOT NULL,
PAT_NAME VARCHAR2(20) NOT NULL,
PAT_GEN CHAR(1) NOT NULL,
PAT_JUMIN VARCHAR2(14) NOT NULL,
PAT_ADDR VARCHAR2(100) NOT NULL,
PAT_PHONE VARCARCHAR2(15) NULL,
PAT_EMAIL VARCHAR(50) UNIQUE,
PAT_JOB VARCHAR(20) NOT NULL);

ALTER TABLE PATIENTS ADD CONSTRAINT PAT_ID_PK PRIMARY KEY (PAT_ID);

ALTER TABLE PATIENTS ADD (CONSTRAINT R_2 FOREIGN KEY (DOC_ID) REFERENCES DOCTORS (DOC_ID));

ALTER TABLE PATIENTS ADD (CONSTRAINT R_3 FOREIGN KEY (NUR_ID) REFERENCES NURSES (NUR_ID));

commit;




