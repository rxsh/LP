reduce :: (a -> b -> b) -> b -> [a] -> b
reduce _ p [] = p
reduce f p (x:z) = f x (reduce f p z)

main :: IO()
main = do
    print(reduce (+) 0 [1, 2, 3, 4])
    print(reduce (+) 1 [1, 2, 3, 4])
    print(reduce (*) 2 [1, 2, 3, 4])