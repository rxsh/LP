reduce f p = foldr f p

main = do
    print $ reduce (+) 0 [1,2,3,4]
    print $ reduce (+) 1 [1,2,3,4]
    print $ reduce (*) 2 [1,2,3,4]