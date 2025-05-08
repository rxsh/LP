quicksort :: Ord a => [a] -> [a]
quicksort [] = []
quicksort (x:xs) =
    quicksort menores ++ [x] ++ quicksort mayores
    where
        menores = filter (< x) xs
        mayores = filter (>= x) xs


main :: IO()
main = do 
    print(quicksort [1,9,6,7,3,2,12,15])