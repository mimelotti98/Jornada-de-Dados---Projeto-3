SELECT 
  MIN(more_90_days_overdue) AS min,
  MAX(more_90_days_overdue) AS max,
  APPROX_QUANTILES(more_90_days_overdue, 4) AS quartis
FROM `laboratoria-projeto-3-462014.projeto3.loans_detail`;
