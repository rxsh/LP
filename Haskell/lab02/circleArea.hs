circleArea :: Double -> Double
circleArea radio = pi * radio^2

main :: IO()

main = do
    print(circleArea 5)
    print(circleArea 15)