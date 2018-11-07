dropEvery :: [a] -> Int -> [a]
dropEvery [] _ = []
dropEvery l x = y ++ z
  where y' = take x l
        y = if length y' == x then init y' else y'
        z = dropEvery (drop x l) x
