-- String, Date
-- 3. 중성화 여부 파악하기
-- 문제: https://programmers.co.kr/learn/courses/30/lessons/59409
-- 정답:
SELECT animal_id, name, 
    (CASE WHEN sex_upon_intake LIKE 'Neutered%' THEN 'O'
          WHEN sex_upon_intake LIKE 'Spayed%' THEN 'O'
          ELSE 'X'
          END) AS "중성화"      -- 별칭은 쌍따옴표(" ")로! 외따옴표 사용시 오류 발생
     FROM animal_ins
     ORDER BY animal_id ASC;