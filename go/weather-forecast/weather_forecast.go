// Package weather for managing Weather Forecast.
package weather

// CurrentCondition variable for the current condition of the weather.
var CurrentCondition string
// CurrentLocation variable for the location of the weather.
var CurrentLocation string

// Forecast shows the current forecast for the given city and condition.
func Forecast(city, condition string) string {
	CurrentLocation, CurrentCondition = city, condition
	return CurrentLocation + " - current weather condition: " + CurrentCondition
}
