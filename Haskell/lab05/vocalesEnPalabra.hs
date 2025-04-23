palabra :: String -> String
palabra vocales = filter (`elem` "aeiouAEIOU") vocales

main :: IO()
main = do
    putStrLn "Digite una palabra:"
    vocales <- getLine
    putStrLn $ "Vocales en la palabra: " ++ palabra vocales

