CREATE OR REPLACE TABLE `laboratoria-projeto-3-462014.projeto3.base_credito_final` AS
WITH base_quartil_dependents AS (
  SELECT *,
    NTILE(4) OVER (ORDER BY number_dependents DESC) AS faixa_dependentes
  FROM `laboratoria-projeto-3-462014.projeto3.base_credito_final`
),
base_com_score_dependents AS (
  SELECT *,
    CASE
      WHEN faixa_dependentes = 1 THEN 4  -- Mais dependentes (maior risco)
      WHEN faixa_dependentes = 4 THEN 3
      WHEN faixa_dependentes = 3 THEN 2
      ELSE 1                             -- Menos dependentes (menor risco)
    END AS score_dependents
  FROM base_quartil_dependents
)
SELECT * FROM base_com_score_dependents;
