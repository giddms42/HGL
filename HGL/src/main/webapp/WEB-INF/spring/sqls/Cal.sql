-- CAL SEQUENCE SQL
DROP SEQUENCE CALNO_SEQ;
CREATE SEQUENCE CALNO_SEQ;

--CAL TABLE SQL
DROP TABLE CAL;
CREATE TABLE CAL
(
    MEMBERID    VARCHAR2(200)    NOT NULL, 
    CALNO       NUMBER           NOT NULL, 
    CALTITLE    VARCHAR2(200)    NOT NULL, 
    CALSCH      VARCHAR2(200)    NOT NULL, 
    CALDATE     DATE             NOT NULL, 
    CALMEMO     VARCHAR2(200)    NULL, 
    CALSMS      VARCHAR2(20)     NULL, 
    CONSTRAINT CAL_PK PRIMARY KEY (CALNO),
    CONSTRAINT CAL_FK FOREIGN KEY (MEMBERNO) REFERENCES MEMBER (MEMBERNO),
    CONSTRAINT CAL_SMS_CHK CHECK(CALSMS IN ('Y','N'))
);

INSERT INTO CAL VALUES('향은이', CALNO_SEQ.NEXTVAL, '향은이 생일', '1991-06-21', SYSDATE, '향은이 생일입니당', 'Y');

SELECT * FROM CAL;