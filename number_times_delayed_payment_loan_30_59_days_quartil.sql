SELECT 
  MIN(number_times_delayed_payment_loan_30_59_days) AS min,
  MAX(number_times_delayed_payment_loan_30_59_days) AS max,
  -- COUNTIF(SAFE_CAST(number_times_delayed_payment_loan_30_59_days AS FLOAT64) > 17947) AS maior,
  APPROX_QUANTILES(number_times_delayed_payment_loan_30_59_days, 4) AS quartis
FROM `laboratoria-projeto-3-462014.projeto3.loans_detail`;
