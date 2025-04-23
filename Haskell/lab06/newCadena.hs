move :: Int -> [a] -> [a]
move n p = drop m p ++ take m p
 where m = n `mod` length p


main :: IO()
main = do
    print(move 1 "asdfg")
    print(move 3 "asdfg")