data NestedList a = Elem a | List [NestedList a]

-- myFlatten (a (b (c d) e)) = (A B C D E)
myFlatten :: NestedList a -> [a]
myFlatten (Elem a) = [a]
myFlatten (List []) = []
myFlatten (List ((List x):xs)) = myFlatten (List (x ++ xs))
myFlatten (List ((Elem x):xs)) = x:myFlatten (List xs)
