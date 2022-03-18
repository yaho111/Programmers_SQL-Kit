-- JOIN
-- 1. 없어진 기록 찾기
-- 문제: https://programmers.co.kr/learn/courses/30/lessons/59042?language=oracle
-- 정답:
SELECT b.animal_id, b.name
    FROM animal_ins a, animal_outs b
    WHERE a.animal_id(+) =  b.animal_id AND a.animal_id IS null
    ORDER BY animal_id;