split :: [a] -> Int -> ([a], [a])
split l x = (take x l, drop x l)
