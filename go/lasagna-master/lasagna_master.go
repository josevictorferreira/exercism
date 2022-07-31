package lasagna

// TODO: define the 'PreparationTime()' function
func PreparationTime(layers []string, avgTime int) (avg int) {
  if avgTime == 0 {
    avg = len(layers) * 2
    return
  }
  avg = len(layers) * avgTime;
  return
}

// TODO: define the 'Quantities()' function
func Quantities(layers []string) (noodles int, sauce float64) {
  for i := 0; i < len(layers); i++ {
    if layers[i] == "sauce" {
      sauce += 0.2
    } else if layers[i] == "noodles" {
      noodles += 50
    }
  }
  return
}

// TODO: define the 'AddSecretIngredient()' function
func AddSecretIngredient(friendsList, myList []string) []string {
  myList[len(myList) - 1] = friendsList[len(friendsList) - 1]
  return myList
}

// TODO: define the 'ScaleRecipe()' function
func ScaleRecipe(amounts []float64, nPortions int) []float64 {
  sizeAmount := len(amounts)
  amountsNeeded := make([]float64, len(amounts))
  for i := 0; i < sizeAmount; i++ {
    amountsNeeded[i] = (amounts[i] / 2) * float64(nPortions);
  }
  return amountsNeeded
}
