WITH base_quartil_atraso_30_59 AS (
  SELECT *,
    NTILE(4) OVER (ORDER BY number_times_delayed_payment_loan_30_59_days DESC) AS faixa_atraso_30_59
  FROM `laboratoria-projeto-3-462014.projeto3.base_credito_final`
)
, inadimplencia_atraso_30_59 AS (
  SELECT
    faixa_atraso_30_59,
    COUNT(*) AS total_clientes,
    SUM(default_flag) AS inadimplentes,
    SAFE_DIVIDE(SUM(default_flag), COUNT(*)) AS taxa_inadimplencia
  FROM base_quartil_atraso_30_59
  GROUP BY faixa_atraso_30_59
)
SELECT
  *,
  SAFE_DIVIDE(taxa_inadimplencia, MAX(taxa_inadimplencia) OVER()) AS risco_relativo
FROM inadimplencia_atraso_30_59
ORDER BY faixa_atraso_30_59;
