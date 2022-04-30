#[derive(Debug)]
pub enum CalculatorInput {
    Add,
    Subtract,
    Multiply,
    Divide,
    Value(i32),
}

pub fn evaluate(inputs: &[CalculatorInput]) -> Option<i32> {
    let mut stack: Vec<i32> = Vec::new();

    for input in inputs {
        match input {
            CalculatorInput::Value(num) => stack.push(*num),
            _ => {
                if stack.len() < 2 {
                    return None;
                }

                let a: i32 = stack.pop().unwrap();
                let b: i32 = stack.pop().unwrap();

                match input {
                    CalculatorInput::Add => stack.push(b + a),
                    CalculatorInput::Subtract => stack.push(b - a),
                    CalculatorInput::Multiply => stack.push(b * a),
                    CalculatorInput::Divide => stack.push(b / a),
                    _ => return None,
                }
            }
        }
    }

    if stack.len() != 1 {
        return None;
    }

    return stack.pop()
}
