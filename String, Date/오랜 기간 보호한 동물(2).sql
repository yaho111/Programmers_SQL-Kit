-- String, Date
-- 4. 오랜 기간 보호한 동물(2)
-- 문제: https://programmers.co.kr/learn/courses/30/lessons/59411?language=oracle
-- 정답:
-- 1)
SELECT animal_id, name
    FROM 
      (SELECT A.animal_id, A.name, B.datetime - A.datetime AS 시간
         FROM animal_ins A INNER JOIN animal_outs B
         ON A.animal_id = B.animal_id
         ORDER BY 시간 DESC)
    WHERE ROWNUM <= 2;

-- 2)
SELECT animal_id, name 
    FROM
      (SELECT B.* 
        FROM animal_ins A, animal_outs B
        WHERE A.animal_id = B.animal_id
        ORDER BY (B.datetime - A.datetime) DESC)
    WHERE rownum <= 2;
    