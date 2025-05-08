mergeSort :: Ord a => [a] -> [a]
mergeSort [] = []
mergeSort [x] = [x]
mergeSort xs = merge(mergesort ys) (mergesort zs)
    where 
        (ys,zs) = splitAt(length xs 'div' 2)xs
        merge [] ys = ys
        merge xs [] = xs
        merge (x:xs) (y:ys)
            | x <= y = x : merge xs (y:ys)
            | otherwise = y: merge (x:xs) ys