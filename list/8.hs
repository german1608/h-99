compress :: (Eq a) => [a] -> [a]
compress l = compress' l (head l)
  where compress' l y = case l of
          [] -> []
          [a] -> [a]
          (x:xs) -> if x == y then compress' xs x else y:compress' xs x 
