primo n | n < 2 = False
        | otherwise = all (\x -> n `mod` x /= 0) [2..floor (sqrt (fromIntegral n))]

primosFunc n = filter primo [1..n]


main :: IO()
main = do
      print $ primosFunc 15

