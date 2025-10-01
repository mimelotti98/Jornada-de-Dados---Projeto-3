-- Etapa 1: Criar quartis para idade e associar à variável de inadimplência
WITH base AS (
  SELECT 
    user_id,
    age,
    default_flag,
    NTILE(4) OVER (ORDER BY age) AS faixa_idade
  FROM `laboratoria-projeto-3-462014.projeto3.base_credito_final`
),

-- Etapa 2: Calcular taxa de inadimplência por faixa de idade
estatisticas AS (
  SELECT 
    faixa_idade,
    COUNT(*) AS total_clientes,
    SUM(default_flag) AS inadimplentes,
    SAFE_DIVIDE(SUM(default_flag), COUNT(*)) AS taxa_inadimplencia
  FROM base
  GROUP BY faixa_idade
),

-- Etapa 3: Calcular o risco relativo com base na menor taxa de inadimplência
risco_relativo_idade AS (
  SELECT 
    faixa_idade,
    total_clientes,
    inadimplentes,
    ROUND(taxa_inadimplencia, 4) AS taxa_inadimplencia,
    ROUND(
      SAFE_DIVIDE(
        taxa_inadimplencia,
        (SELECT MIN(taxa_inadimplencia) FROM estatisticas WHERE taxa_inadimplencia > 0)
      ), 2
    ) AS risco_relativo
  FROM estatisticas
)

-- Resultado final
SELECT * FROM risco_relativo_idade
ORDER BY faixa_idade;
