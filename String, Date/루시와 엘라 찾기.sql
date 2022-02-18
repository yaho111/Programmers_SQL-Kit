-- String, Date
-- 1. 루시와 엘라 찾기
-- 문제: https://programmers.co.kr/learn/courses/30/lessons/59046
-- 정답:
SELECT animal_id, name, sex_upon_intake
    FROM animal_ins
    WHERE name IN('Lucy','Ella','Pickle','Rogan','Sabrina','Mitty') -- OR 여러 개 쓰는 대신 IN 연산자 사용
    ORDER BY animal_id;