fn give_directions(mut directions: Array<felt252>) -> felt252 {
    // Track the highest count of any direction
    let mut max_count = 0;
    // Store the direction that appears most often
    let mut main_direction = 0;
    // Create a dictionary to store count of each direction
    let mut direction_count: Felt252Dict<u32> = Default::default();

    // Process each direction in the input array
    while directions.len() > 0 {
        // Get next direction from array
        let dir = directions.pop_front().unwrap();
        // Get current count for this direction (0 if not seen before)
        let old_count = direction_count.get(dir);
        // Increment the count
        let new_count = old_count + 1;

        // If this direction now has the highest count
        if new_count > max_count {
            max_count = new_count;
            main_direction = dir; // Remember this direction
        }

        // Update count in dictionary
        direction_count.insert(dir, new_count);
    };

    // Return the direction that appeared most often
    main_direction
}
