bubblesort :: Ord a => [a] -> [a]
bubblesort [] = []
bubblesort xs = bubblesort' (length xs) xs

bubblesort' :: Ord a => Int -> [a] -> [a]
bubblesort' 0 xs = xs
bubblesort' n xs = bubblesort' (n-1) (bubble xs)

bubble :: Ord a => [a] -> [a]
bubble [x] = [x]
bubble (x:y:xs)
    | x > y     = y : bubble (x:xs)
    | otherwise = x : bubble (y:xs)

main :: IO()
main = do
    print(bubblesort [1,9,5,3,2,7,4])