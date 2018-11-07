myLength :: [a] -> Integer
myLength [] = 0
myLength (_:x) = 1 + myLength x
