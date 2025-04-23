listita :: [Int] -> [Int] -> [Int]
listita [] y = y
listita x [] = x
listita (k:x) (m:y) | k <= m = k : listita x (m:y) | otherwise = m : listita (k:x) y



main :: IO()
main = do
    print $ listita [1,2,3,4] [5,6,7,8]
