fn ration_food(n: u32) -> u128 {
    // First check if we skip eating (every 4th day)
    if n % 5 == 4 {
        return 0;
    }

    // Handle base cases
    if n == 1 || n == 2 {
        return 1;
    }
    let mut i = 0;
    let mut a = 0;
    let mut b = 1;

    while i < n {
        let temp = a;
        a = b;
        b = temp + b;
        i += 1;
    };

    return a;
}
