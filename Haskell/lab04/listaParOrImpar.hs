listita :: Int -> [Int] -> [Int]
listita choice n
    | choice == 1 = filter (\x -> x `mod` 2 == 0) n
    | choice == 2 = filter (\x -> x `mod` 2 /= 0) n
    | otherwise = error "error"

main :: IO()
main = do
    print( listita 1 [1,2,3,4,5])
    print( listita 2 [9,8,7,6,5])