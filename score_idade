CREATE OR REPLACE TABLE `laboratoria-projeto-3-462014.projeto3.base_credito_final` AS
WITH idade_com_score AS (
  SELECT 
    *,
    NTILE(4) OVER (ORDER BY age) AS faixa_idade
  FROM `laboratoria-projeto-3-462014.projeto3.base_credito_final`
),
base_com_score_idade AS (
  SELECT 
    *,
    CASE 
      WHEN faixa_idade = 1 THEN 4
      WHEN faixa_idade = 2 THEN 3
      WHEN faixa_idade = 3 THEN 2
      ELSE 1
    END AS score_idade
  FROM idade_com_score
)
SELECT * EXCEPT(faixa_idade)
FROM base_com_score_idade;
