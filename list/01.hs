myLast :: [x] -> x
myLast [] = error "empty list"
myLast [x] = x
myLast (_:x) = myLast x

