SELECT *,
CASE 
  WHEN more_90_days_overdue > 2 OR debt_ratio > 500 THEN 1
  ELSE 0
END AS is_high_risk_behavior
 FROM `laboratoria-projeto-3-462014.projeto3.loans_detail_tratado`
