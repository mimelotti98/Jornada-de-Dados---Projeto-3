SELECT 
  CORR(age, last_month_salary_tratado) AS corr_idade_salario,
  CORR(age, debt_ratio) AS corr_idade_divida,
  CORR(last_month_salary_tratado, debt_ratio) AS corr_salario_divida,
  CORR(number_dependents, debt_ratio) AS corr_dep_dividas,
  CORR(qtd_emprestimos, default_flag) AS corr_quantimpre_ina
FROM `laboratoria-projeto-3-462014.projeto3.base_credito_final`
WHERE age IS NOT NULL AND last_month_salary_tratado IS NOT NULL AND debt_ratio IS NOT NULL;
