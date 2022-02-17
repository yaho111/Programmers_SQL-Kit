-- IS NULL
-- 3. NULL 처리하기
-- 문제: https://programmers.co.kr/learn/courses/30/lessons/59410?language=oracle
-- 정답:
SELECT animal_type, NVL(name,'No name'), sex_upon_intake FROM animal_ins ORDER BY animal_id ASC;