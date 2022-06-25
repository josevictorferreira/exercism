use core::fmt;

#[derive(Debug, PartialEq)]
pub struct Clock {
    hours: i32,
    minutes: i32,
}

impl Clock {
    pub fn new(hours: i32, minutes: i32) -> Self {
        let temp_hours: i32 = (hours * 60) + minutes;
        let mod_minutes: i32 = temp_hours.rem_euclid(60);
        let mod_hours: i32 = temp_hours.rem_euclid(1440) / 60;
        Clock {
            hours: mod_hours,
            minutes: mod_minutes,
        }
    }

    pub fn add_minutes(&self, minutes: i32) -> Self {
        Clock::new(self.hours, self.minutes + minutes)
    }
}

impl fmt::Display for Clock {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        write!(f, "{:0>2}:{:0>2}", self.hours, self.minutes)
    }
}
