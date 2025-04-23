filtrito :: [Int]
filtrito = filter even [1,2,3,4,5,6,7,8,9,10] -- Voy a buscar los valores pares 

filtrito2 :: [Int]
filtrito2 = filter odd [1,2,3,4,5,6,7,8,9,10] -- Voy a buscar los valores impares

main :: IO()
main = do
    print filtrito
    print filtrito2
