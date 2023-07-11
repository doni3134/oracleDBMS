CREATE TABLE PATIENTS(
	PAT_ID varchar2(20) NOT NULL,
	NUR_ID varchar2(20) NOT NULL,
	DOC_ID varchar2(20) NOT NULL,
	PAT_NAME VARCHAR2(20) NOT NULL,
	PAT_GEN CHAR(1) NOT NULL,
	PAT_JUMIN VARCHAR2(14) NOT NULL,
	PAT_ADDR VARCHAR2(100) NOT NULL,
	PAT_PHONE VARCHAR2(15) NULL,
	PAT_EMAIL VARCHAR(50) UNIQUE,
	PAT_JOB VARCHAR(20) NOT NULL
);

ALTER TABLE PATIENTS ADD CONSTRAINT PAT_ID_PK PRIMARY KEY (PAT_ID);

ALTER TABLE PATIENTS ADD (CONSTRAINT R_2 FOREIGN KEY (DOC_ID) REFERENCES DOCTORS (DOC_ID));

ALTER TABLE PATIENTS ADD (CONSTRAINT R_3 FOREIGN KEY (NUR_ID) REFERENCES NURSES (NUR_ID));

INSERT INTO PATIENTS VALUES ('2345', '050302', '980312', '안상건', 'M', '232345', '서울', '010-555-7845', 'ASK@AB.COM', '회사원');
INSERT INTO PATIENTS VALUES ('3545', '040089', '020403', '김성룡', 'M', '543545', '서울', '010-333-7812', 'KSR@BB.COM', '자영업');
INSERT INTO PATIENTS VALUES ('3424', '070605', '080543', '이종진', 'M', '433424', '부산', '010-888-4859', 'IJJ@AB.COM', '회사원');
INSERT INTO PATIENTS VALUES ('7675', '100356', '050900', '최광석', 'M', '677675', '당진', '010-222-4847', 'CKS@CC.COM', '회사원');
INSERT INTO PATIENTS VALUES ('4533', '070804', '000601', '정한경', 'M', '744533', '강릉', '010-777-9630', 'JHK@AB.COM', '교수');
INSERT INTO PATIENTS VALUES ('5546', '120309', '070576', '유원현', 'M', '765546', '대구', '010-777-0214', 'YWH@CC.COM', '자영업');
INSERT INTO PATIENTS VALUES ('4543', '070804', '050101', '최재정', 'M', '454543', '부산', '010-555-4187', 'CJJ@BB.COM', '회사원');
INSERT INTO PATIENTS VALUES ('9768', '130211', '091001', '이진희', 'F', '119768', '서울', '010-888-3675', 'IJH@AB.COM', '교수');
INSERT INTO PATIENTS VALUES ('4234', '130211', '091001', '오나미', 'F', '234234', '속초', '010-999-6541', 'ONM@CC.COM', '학생');
INSERT INTO PATIENTS VALUES ('7643', '071018', '062019', '송성묵', 'M', '987643', '서울', '010-222-5874', 'SSM@BB.COM', '학생');

Create Table Treatments (
treat_id varchar2(20) Not Null,
pat_id varchar2(20) Not Null,
doc_id varchar2(20) Not Null,
treat_contents varchar2(1000) Not Null,
treat_date date Not Null );

Alter Table Treatments
Add Constraint treat_pat_doc_id_pk Primary Key( treat_id,pat_id,doc_id );

Alter Table Treatments
	Add (Constraint R_5 Foreign key (pat_id) References Patients (pat_id));

Alter Table Treatments
	Add (Constraint R_6 Foreign key (doc_id) References Doctors (doc_id));

Insert Into Treatments
Values ( '130516023', '2345', '980312', '감기,몸살','2013-05-16' );
Insert Into Treatments
Values ( '130628100', '3545', '020403', '피부 트러블 치료','2013-06-28' );
Insert Into Treatments
Values ( '131205056', '3424', '080543', '목디스크로 MRI 촬영','2013-12-05' );
Insert Into Treatments
Values ( '131218024', '7675', '050900', '중이염','2013-12-18' );
Insert Into Treatments
Values ( '131224012', '4533', '000601', '장염','2013-12-24' );
Insert Into Treatments
Values ( '140103001', '5546', '070576', '여드름 치료','2014-01-03' );
Insert Into Treatments
Values ( '140109026', '4543', '050101', '위염','2014-01-09' );
Insert Into Treatments
Values ( '140226102', '9768', '091001', '화상 치료','2014-02-26' );
Insert Into Treatments
Values ( '140303003', '4234', '091001', '교통사고 외상 치료','2014-03-03' );
Insert Into Treatments
Values ( '140308087', '7643', '062019', '장염','2014-03-08' ); 

ALTER TABLE Doctors
	ADD CONSTRAINT doc_id_pk PRIMARY KEY (doc_id);

ALTER TABLE Nurses
	ADD CONSTRAINT nur_id_pk PRIMARY KEY (nur_id);
    
commit;

select * from nurses;

    
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

create table charts(
    chart_id varchar2(20) not null,
    treat_id varchar2(25) not null,
    doc_id varchar2(20) not null,
    pat_id varchar2(20) not null,
    nur_id varchar2(20) not null,
    chart_contents varchar2(1000) not null
);

alter table charts add constraint chart_treat_doc_pat_id_pk primary key (chart_id, treat_id, doc_id, pat_id);

alter table charts add (constraint r_4 foreign key (nur_id) references nurses (nur_id));
alter table charts add (constraint R_7 foreign key (treat_id, pat_id, doc_id) references treatments(treat_id, pat_id, doc_id));


insert into charts values ( 'p_130516023', '130516023', '980312', '2345', '050302', '감기 주사 및 약 처방' );
insert into charts values ( 'd_130628100', '130628100', '020403', '3545', '010089', '피부 감염 방지 주사');
insert into charts values ( 'r_131205056', '131205056', '080543', '3424', '070605', '주사 처방');
insert into charts values ( 'p_131218024', '131218024', '050900', '7675', '100356', '귓속 청소 및 약 처방');
insert into charts values ( 'i_131224012', '131224012', '000601', '4533', '070804', '장염 입원 치료');
insert into charts values ( 'd_140103001', '140103001', '070576', '5546', '120309', '여드름 치료약 처방');
insert into charts values ( 'i_140109026', '140109026', '050101', '4543', '070804', '위내시경');
insert into charts values ( 's_140226102', '140226102', '091001', '9768', '130211', '화상 크림약 처방');
insert into charts values ( 's_140303003', '140303003', '091001', '4234', '130211', '입원 치료');
insert into charts values ( 'p_140308087', '140308087', '062019', '7643', '071018', '장염 입원 치료');

commit;
