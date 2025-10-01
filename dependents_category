SELECT *,
CASE
  WHEN number_dependents = 0 THEN 'Sem dependentes'
  WHEN number_dependents BETWEEN 1 AND 2 THEN 'Poucos dependentes'
  ELSE 'Muitos dependentes'
END AS dependents_category
 FROM `laboratoria-projeto-3-462014.projeto3.user_info_tratado_outlier_salario` 
