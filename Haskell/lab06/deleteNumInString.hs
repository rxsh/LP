esChar :: Char -> Bool
esChar c = c >= '0' && c <= '9'

eliminar :: String -> String
eliminar = filter (not . esChar)

main :: IO()
main = do
    print(eliminar "abracada12bra5")
