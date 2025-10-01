SELECT 
  MIN(age) AS min_age,
  MAX(age) AS max_age,
  APPROX_QUANTILES(age, 4) AS quartis
FROM `laboratoria-projeto-3-462014.projeto3.user_info_tratado`;
