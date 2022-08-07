package gross

// Units stores the Gross Store unit measurements.
func Units() map[string]int {
	return map[string]int{"quarter_of_a_dozen": 3, "half_of_a_dozen": 6, "dozen": 12, "small_gross": 120, "gross": 144, "great_gross": 1728}
}

// NewBill creates a new bill.
func NewBill() map[string]int {
  return map[string]int{}
}

// AddItem adds an item to customer bill.
func AddItem(bill, units map[string]int, item, unit string) bool {
  unitValue, exists := units[unit];
  if exists {
    billValue, billExists := bill[item];
    if billExists {
      bill[item] = billValue + unitValue;
    } else {
      bill[item] = unitValue;
    }
    return true
  }
  return false
}

// RemoveItem removes an item from customer bill.
func RemoveItem(bill, units map[string]int, item, unit string) bool {
  billValue, billExists := bill[item];
  unitValue, unitExists := units[unit];
  newValue := billValue - unitValue;
  if billExists && unitExists && (newValue >= 0) {
    if newValue == 0 {
      delete(bill, item);
    } else {
      bill[item] = newValue;
    }
    return true
  }
  return false
}

// GetItem returns the quantity of an item that the customer has in his/her bill.
func GetItem(bill map[string]int, item string) (int, bool) {
  billValue, billExists := bill[item];
  if billExists {
    return billValue, true
  }
  return 0, false
}
