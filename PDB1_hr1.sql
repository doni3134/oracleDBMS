ALTER TABLE PATIENTS ADD CONSTRAINT PAT_ID_PK PRIMARY KEY (PAT_ID);

ALTER TABLE PATIENTS ADD (CONSTRAINT R_2 FOREIGN KEY (DOC_ID) REFERENCES DOCTORS (DOC_ID));

ALTER TABLE PATIENTS ADD (CONSTRAINT R_3 FOREIGN KEY (NUR_ID) REFERENCES NURSES (NUR_ID));