-- IS NULL
-- 1. 이름이 없는 동물의 아이디
-- 문제: https://programmers.co.kr/learn/courses/30/lessons/59039?language=oracle
-- 정답:
SELECT animal_id FROM animal_ins WHERE name IS null ORDER BY animal_id ASC;