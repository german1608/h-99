slice :: [a] -> Int -> Int -> [a]
slice l i k = x
  where l1 = take k l
        x = drop (i-1) l1
