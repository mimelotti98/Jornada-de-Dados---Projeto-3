CREATE OR REPLACE TABLE `laboratoria-projeto-3-462014.projeto3.base_credito_final` AS
WITH base_com_score AS (
  SELECT *,
    CASE
      WHEN debt_ratio <= 19079 THEN 3      -- Faixa 1
      WHEN debt_ratio <= 311745 THEN 4     -- Faixa 2 (maior inadimplência)
      WHEN debt_ratio <= 5426945 THEN 1    -- Faixa 3
      ELSE 2                               -- Faixa 4
    END AS score_divida
  FROM `laboratoria-projeto-3-462014.projeto3.base_credito_final`
)

SELECT * FROM base_com_score;
