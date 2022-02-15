-- SUM, MAX, MIN
-- 1. 최댓값 구하기
-- 문제: https://programmers.co.kr/learn/courses/30/lessons/59415
-- 정답:
SELECT datetime FROM animal_ins WHERE datetime = (SELECT MAX(datetime) FROM animal_ins);