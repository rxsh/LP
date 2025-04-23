suma :: [Int] -> Int
suma lista = sum (map (^2) (filter even lista))

main :: IO()
main = do
    let nums = [1,2,3,4,5]
    putStrLn $ "Lista principal: " ++ show nums
    putStrLn $ "Suma el cuadrado de los pares de la lista: " ++ show (suma nums)