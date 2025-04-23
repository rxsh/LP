esPositivo :: Int -> String
esPositivo x | x < 0 = "Negativo" | x > 0 = "Positive" | otherwise = "Cero"

main :: IO()

main = do
    print(esPositivo 3)
    print(esPositivo (-14))
    print(esPositivo 6)