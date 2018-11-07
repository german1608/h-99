repli :: [a] -> Int -> [a]
repli [] _ = []
repli (x:xs) q = (take q $ repeat x) ++ repli xs q
