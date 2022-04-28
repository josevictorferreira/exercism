use int_enum::IntEnum;
use enum_iterator::IntoEnumIterator;

#[repr(usize)]
#[derive(Clone, Copy, Debug, Eq, PartialEq, IntEnum, IntoEnumIterator)]
pub enum ResistorColor {
    Black = 0,
    Brown = 1,
    Red = 2,
    Orange = 3,
    Yellow = 4,
    Green = 5,
    Blue = 6,
    Violet = 7,
    Grey = 8,
    White = 9,
}

pub fn color_to_value(_color: ResistorColor) -> usize {
    _color.int_value()
}

pub fn value_to_color_string(value: usize) -> String {
    if ResistorColor::from_int(value).is_err() {
        return "value out of range".to_string()
    }

    match ResistorColor::from_int(value).unwrap() {
        ResistorColor::Black => "Black".to_string(),
        ResistorColor::Brown => "Brown".to_string(),
        ResistorColor::Red => "Red".to_string(),
        ResistorColor::Orange => "Orange".to_string(),
        ResistorColor::Yellow => "Yellow".to_string(),
        ResistorColor::Green => "Green".to_string(),
        ResistorColor::Blue => "Blue".to_string(),
        ResistorColor::Violet => "Violet".to_string(),
        ResistorColor::Grey => "Grey".to_string(),
        ResistorColor::White => "White".to_string(),
    }
}

pub fn colors() -> Vec<ResistorColor> {
    let mut vec = Vec::new();

    for val in ResistorColor::into_enum_iter() {
        vec.push(val)
    }

    return vec
}
