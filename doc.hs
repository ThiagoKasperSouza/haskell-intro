inc :: Integer -> Integer

inc n = n+1

main :: IO()
main = do   
    -- Exemplo de recursão?
    putStrLn(show(inc(inc 3)))