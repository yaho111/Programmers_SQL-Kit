-- IS NULL
-- 2. 이름이 있는 동물의 아이디
-- 문제: https://programmers.co.kr/learn/courses/30/lessons/59407?language=oracle
-- 정답:
SELECT animal_id FROM animal_ins WHERE name IS NOT null ORDER BY animal_id ASC;