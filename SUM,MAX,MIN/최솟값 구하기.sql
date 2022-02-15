-- SUM, MAX, MIN
-- 2. 최솟값 구하기
-- 문제: https://programmers.co.kr/learn/courses/30/lessons/59038
-- 정답:
SELECT datetime FROM animal_ins WHERE datetime = (SELECT MIN(datetime) FROM animal_ins);