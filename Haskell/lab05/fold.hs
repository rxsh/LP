fldR :: Int
fldR = foldr (+) 0 [1,2,3,4]

fldL :: Int
fldL = foldl (-) 0 [1,2,3]

main ::IO()
main = do
    print fldR
    print fldL