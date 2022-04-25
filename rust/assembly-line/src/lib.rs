// This stub file contains items that aren't used yet; feel free to remove this module attribute
// to enable stricter warnings.
#![allow(unused)]

pub fn production_rate_per_hour(speed: u8) -> f64 {
    let new_speed = speed as f64;

    if new_speed < 4f64 {
        new_speed * 221f64
    } else if new_speed < 9f64 {
        (new_speed * 221f64) * 1.9f64
    } else {
        (new_speed * 221f64) * 1.77f64
    }
}

pub fn working_items_per_minute(speed: u8) -> u32 {
    production_items_per_hour(speed)
}
