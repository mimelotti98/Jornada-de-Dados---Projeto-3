CREATE OR REPLACE TABLE `laboratoria-projeto-3-462014.projeto3.base_credito_final` AS
WITH base_quartil_atraso_30_59 AS (
  SELECT *,
    NTILE(4) OVER (ORDER BY number_times_delayed_payment_loan_30_59_days DESC) AS faixa_atraso_30_59
  FROM `laboratoria-projeto-3-462014.projeto3.base_credito_final`
),
base_com_score_atraso AS (
  SELECT *,
    CASE
      WHEN faixa_atraso_30_59 = 1 THEN 4  -- maior risco
      WHEN faixa_atraso_30_59 = 2 THEN 3
      WHEN faixa_atraso_30_59 = 3 THEN 2
      ELSE 1                              -- menor risco
    END AS score_atraso_30_59
  FROM base_quartil_atraso_30_59
)
SELECT * FROM base_com_score_atraso;
