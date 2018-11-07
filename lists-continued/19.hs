rotate :: [a] -> Int -> [a]
rotate xs x = take l $ drop y $ cycle xs
  where l = length xs
        y = x `mod` l 
