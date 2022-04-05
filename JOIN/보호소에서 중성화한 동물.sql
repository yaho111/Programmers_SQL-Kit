-- JOIN
-- 4. 보호소에서 중성화한 동물
-- 문제: https://programmers.co.kr/learn/courses/30/lessons/59045?language=oracle
-- 정답:
-- 1)
SELECT B.animal_id, B.animal_type, B.name
    FROM animal_outs B LEFT OUTER JOIN animal_ins A
    ON A.animal_id = B.animal_id
    WHERE A.sex_upon_intake LIKE 'Intact%'
    AND B.sex_upon_outcome NOT LIKE 'Intact%'
    ORDER BY B.animal_id ASC;
    
-- 2)
SELECT B.animal_id, B.animal_type, B.name
    FROM animal_ins A, animal_outs B
    WHERE A.animal_id(+) = B.animal_id
    AND A.sex_upon_intake LIKE 'Intact%'
    AND B.sex_upon_outcome NOT LIKE 'Intact%'
    ORDER BY B.animal_id ASC;
    