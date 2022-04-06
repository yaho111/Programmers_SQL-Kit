-- GROUP BY
-- 4. 입양 시각 구하기(2)
-- 문제: https://programmers.co.kr/learn/courses/30/lessons/59413?language=oracle
-- 정답:

SELECT hour, COUNT(O.datetime) AS count 
    FROM
      (SELECT LEVEL-1 AS hour
      FROM DUAL 
      CONNECT BY LEVEL < 25) A 
    LEFT JOIN animal_outs O 
    ON A.hour = TO_CHAR(O.datetime,'HH24') 
    GROUP BY hour 
    ORDER BY hour;