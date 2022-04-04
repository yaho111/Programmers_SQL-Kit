-- JOIN
-- 3. 오랜 기간 보호한 동물(1)
-- 문제: https://programmers.co.kr/learn/courses/30/lessons/59044?language=oracle
-- 정답:
-- 1)
SELECT name, datetime
    FROM 
     (SELECT A.name, A.datetime
       FROM animal_ins A LEFT OUTER JOIN animal_outs B
       ON A.animal_id = B.animal_id
       WHERE B.datetime IS NULL 
       ORDER BY A.datetime)
    WHERE rownum <=3;
    
-- 2)
SELECT name, datetime
    FROM 
     (SELECT A.name, A.datetime
       FROM animal_ins A, animal_outs B
       WHERE A.animal_id = B.animal_id(+)
       AND B.datetime IS NULL 
       ORDER BY A.datetime)
    WHERE rownum <=3;
    