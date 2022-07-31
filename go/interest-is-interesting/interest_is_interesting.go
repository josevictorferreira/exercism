package interest

// InterestRate returns the interest rate for the provided balance.
func InterestRate(balance float64) float32 {
  if balance < 0.0 {
    return float32(3.213)
  } else if balance < 1000.0 {
    return float32(0.5)
  } else if balance < 5000.0 {
    return float32(1.621)
  }
  return float32(2.475)
}

// Interest calculates the interest for the provided balance.
func Interest(balance float64) float64 {
  return (balance * float64(InterestRate(balance))) / 100
}

// AnnualBalanceUpdate calculates the annual balance update, taking into account the interest rate.
func AnnualBalanceUpdate(balance float64) float64 {
  return Interest(balance) + balance
}

// YearsBeforeDesiredBalance calculates the minimum number of years required to reach the desired balance.
func YearsBeforeDesiredBalance(balance, targetBalance float64) int {
  i := 0;
  for i = 0; balance <= targetBalance; i++ {
    balance = AnnualBalanceUpdate(balance);
  }
  return i
}
