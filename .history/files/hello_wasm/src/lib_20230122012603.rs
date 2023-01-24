use wasm_bindgen::prelude::*;

#[wasm_bindgen]
pub fn greet() -> String {
    "Hello, World!".to_string()
}

#[wasm_bindgen]
pub fn poem() -> String {
    "Roses are red, Violets are blue, Sugar is sweet, And so are you.".to_string()
}
