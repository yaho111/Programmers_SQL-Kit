-- SUM, MAX, MIN
-- 4. 중복 제거하기
-- 문제: https://programmers.co.kr/learn/courses/30/lessons/59408
-- 정답:
SELECT COUNT(DISTINCT name) FROM animal_ins;

-- 다른 정답:
SELECT COUNT(DISTINCT name) AS "count" FROM animal_ins WHERE name IS NOT NULL;