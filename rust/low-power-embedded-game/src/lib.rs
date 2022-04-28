// This stub file contains items that aren't used yet; feel free to remove this module attribute
// to enable stricter warnings.
#![allow(unused)]

pub fn divmod(dividend: i16, divisor: i16) -> (i16, i16) {
    let quotient: i16 = dividend / divisor;
    let remainder: i16 = dividend % divisor;
    (quotient, remainder)
}

pub fn evens<T>(iter: impl Iterator<Item = T>) -> impl Iterator<Item = T> {
    iter.step_by(2)
}

pub struct Position(pub i16, pub i16);
impl Position {
    pub fn manhattan(&self) -> i16 {
        let mut x: i16 = self.0;
        let mut y: i16 = self.1;
        if x < 0 {
            x = x * -1;
        }
        if y < 0 {
            y = y * -1;
        }
        x + y
    }
}
