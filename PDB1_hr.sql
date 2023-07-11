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
    
    
<의사>
insert into Doctors
values ('070576', '피부과', '홍길동', 'F', '016-333-7263', 'lja@hanbh.com', '전문의');
insert into Doctors
values ('980312', '소아과' , '이태정' , 'M' , '010-333-1340' , 'ltj@hanbh.com' , '과장');
insert into Doctors
values ( '000601' , '내과' , '안성기' , 'M' , '011-222-0987' , 'ask@hanbh.com' , '과장');
insert into Doctors
values ( '001208' , '외과' , '김민종' , 'M' , '010-333-8743' , 'kmj@hanbh.com' , '과장');
insert into Doctors
values ( '020403' , '피부과' , '이태서' , 'M' , '019-777-3764' , 'lts@hanbh.com' , '과장');
insert into Doctors
values ( '050900' , '소아과' , '김연아' , 'F' , '010-555-3746' , 'kya@hanbh.com' , '전문의');
insert into Doctors
values ( '050101' , '내과' , '차태현' , 'M' , '011-222-7643' , 'cth@hanbh.com' , '전문의');
insert into Doctors
values ( '062019' , '소아과' , '전지현' , 'F' , '010-999-1265' , 'jjh@hanbh.com' , '전문의');
insert into Doctors
values ( '080543' , '방사선과' , '유재석' , 'M' , '010-222-1263' , 'yjs@hanbh.com' , '과장');
insert into Doctors
values ( '091001' , '외과' , '김병만' , 'M' , '010-555-3542' , 'kbm@hanbh.com' , '전문의');

<간호사>
insert into Nurses
values ( '050302' , '소아과' , '김은영' , 'F' , '010-555-8751' , 'key@hanbh.com' , '수간호사');
insert into Nurses
values ( '050021', '내과' , '윤성애' , 'F' , '016-333-8745' , 'ysa@hanbh.com' , '수간호사');
insert into Nurses
values ( '040089' , '피부과' , '신지원' , 'M' , '010-666-7646' , 'sjw@hanbh.com' , '주임');
insert into Nurses
values ( '070605' , '방사선과' , '유정화' , 'F' , '010-333-4588' , 'yjh@hanbh.com' , '주임');
insert into Nurses
values ( '070804' , '내과' , '라하나' , 'F' , '010-222-1340' , 'nhn@hanbh.com' , '주임');
insert into Nurses
values ( '071018' , '소아과' , '김화경' , 'F' , '019-888-4116' , 'khk@hanbh.com' , '주임');
insert into Nurses
values ( '100356' , '소아과' , '이선용' , 'M' , '010-777-1234' , 'lsy@hanbh.com' , '간호사');
insert into Nurses
values ( '104145' , '외과' , '김현' , 'M' , '010-999-8520' , 'kh@hanbh.com' , '간호사');
insert into Nurses
values ( '120309' , '피부과' , '박성완' , 'M' , '010-777-4996' , 'psw@hanbh.com' , '간호사');
insert into Nurses
values ( '130211' , '외과' , '이서연' , 'F' , '010-222-3214' , 'lsy2@hanbh.com' , '간호사 ');

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




