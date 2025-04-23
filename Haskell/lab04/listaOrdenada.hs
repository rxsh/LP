order :: [Int] -> Bool
order [] = True
order[x] = True
order (x:y:o) = x <= y && order(y:o)

main :: IO()
main = do
    print( order([1,2,3,4,5,6] ))
    print( order([1,2,3,9,5,6] ))
    print( order([6,5,4,3,2,1] ))
