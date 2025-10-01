SELECT 
  user_id,
  COUNT(*) AS qtd_emprestimos
FROM `laboratoria-projeto-3-462014.projeto3.loan_outstanding_tratado`
GROUP BY user_id
