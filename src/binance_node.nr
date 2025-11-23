
fn main() {
    let input: [u8; 12] = "Hello".as_bytes();
    let expected: [u8; 16] = "SGVsbG8gV29ybGQh".as_bytes();

    let result = base64_encode(input);
    assert(result == expected);

    let decoded = base64_decode(result);
    assert(input == decoded);
}
