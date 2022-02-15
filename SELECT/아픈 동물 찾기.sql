-- SELECT
-- 3. 아픈 동물 찾기
-- 문제: https://programmers.co.kr/learn/courses/30/lessons/59036
-- 정답: 
SELECT animal_id, name FROM animal_ins WHERE intake_condition = 'Sick' ORDER BY animal_id ASC;