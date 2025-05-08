circle :: Double -> Double
circle x = pi * x^2

main :: IO()
main = do
    print(circle 5)
    print(circle 10)