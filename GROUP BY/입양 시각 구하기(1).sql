-- GROUP BY
-- 3. 입양 시각 구하기(1)
-- 문제: https://programmers.co.kr/learn/courses/30/lessons/59412
-- 정답:
-- 1) 시간 구하기: HOUR 함수 + CAST 함수 이용
SELECT EXTRACT(HOUR FROM CAST(datetime as TIMESTAMP)) as "HOUR", COUNT(*) AS "COUNT" -- DATETIME은 DATE + TIMESTAMP 형태로, 연도/월/일은 DATE, 시/분/초는 TIMESTAMP이다.
    FROM animal_outs                                                                 -- 따라서 시간(hour)을 구하기 위해서는 CAST 함수를 이용해서 TIMESTAMP 형태로 변환 후 EXTRACT 해야한다.
    WHERE EXTRACT(HOUR FROM CAST(datetime as TIMESTAMP)) BETWEEN 09 AND 19           -- 컬럼에 대한 별칭인 "HOUR" 사용 불가
    GROUP BY EXTRACT(HOUR FROM CAST(datetime as TIMESTAMP))
    ORDER BY EXTRACT(HOUR FROM CAST(datetime as TIMESTAMP)) ASC;

-- 2) 시간 구하기: TO_CHAR 함수 이용
SELECT TO_CHAR(datetime,'HH24') as "HOUR", COUNT(*) AS "COUNT"  -- TO_CHAR는 날짜형 또는 숫자형 데이터를 문자형으로 변환시켜주는 함수이다.
    FROM animal_outs                                            -- 형식: TO_CHAR(날짜 데이터, '출력 형식'   (https://happy-desert.tistory.com/26?category=995675 참고)
    WHERE TO_CHAR(datetime,'HH24') BETWEEN 09 AND 19            -- 컬럼에 대한 별칭인 "HOUR" 사용 불가
    GROUP BY TO_CHAR(datetime,'HH24')
    ORDER BY TO_CHAR(datetime,'HH24') ASC;
    
-- 다른 정답: 서브쿼리 이용
SELECT HOUR, count(*) AS "COUNT"
    FROM (SELECT EXTRACT(HOUR FROM CAST(DATETIME AS TIMESTAMP)) AS "HOUR"  -- 오라클에서 where, having 조건절에서 별칭 사용 가능/불가능한 경우 유의
    FROM animal_outs)                                                      -- : 컬럼에 대한 별칭(Alias)일 때는 사용 불가 
    WHERE HOUR BETWEEN 9 AND 19                                            -- : 테이블에 대한 별칭(Alias)일 때는 사용 가능
    GROUP BY HOUR
    ORDER BY HOUR;
