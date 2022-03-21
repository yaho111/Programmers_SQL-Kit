-- JOIN
-- 2. 있었는데요 없었습니다
-- 문제: https://programmers.co.kr/learn/courses/30/lessons/59043?language=oracle
-- 정답:
-- 1)
SELECT A.animal_id, A.name 
    FROM animal_ins A, animal_outs B
    WHERE A.animal_id = B.animal_id
    AND A.datetime > B.datetime
    ORDER BY A.datetime ASC;
    
-- 2)
 SELECT B.animal_id, B.name
     FROM animal_outs B INNER JOIN animal_ins A
     ON (A.animal_id = B.animal_id)
     WHERE A.datetime > B.datetime
     ORDER BY B.datetime ASC;
     
-- [참고] 별칭(Alias)를 예약어(ex. IN, OUT 등으로 쓰면 오류 발생)