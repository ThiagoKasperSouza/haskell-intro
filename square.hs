-- ESCOPO GLOBAL

-- Explicitar tipos do parametro e retorno
square :: Integer -> Integer
-- Explicitar calculo
square x = x*x

main :: IO()

main = do
    putStrLn "Digite o número: "
    -- Jeito de fazer um input
    i <- getLine
    -- converter String para int
    let n = read i :: Integer
    putStrLn(show(square n)) 