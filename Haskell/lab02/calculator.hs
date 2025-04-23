calculator :: Char -> Double -> Double -> Double
calculator o x y =
    case o of
    '+' -> x+y 
    '-' -> x-y 
    'x' -> x*y 
    '/' -> x/y

main :: IO()
main = do
    putStrLn "Calculator (+,-,x,/)"
    putStrLn "Enter a operator and two numbers to operate"
    print(calculator '+' 10 20)
    print(calculator '-' 10 20)
    print(calculator 'x' 10 20)
    print(calculator '/' 10 20)