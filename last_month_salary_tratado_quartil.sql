SELECT 
  MIN(last_month_salary_tratado) AS last_month_salary_tratado,
  MAX(last_month_salary_tratado) AS last_month_salary_tratado,
  APPROX_QUANTILES(last_month_salary_tratado, 4) AS quartis
FROM `laboratoria-projeto-3-462014.projeto3.user_info_tratado`;
