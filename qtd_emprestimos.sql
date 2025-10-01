CREATE OR REPLACE TABLE `laboratoria-projeto-3-462014.projeto3.loan_count_per_user` AS
SELECT 
  user_id,
  COUNT(*) AS qtd_emprestimos
FROM `laboratoria-projeto-3-462014.projeto3.loan_outstanding_tratado`
GROUP BY user_id;
