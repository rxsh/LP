fact :: Int -> Int
fact n = foldr(*) 1 [1..n]

main :: IO()
main = do
    putStrLn "Digite un número para calcular su factorial:"
    n <- readLn
    putStrLn $ "El factorial de " ++ show n ++ " es: " ++ show (fact n) 