myLast :: [x] -> x
myLast [] = error "empty list"
myLast [x, _] = x
myLast (_:x) = myLast x

