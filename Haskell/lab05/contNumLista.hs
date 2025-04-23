contNum :: Int -> [Int] -> Int
contNum num = foldr (\y cont -> if y == num then cont+1 else cont) 0

main :: IO()
main = do
    let lista = [1,2,3,4,5,3,2,8,9,8,7,1]
    putStrLn $ "Lista original: " ++ show lista
    n <- readLn
    putStrLn $ "El numero " ++ show n ++ " aparece: " ++ show (contNum n lista) ++ " veces" 