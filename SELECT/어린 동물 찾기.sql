-- SELECT
-- 4. � ���� ã��
-- ����: https://programmers.co.kr/learn/courses/30/lessons/59037
-- ����:
-- 1) ���� �ʴ�: !=
SELECT animal_id, name FROM animal_ins WHERE intake_condition != 'Aged' ORDER BY animal_id ASC;

-- 2) ���� �ʴ�: ^=
SELECT animal_id, name FROM animal_ins WHERE intake_condition ^= 'Aged' ORDER BY animal_id ASC;

-- 3) ���� �ʴ�: <>
SELECT animal_id, name FROM animal_ins WHERE intake_condition <> 'Aged' ORDER BY animal_id ASC;

-- Ǯ��: � ���� = intake_condition �Ӽ� ���� 'Aged'�� �ƴϾ�� ��
--      ����Ŭ�� �����ڿ��� ���� ������ ǥ���ϴ� �����ڿ��� !=, ^=, <>�� �ִ�.
