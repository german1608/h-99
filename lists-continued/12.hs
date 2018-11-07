data MultipleOrSingle a = Single a | Multiple Int a
  deriving Show
decodeModified :: [MultipleOrSingle a] -> [a]
decodeModified = foldl (\acc x -> acc ++ flatten x) []
  where flatten x = (case x of
          Single a -> [a]
          Multiple y a -> take y $ repeat a)
