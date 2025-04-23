distance :: (Double, Double) -> (Double, Double) -> Double
distance (x1, y1) (x2, y2) = sqrt((x2-x1)^2 + (y2-y1)^2)

longitud_camino :: [(Double, Double)] -> Double
longitud_camino [] = 0
longitud_camino [_] = 0
longitud_camino (point1:point2:ps) = distance point1 point2 + longitud_camino (point2:ps)

main :: IO()

main = do
    print $ longitud_camino [(1,2),(4,6),(7,10)]
    