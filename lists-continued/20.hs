removeAt :: Int -> [a] -> [a]
removeAt i ls = (take (i-1) ls) ++ drop i ls

removeAt' :: Int -> [a] -> (a, [a])
removeAt' i ls = (ls !! (i-1), removeAt i ls)
