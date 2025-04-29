selectionsort :: Ord a => [a] -> [a]
selectionsort [] = []
selectionsort xs = mínimo : selectionsort (delete mínimo xs)
    where
        mínimo = minimum xs