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







