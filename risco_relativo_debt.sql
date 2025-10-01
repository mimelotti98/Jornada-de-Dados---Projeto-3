WITH base_quartil_divida AS (
  SELECT *,
    NTILE(4) OVER (ORDER BY debt_ratio) AS faixa_divida
  FROM `laboratoria-projeto-3-462014.projeto3.base_credito_final`
)

,inadimplencia_divida AS (
  SELECT
    faixa_divida,
    COUNT(*) AS total_clientes,
    SUM(default_flag) AS inadimplentes,
    SAFE_DIVIDE(SUM(default_flag), COUNT(*)) AS taxa_inadimplencia
  FROM base_quartil_divida
  GROUP BY faixa_divida
)
SELECT
  *,
  SAFE_DIVIDE(taxa_inadimplencia, MAX(taxa_inadimplencia) OVER()) AS risco_relativo
FROM inadimplencia_divida
ORDER BY faixa_divida;
