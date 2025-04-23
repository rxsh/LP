palindromo :: String -> Bool
palindromo str = str == invertir str
  where
    invertir = foldr agregaAlFinal ""
    agregaAlFinal x acc = acc ++ [x]

main :: IO ()
main = do
    putStrLn "Ingrese una palabra:"
    palabra <- getLine
    putStrLn $ "¿Es palíndromo? " ++ show (palindromo palabra)