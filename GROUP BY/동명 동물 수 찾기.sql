-- GROUP BY
-- 2. 동명 동물 수 찾기
-- 문제: https://programmers.co.kr/learn/courses/30/lessons/59041
-- 정답:
SELECT name, COUNT(name) as "count" FROM animal_ins 
    GROUP BY name 
    HAVING name IS NOT null AND COUNT(name) >=2     -- Having 절에는 별칭 사용 불가(ex. COUNT(name) 대신 count 사용 불가
    ORDER BY name ASC;