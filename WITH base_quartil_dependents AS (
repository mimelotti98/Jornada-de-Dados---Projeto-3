WITH base_quartil_dependents AS (
  SELECT *,
    NTILE(4) OVER (ORDER BY number_dependents) AS faixa_dependentes
  FROM `laboratoria-projeto-3-462014.projeto3.base_credito_final`
)
, inadimplencia_dependents AS (
  SELECT
    faixa_dependentes,
    COUNT(*) AS total_clientes,
    SUM(default_flag) AS inadimplentes,
    SAFE_DIVIDE(SUM(default_flag), COUNT(*)) AS taxa_inadimplencia
  FROM base_quartil_dependents
  GROUP BY faixa_dependentes
)
SELECT
  *,
  SAFE_DIVIDE(taxa_inadimplencia, MAX(taxa_inadimplencia) OVER()) AS risco_relativo
FROM inadimplencia_dependents
ORDER BY faixa_dependentes;
