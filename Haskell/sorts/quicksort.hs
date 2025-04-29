quicksort :: Ord a => [a] -> [a]
quicksort [] = []
quicksort (x:xs) =
    quicksort menores ++ [x] ++ quicksort mayores
    where
        menores = filter (< x) xs
        mayores = filter (>= x) xs