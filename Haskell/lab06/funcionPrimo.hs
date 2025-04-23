primo :: Int -> Bool
primo n 
 | n <= 1 = False 
 | n == 2 = True 
 | otherwise = not (divisores n 2)
 where
  divisores num divisor
   | divisor * divisor > num = False
   | num `mod` divisor == 0 = True
   | otherwise = divisores num (divisor + 1)  

primosFunc :: Int -> [Int]
primosFunc n = filtrarPrimos 1 n []
 where
  filtrarPrimos current limit listPrimos
   | current > limit = reverse listPrimos
   | primo current || current == 1 = filtrarPrimos (current + 1) limit (current : listPrimos)
   | otherwise = filtrarPrimos (current + 1) limit listPrimos

main :: IO()
main = do
  print(primosFunc 5)

