WITH base_salario AS (
  SELECT *,
    NTILE(4) OVER (ORDER BY last_month_salary_tratado) AS faixa_salario
  FROM `laboratoria-projeto-3-462014.projeto3.base_credito_final`
),
tabela_inadimplencia AS (
  SELECT 
    faixa_salario,
    COUNT(*) AS total_clientes,
    SUM(default_flag) AS inadimplentes,
    ROUND(SUM(default_flag) / COUNT(*), 4) AS taxa_inadimplencia
  FROM base_salario
  GROUP BY faixa_salario
),
base_com_risco_relativo AS (
  SELECT *, 
    ROUND(taxa_inadimplencia / MIN(taxa_inadimplencia) OVER (), 2) AS risco_relativo
  FROM tabela_inadimplencia
)
SELECT * FROM base_com_risco_relativo
ORDER BY faixa_salario;
