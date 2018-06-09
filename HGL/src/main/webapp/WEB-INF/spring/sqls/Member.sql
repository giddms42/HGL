-- MEMBER SEQUENCE SQL
DROP SEQUENCE MEMBERNO_SEQ;
CREATE SEQUENCE MEMBERNO_SEQ;

-- MEMBER Table SQL
DROP TABLE MEMBER;
CREATE TABLE MEMBER
(
    MEMBERNO          NUMBER            NOT NULL, 
    MEMBERID          VARCHAR2(100)     NOT NULL, 
    MEMBERPW          VARCHAR2(100)     NOT NULL, 
    MEMBERNICKNAME    VARCHAR2(100)     NOT NULL, 
    MEMBEREMAIL       VARCHAR2(100)     NOT NULL, 
    MEMBERPHONE       VARCHAR2(100)     NOT NULL, 
    MEMBERDO          VARCHAR2(100)     NOT NULL, 
    MEMBERCITY        VARCHAR2(100)     NOT NULL, 
    MEMBERADDR        VARCHAR2(1000)    NOT NULL, 
    MEMBERROLE        VARCHAR2(20)      NOT NULL, 
    MEMBERPROHIBIT    NUMBER            NOT NULL, 
    MEMBERJOIN        VARCHAR2(20)      NOT NULL, 
    MEMBERSMS         VARCHAR2(20)      NOT NULL, 
    
	CONSTRAINT MEMBER_PK PRIMARY KEY(MEMBERNO),
    CONSTRAINT MEMBER_JOIN_CHK CHECK(MEMBERJOIN IN ('Y','N')),
    CONSTRAINT MEMBER_SMS_CHK CHECK(MEMBERSMS IN ('Y','N'))
);

INSERT INTO MEMBER VALUES(MEMBERNO_SEQ.NEXTVAL, 'gm', '11','관리자', 'gm@mail.com', '010-1234-5678', '경기도', 
'광명시', '광명 6동 374-29번지', 'ADMIN', '0', 'Y', 'Y');

DELETE FROM MEMBER WHERE MEMBERNO=1;
ALTER TABLE MEMBER MODIFY(MEMBERPW VARCHAR2(500));
UPDATE MEMBER SET MEMBERCITY='임실군' WHERE MEMBERNO=2;
SELECT * FROM KINDSTORE;
DROP TABLE KINDSTORE;

SELECT * FROM MEMBER;
SELECT * FROM KINDSTORE;

DELETE FROM MEMBER WHERE MEMBERID='a';

SELECT * FROM MEMBER WHERE MEMBERID='gm' AND MEMBERJOIN='Y';
-------------------------------------------------



SELECT COUNT(*) FROM KINDSTORE WHERE KINDDO LIKE '%경기도%' AND KINDCITY LIKE '%광명시%'
  







