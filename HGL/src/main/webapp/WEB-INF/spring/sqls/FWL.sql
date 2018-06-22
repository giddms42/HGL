--FWL SEQUENCE SQL
DROP SEQUENCE FWLNO_SEQ;
CREATE SEQUENCE FWLNO_SEQ;

--FWL TABLE SQL
DROP TABLE FWL;
CREATE TABLE FWL
(
    MEMBERNO    NUMBER           REFERENCES  MEMBER(MEMBERNO) ON DELETE CASCADE, 
    FWLNO       NUMBER           NOT NULL, 
    FWLITEM     VARCHAR2(200)    NOT NULL, 
    FWLCHK      VARCHAR2(20)     NOT NULL, 
    CONSTRAINT FWL_PK PRIMARY KEY (FWLNO),
    CONSTRAINT FWL_CHK CHECK(FWLCHK IN ('Y','N'))
);

SELECT * FROM FWL;

INSERT INTO FWL VALUES(1, FWLNO_SEQ.NEXTVAL, '맛있는거 먹으러 가기', 'N');

delete from fwl where memberno=21
-----------------------------------------------------------------------------------------------------

-- FWLB SEQUENCE SQL
DROP SEQUENCE FWLBNO_SEQ;
CREATE SEQUENCE FWLBNO_SEQ;

-- FWLB TABLE SQL
DROP TABLE FWLB;
CREATE TABLE FWLB
(
    FWLBNO         NUMBER            NOT NULL, 
    FWLBROWNUM     NUMBER			 NULL,
    FWLBWRITER     VARCHAR2(100)     NULL,
    FWLBTITLE      VARCHAR2(200)     NOT NULL, 
    FWLBREADCNT    NUMBER            NOT NULL, 
    FWLBDATE       DATE              NOT NULL, 
    CONSTRAINT FWLB_PK PRIMARY KEY (FWLBNO)
)

INSERT INTO FWLB VALUES(FWLBNO_SEQ.NEXTVAL, null, '관리자', '관리자 님의 위시리스트 입니다.', 0, SYSDATE);

	SELECT * FROM FWLB ORDER BY FWLBNO DESC

SELECT * FROM FWLB

	select *
	from ( 
    select A.FWLBNO, A.FWLBROWNUM, A.FWLBWRITER, A.FWLBTITLE, A.FWLBREADCNT, A.FWLBDATE,
    ROWNUM AS RN
    from (
        select *
        from FWLB WHERE FWLBWRITER LIKE '%지지%' ORDER BY FWLBNO DESC) A
   where ROWNUM <= 10) X
	where X.RN >=1 
	ORDER BY X.FWLBNO DESC


		SELECT  * FROM FWLB WHERE FWLBWRITER LIKE '%지지%'  ORDER BY FWLBNO DESC
		
		
		select *
	from ( 
    select A.FWLBNO, A.FWLBROWNUM, A.FWLBWRITER, A.FWLBTITLE, A.FWLBREADCNT, A.FWLBDATE,
    ROWNUM AS RN
    from (
        select *
        from FWLB ORDER BY FWLBNO DESC) A
    where ROWNUM <= 10) X
	where X.RN >=1
	ORDER BY X.FWLBNO DESC
	
DELETE FROM FWLB WHERE FWLBWRITER = '테스팅'
	
--------------------------------------------------

-- FWLBCM SEQUENCE SQL
DROP SEQUENCE FWLBCMNO_SEQ;
CREATE SEQUENCE FWLBCMNO_SEQ;

-- FWLBCM TABLE SQL
DROP TABLE FWLBCM;
CREATE TABLE FWLBCM
(
    FWLBNO          NUMBER            REFERENCES  FWLB(FWLBNO) ON DELETE CASCADE,
    FWLBCMNO        NUMBER            NOT NULL, 
    FWLBCMWRITER    VARCHAR2(100)     NOT NULL, 
    FWLBCMCONT      VARCHAR2(1000)    NOT NULL, 
    FWLBCMDATE      DATE              NOT NULL, 
    CONSTRAINT FWLBCM_PK PRIMARY KEY (FWLBCMNO)
);

SELECT * FROM FWLBCM;



