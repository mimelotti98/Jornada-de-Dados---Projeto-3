CREATE OR REPLACE TABLE `laboratoria-projeto-3-462014.projeto3.base_credito_final` AS
SELECT *,
  (
    score_idade +
    score_salario +
    score_divida +
    score_dependents+
    score_qtd_emprestimos +
    score_atraso_30_59
  ) AS score_final
FROM `laboratoria-projeto-3-462014.projeto3.base_credito_final`;
