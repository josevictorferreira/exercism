// This stub file contains items that aren't used yet; feel free to remove this module attribute
// to enable stricter warnings.
#![allow(unused)]

pub struct Player {
    pub health: u32,
    pub mana: Option<u32>,
    pub level: u32,
}

impl Player {
    pub fn revive(&self) -> Option<Player> {
        if self.health > 0 {
            None
        } else {
            if self.level >= 10 {
                Some(Player {
                    mana: Some(100),
                    health: 100,
                    level: self.level,
                })
            } else {
                Some(Player {
                    mana: None,
                    health: 100,
                    level: self.level,
                })
            }
        }
    }

    pub fn cast_spell(&mut self, mana_cost: u32) -> u32 {
        match self.mana {
            Some(mana) => {
                if mana_cost > mana {
                    0
                } else {
                    if (mana - mana_cost) <= 0 {
                        self.mana = None
                    } else {
                        self.mana = Some(mana - mana_cost);
                    }
                    mana_cost * 2
                }
            }
            _ => {
                if self.health > mana_cost {
                    self.health -= mana_cost;
                } else {
                    self.health = 0
                }
                0
            }
        }
    }
}
