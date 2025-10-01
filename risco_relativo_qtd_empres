WITH base_quartil_emprestimos AS (
  SELECT *,
    NTILE(4) OVER (ORDER BY qtd_emprestimos) AS faixa_emprestimos
  FROM `laboratoria-projeto-3-462014.projeto3.base_credito_final`
)
, inadimplencia_emprestimos AS (
  SELECT
    faixa_emprestimos,
    COUNT(*) AS total_clientes,
    SUM(default_flag) AS inadimplentes,
    SAFE_DIVIDE(SUM(default_flag), COUNT(*)) AS taxa_inadimplencia
  FROM base_quartil_emprestimos
  GROUP BY faixa_emprestimos
)
SELECT
  *,
  SAFE_DIVIDE(taxa_inadimplencia, MAX(taxa_inadimplencia) OVER()) AS risco_relativo
FROM inadimplencia_emprestimos
ORDER BY faixa_emprestimos;
