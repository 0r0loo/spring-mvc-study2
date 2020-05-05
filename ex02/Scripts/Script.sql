create sequence seq_board;

create table tbl_board(
    bno number(10,0),
    title varchar2(200) NOT NULL,
    content varchar2(2000) NOT NULL,
    writer varchar2(50) NOT NULL,
    regdate DATE DEFAULT SYSDATE,
    updatedate DATE DEFAULT SYSDATE
);


ALTER TABLE TBL_BOARD ADD CONSTRAINT pk_board
PRIMARY KEY (bno);

INSERT INTO TBL_BOARD (bno, title, content, WRITER) 
VALUES (seq_board.nextval, '테스트 제목', '테스트 내용', 'user00');

SELECT *
	FROM TBL_BOARD;


-- 게시판 목록 가져오기 
select * from tbl_board where bno > 0;


SELECT * FROM TBL_BOARD ORDER BY bno DESC;

SELECT * FROM TBL_BOARD WHERE bno > 0;


SELECT * FROM TBL_BOARD ORDER BY BNO DESC;

SELECT /*+INDEX_DESC (tbl_board pk_board) */*
	FROM TBL_BOARD;

SELECT /*+ FULL(TBL_BOARD) */ * FROM TBL_BOARD ORDER BY BNO DESC;

SELECT rownum rn, bno, title FROM TBL_BOARD;

SELECT /*+ INDEX_DESC(TBL_BOARD PK_BOARD) */ ROWNUM RN, BNO, TITLE, CONTENT
	FROM TBL_BOARD
	WHERE BNO > 0;

SELECT BNO, TITLE, CONTENT
	FROM (SELECT /*+ INDEX_DESC(TBL_BOARD PK_BOARD) */
			ROWNUM RN, BNO, TITLE, CONTENT
				FROM TBL_BOARD
				WHERE ROWNUM <= 20)
	WHERE RN > 10;














