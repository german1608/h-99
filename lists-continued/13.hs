data MultipleOrSingle a = Single a | Multiple Int a
  deriving Show


encodeDirect :: Eq a => [a] -> [MultipleOrSingle a]
encodeDirect [] = []
encodeDirect all@(x:_) = l:r
  where countX l@(y:xs) x acc = if x == y then countX xs x (acc+1) else acc
        countX [] _ acc = acc
        totx = countX all x 0
        l = if totx == 1 then Single x else Multiple totx x
        r = encodeDirect $ drop totx all
