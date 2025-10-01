CREATE OR REPLACE TABLE `laboratoria-projeto-3-462014.projeto3.base_credito_final` AS
WITH base_quartil_emprestimos AS (
  SELECT *,
    NTILE(4) OVER (ORDER BY qtd_emprestimos DESC) AS faixa_emprestimos
  FROM `laboratoria-projeto-3-462014.projeto3.base_credito_final`
),
base_com_score_emprestimos AS (
  SELECT *,
    CASE
      WHEN faixa_emprestimos = 1 THEN 4  -- Mais empréstimos (maior risco)
      WHEN faixa_emprestimos = 2 THEN 3
      WHEN faixa_emprestimos = 3 THEN 2
      ELSE 1                             -- Menos empréstimos (menor risco)
    END AS score_qtd_emprestimos
  FROM base_quartil_emprestimos
)
SELECT * FROM base_com_score_emprestimos;
