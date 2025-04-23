listita :: Int -> [Int] -> Bool
listita _ [] = False
listita x (y:o) | x == y = True | otherwise = listita x o

main :: IO()
main = do
    print $ listita 2 [10,2,50,4]
    print $ listita 50 [10,2,50,4]
    print $ listita 9 [10,2,50,4]
