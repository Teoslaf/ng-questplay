// Rule: No changing function signatures!

fn combine_water(volume_1: u32, volume_2: u128) -> u64 {
    let mut x: u64 = volume_1.into();
    let mut y: u64 = volume_2.try_into().unwrap();
    x + y
}

fn is_prime(volume: u256) -> bool {
    if volume <= 1 {
        return false;
    }
    if volume == 2 {
        return true;
    }     if volume % 2 == 0 {
        return false;
    }
    true
}
