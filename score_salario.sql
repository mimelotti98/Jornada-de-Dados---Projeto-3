CREATE OR REPLACE TABLE `laboratoria-projeto-3-462014.projeto3.base_credito_final` AS
WITH base_com_score AS (
  SELECT *,
    CASE
      WHEN last_month_salary_tratado <= 3200 THEN 4
      WHEN last_month_salary_tratado <= 4400 THEN 3
      WHEN last_month_salary_tratado <= 7375 THEN 2
      ELSE 1
    END AS score_salario
  FROM `laboratoria-projeto-3-462014.projeto3.base_credito_final`
)

SELECT * FROM base_com_score;
