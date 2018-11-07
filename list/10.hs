pack :: Eq a => [a] -> [[a]]
pack [] = []
pack [a] = [[a]]
pack xs@(x:_) = y:pack z
  where y = takeWhile (==x) xs
        z = drop (length y) xs

encode :: Eq a => [a] -> [(Int, a)]
encode = map (\x@(a:_) -> (length x, a)) . pack
