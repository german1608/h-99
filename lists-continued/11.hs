pack :: Eq a => [a] -> [[a]]
pack [] = []
pack [a] = [[a]]
pack xs@(x:_) = y:pack z
  where y = takeWhile (==x) xs
        z = drop (length y) xs

data MultipleOrSingle a = Single a | Multiple Int a
  deriving Show

encodeModified :: Eq a => [a] -> [MultipleOrSingle a]
encodeModified = map (\x -> case x of
  [x] -> Single x
  _ -> Multiple (length x) (head x)) . pack
