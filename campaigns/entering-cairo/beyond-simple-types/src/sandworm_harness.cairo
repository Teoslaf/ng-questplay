fn untangle_harness(mut ropes: Array<u256>, knot: u256) -> Array<u256> {
    let mut sum = 0;
    loop {
        if ropes.len() == 0 || *ropes[0] == knot {
            break;
        }

        sum += ropes.pop_front().unwrap();
    };
    ropes.append(sum);

    ropes
}
