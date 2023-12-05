-- reply 테이블 생성

CREATE TABLE reply(
    rno         NUMBER PRIMARY KEY,             --댓글번호
    bno         NUMBER NOT NULL,                --게시글번호
    rcontent    VARCHAR2(2000) NOT NULL,        --댓글내용
    replyer     VARCHAR2(20) NOT NULL,          --작성자
    rdate       TIMESTAMP DEFAULT SYSTIMESTAMP, --작성일
    rupdate     TIMESTAMP,                      --수정일
    FOREIGN KEY(bno) REFERENCES board(bno)      --외래키
);

CREATE SEQUENCE seq_rno NOCACHE;



--1번 게시글 검색
SELECT * FROM reply WHERE bno = 1;

--1번게시글에 댓글달기
INSERT INTO reply(rno, bno, rcontent, replyer)
VALUES(seq_rno.NEXTVAL, 1, '첫번째 댓글입니다.', 'today');
INSERT INTO reply(rno, bno, rcontent, replyer)
VALUES(seq_rno.NEXTVAL, 1, '두번째 댓글입니다.', 'sky123');

DELETE FROM reply WHERE rno = 3;

COMMIT;
SELECT * FROM reply;





