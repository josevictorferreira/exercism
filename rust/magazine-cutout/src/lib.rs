// This stub file contains items that aren't used yet; feel free to remove this module attribute
// to enable stricter warnings.
#![allow(unused)]

use std::collections::HashMap;

pub fn can_construct_note(magazine: &[&str], note: &[&str]) -> bool {
    let mut words = HashMap::new();
    for word in magazine {
        let value = words.entry(word).or_insert(0);
        *value += 1;
    }

    for word in note {
        let value = words.entry(word).or_insert(0);
        if *value == 0 {
            return false;
        }
        *value -= 1;
    }

    true
}
