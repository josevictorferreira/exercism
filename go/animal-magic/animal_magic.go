package chance

import "math/rand"
import "time"

// SeedWithTime seeds math/rand with the current computer time.
func SeedWithTime() {
  rand.Seed(time.Now().UnixNano());
}

// RollADie returns a random int d with 1 <= d <= 20.
func RollADie() int {
  SeedWithTime();
  return rand.Intn(19) + 1
}

// GenerateWandEnergy returns a random float64 f with 0.0 <= f < 12.0.
func GenerateWandEnergy() float64 {
  SeedWithTime();
  return rand.Float64() + float64(rand.Intn(11) + 1)
}

// ShuffleAnimals returns a slice with all eight animal strings in random order.
func ShuffleAnimals() []string {
  animals := []string{"ant", "beaver", "cat", "dog", "elephant", "fox", "giraffe", "hedgehog"};

  SeedWithTime();
  rand.Shuffle(len(animals), func(i, j int) {
    animals[i], animals[j] = animals[j], animals[i]
  });
  return animals
}
