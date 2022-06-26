use int_enum::IntEnum;
use enum_iterator::IntoEnumIterator;

pub struct Allergies {
    current_allergies: Vec<Allergen>
}

#[repr(u32)]
#[derive(IntEnum, Copy, Clone, IntoEnumIterator, Debug, PartialEq)]
pub enum Allergen {
    Eggs = 1,
    Peanuts = 2,
    Shellfish = 4,
    Strawberries = 8,
    Tomatoes = 16,
    Chocolate = 32,
    Pollen = 64,
    Cats = 128,
}

impl Allergies {
    pub fn new(score: u32) -> Self {
        let filtered_allergen: Vec<Allergen> = Allergen::into_enum_iter().filter(|&a| score >= a.int_value()).collect();
        Allergies {
            score,
            current_allergies: filtered_allergen,
        }
    }

    pub fn is_allergic_to(&self, allergen: &Allergen) -> bool {
        for val in self.current_allergies.iter() {
            if val == allergen {
                return true;
            }
        }
        return false;
    }

    pub fn allergies(&self) -> Vec<Allergen> {
        self.current_allergies.clone()
    }
}
