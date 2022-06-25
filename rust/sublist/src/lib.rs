#[derive(Debug, PartialEq)]
pub enum Comparison { Equal,
    Sublist,
    Superlist,
    Unequal,
}

pub fn sublist<T: PartialEq>(_first_list: &[T], _second_list: &[T]) -> Comparison {
    match (_first_list.len(), _second_list.len()) {
        (0, 0) => Comparison::Equal,
        (0, _) => Comparison::Sublist,
        (_, 0) => Comparison::Superlist,
        (a, b) => {
            if a > b {
                if _first_list.windows(b).any(|v| v == _second_list) {
                    Comparison::Superlist
                } else {
                    Comparison::Unequal
                }
            } else if b > a {
                if _second_list.windows(a).any(|v| v == _first_list) {
                    Comparison::Sublist
                } else {
                    Comparison::Unequal
                }
            } else {
                if _first_list.windows(b).any(|v| v == _second_list) {
                    Comparison::Equal
                } else {
                    Comparison::Unequal
                }
            }
        }
    }
}
