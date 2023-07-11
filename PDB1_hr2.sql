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

INSERT INTO PATIENTS VALUES ('2345', '050302', '980312', '�Ȼ��', 'M', '232345', '����', '010-555-7845', 'ASK@AB.COM', 'ȸ���');
INSERT INTO PATIENTS VALUES ('3545', '040089', '020403', '�輺��', 'M', '543545', '����', '010-333-7812', 'KSR@BB.COM', '�ڿ���');
INSERT INTO PATIENTS VALUES ('3424', '070605', '080543', '������', 'M', '433424', '�λ�', '010-888-4859', 'IJJ@AB.COM', 'ȸ���');
INSERT INTO PATIENTS VALUES ('7675', '100356', '050900', '�ֱ���', 'M', '677675', '����', '010-222-4847', 'CKS@CC.COM', 'ȸ���');
INSERT INTO PATIENTS VALUES ('4533', '070804', '000601', '���Ѱ�', 'M', '744533', '����', '010-777-9630', 'JHK@AB.COM', '����');
INSERT INTO PATIENTS VALUES ('5546', '120309', '070576', '������', 'M', '765546', '�뱸', '010-777-0214', 'YWH@CC.COM', '�ڿ���');
INSERT INTO PATIENTS VALUES ('4543', '070804', '050101', '������', 'M', '454543', '�λ�', '010-555-4187', 'CJJ@BB.COM', 'ȸ���');
INSERT INTO PATIENTS VALUES ('9768', '130211', '091001', '������', 'F', '119768', '����', '010-888-3675', 'IJH@AB.COM', '����');
INSERT INTO PATIENTS VALUES ('4234', '130211', '091001', '������', 'F', '234234', '����', '010-999-6541', 'ONM@CC.COM', '�л�');
INSERT INTO PATIENTS VALUES ('7643', '071018', '062019', '�ۼ���', 'M', '987643', '����', '010-222-5874', 'SSM@BB.COM', '�л�');

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
Values ( '130516023', '2345', '980312', '����,����','2013-05-16' );
Insert Into Treatments
Values ( '130628100', '3545', '020403', '�Ǻ� Ʈ���� ġ��','2013-06-28' );
Insert Into Treatments
Values ( '131205056', '3424', '080543', '���ũ�� MRI �Կ�','2013-12-05' );
Insert Into Treatments
Values ( '131218024', '7675', '050900', '���̿�','2013-12-18' );
Insert Into Treatments
Values ( '131224012', '4533', '000601', '�忰','2013-12-24' );
Insert Into Treatments
Values ( '140103001', '5546', '070576', '���帧 ġ��','2014-01-03' );
Insert Into Treatments
Values ( '140109026', '4543', '050101', '����','2014-01-09' );
Insert Into Treatments
Values ( '140226102', '9768', '091001', 'ȭ�� ġ��','2014-02-26' );
Insert Into Treatments
Values ( '140303003', '4234', '091001', '������ �ܻ� ġ��','2014-03-03' );
Insert Into Treatments
Values ( '140308087', '7643', '062019', '�忰','2014-03-08' ); 

ALTER TABLE Doctors
	ADD CONSTRAINT doc_id_pk PRIMARY KEY (doc_id);

ALTER TABLE Nurses
	ADD CONSTRAINT nur_id_pk PRIMARY KEY (nur_id);
    
commit;

select * from nurses;

    
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


insert into charts values ( 'p_130516023', '130516023', '980312', '2345', '050302', '���� �ֻ� �� �� ó��' );
insert into charts values ( 'd_130628100', '130628100', '020403', '3545', '010089', '�Ǻ� ���� ���� �ֻ�');
insert into charts values ( 'r_131205056', '131205056', '080543', '3424', '070605', '�ֻ� ó��');
insert into charts values ( 'p_131218024', '131218024', '050900', '7675', '100356', '�Ӽ� û�� �� �� ó��');
insert into charts values ( 'i_131224012', '131224012', '000601', '4533', '070804', '�忰 �Կ� ġ��');
insert into charts values ( 'd_140103001', '140103001', '070576', '5546', '120309', '���帧 ġ��� ó��');
insert into charts values ( 'i_140109026', '140109026', '050101', '4543', '070804', '�����ð�');
insert into charts values ( 's_140226102', '140226102', '091001', '9768', '130211', 'ȭ�� ũ���� ó��');
insert into charts values ( 's_140303003', '140303003', '091001', '4234', '130211', '�Կ� ġ��');
insert into charts values ( 'p_140308087', '140308087', '062019', '7643', '071018', '�忰 �Կ� ġ��');

commit;
