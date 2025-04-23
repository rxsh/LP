sumarDigitos :: Int -> Int
sumarDigitos n = foldl (+) 0 (map (\c -> read [c]) (show n))

main :: IO ()
main = do
    putStrLn "Digite un número para sumar sus dígitos:"
    num <- readLn
    putStrLn $ "Suma de dígitos: " ++ show (sumarDigitos num)