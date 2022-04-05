-- String, Date
-- 5. DATETIME에서 DATE로 형 변환
-- 문제: https://programmers.co.kr/learn/courses/30/lessons/59414?language=oracle
-- 정답:
SELECT animal_id, name, TO_CHAR(datetime, 'YYYY-MM-DD') AS 날짜
    FROM animal_ins
    ORDER BY animal_id ASC;