-- SELECT
-- 4. 어린 동물 찾기
-- 문제: https://programmers.co.kr/learn/courses/30/lessons/59037
-- 정답:
-- 1) 같지 않다: !=
SELECT animal_id, name FROM animal_ins WHERE intake_condition != 'Aged' ORDER BY animal_id ASC;

-- 2) 같지 않다: ^=
SELECT animal_id, name FROM animal_ins WHERE intake_condition ^= 'Aged' ORDER BY animal_id ASC;

-- 3) 같지 않다: <>
SELECT animal_id, name FROM animal_ins WHERE intake_condition <> 'Aged' ORDER BY animal_id ASC;

-- 풀이: 어린 동물 = intake_condition 속성 값이 'Aged'가 아니어야 함
--      오라클의 연산자에서 같지 않음을 표시하는 연산자에는 !=, ^=, <>가 있다.