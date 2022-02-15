-- SELECT
-- 7. 상위 n개 레코드
-- 문제: https://programmers.co.kr/learn/courses/30/lessons/59405
-- 정답:
SELECT name FROM animal_ins WHERE datetime = (SELECT MIN(datetime) FROM animal_ins);
