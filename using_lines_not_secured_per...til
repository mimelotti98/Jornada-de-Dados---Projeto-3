SELECT 
  MIN(using_lines_not_secured_personal_assets) AS min,
  MAX(using_lines_not_secured_personal_assets) AS max,
  APPROX_QUANTILES(using_lines_not_secured_personal_assets, 4) AS quartis
FROM `laboratoria-projeto-3-462014.projeto3.loans_detail`;
