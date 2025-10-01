CREATE OR REPLACE TABLE `laboratoria-projeto-3-462014.projeto3.base_credito_final` AS
SELECT *,
  CASE
    WHEN score_final <= 12 THEN 1
    ELSE 0
  END AS pred_default
FROM `laboratoria-projeto-3-462014.projeto3.base_credito_final`;
