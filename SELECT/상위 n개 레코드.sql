-- SELECT
-- 7. ���� n�� ���ڵ�
-- ����: https://programmers.co.kr/learn/courses/30/lessons/59405
-- ����:
SELECT name FROM animal_ins WHERE datetime = (SELECT MIN(datetime) FROM animal_ins);
