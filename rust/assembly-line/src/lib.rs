// This stub file contains items that aren't used yet; feel free to remove this module attribute
// to enable stricter warnings.
#![allow(unused)]

pub fn production_rate_per_hour(speed: u8) -> f64 {
    if speed < 5 {
        (speed as f64) * 221.00
    } else if speed < 9 {
        ((speed as f64) * 221.00) * 0.90
    } else {
        ((speed as f64) * 221.00) * 0.77
    }
}

pub fn working_items_per_minute(speed: u8) -> u32 {
    let value:f64 = production_rate_per_hour(speed);

    let result:f64 = value / 60.00;

    (result as u32)
}
