import gleam/int
import gleam/float
import gleam/string

pub fn pence_to_pounds(pence: Int) -> Float {
  int.to_float(pence) *. 0.01
}

pub fn pounds_to_string(pounds: Float) -> String {
  string.concat(["£", float.to_string(pounds)])
}
