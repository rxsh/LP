menorde3 :: Int -> Int -> Int -> Int
menorde3 x y z | x<=y && x<=z = x | y<=x && y<=z = y | otherwise = z

main :: IO()
main = do
    print(menorde3 12 (-9) 7)

    

