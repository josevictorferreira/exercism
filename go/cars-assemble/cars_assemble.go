package cars

// CalculateWorkingCarsPerHour calculates how many working cars are
// produced by the assembly line every hour
func CalculateWorkingCarsPerHour(productionRate int, successRate float64) float64 {
  return float64(productionRate) * (successRate * 0.01)
}

// CalculateWorkingCarsPerMinute calculates how many working cars are
// produced by the assembly line every minute
func CalculateWorkingCarsPerMinute(productionRate int, successRate float64) int {
  return int(CalculateWorkingCarsPerHour(productionRate, successRate) / 60.0)
}

// CalculateCost works out the cost of producing the given number of cars
func CalculateCost(carsCount int) uint {
  var carGroups int = int(float64(carsCount) / 10);
  var remCars int = int(carsCount % 10);
  return uint((carGroups * 95000) + (remCars * 10000))
}
