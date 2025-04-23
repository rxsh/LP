num :: Int -> String
num x | x `mod` 2 == 0 = "Es Par" | otherwise = "Es Impar"

main :: IO()
main = do
    print(num 10)
    print(num 22)
    print(num 21)
    print(num 33)


-- num :: Int -> String
-- num x | x == 0 = "Es Par" | x == 1 = "Es Impar" | x > 0 = num(x-2) | otherwise = num(x+2)