-- String, Date
-- 2. 이름에 el이 들어가는 동물 찾기
-- 문제: https://programmers.co.kr/learn/courses/30/lessons/59047
-- 정답:
SELECT animal_id, name FROM animal_ins
    WHERE animal_type='Dog' AND UPPER(name) LIKE '%EL%'     -- UPPER() 또는 LOWER() 함수 사용, LIKE 연산자와 와일드카드 사용
    ORDER BY name ASC;