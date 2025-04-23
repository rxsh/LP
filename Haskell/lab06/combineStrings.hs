combine :: [a] -> [a] -> [a]
combine [] y = y
combine x [] = x
combine (cadenaX:x) (cadenaY:y) = cadenaX : cadenaY : combine x y

main :: IO()
main = do
    print(combine "probando" "123")
    print(combine "abcdefg" "7654321")