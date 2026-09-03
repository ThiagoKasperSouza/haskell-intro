ctf :: Float -> Float
ftc :: Float -> Float

menu :: String -> IO()
menu opt = case opt of
    "1" -> askCtf
    "2" -> askFtc
    _ -> putStrLn"Opção Inválida!"

ctf x = (x*9.0/5.0) +32
ftc x= (x-32.0) * 5.0/9.0 

askCtf :: IO()
askCtf = do
    putStrLn "Digite uma temp em Celsius: "
    i <- getLine
    let n = read i :: Float
    putStrLn $ "Resultado em Fahrenheit: " ++ show (ctf n)

askFtc :: IO()
askFtc = do
    putStrLn "Digite uma temp em Farenheit: "
    i <- getLine
    let n = read i :: Float
    putStrLn $ "Resultado em Celsius: " ++ show (ftc n)

main :: IO()
main =do
    putStrLn "1 - Celsius para Fahrenheit"
    putStrLn "2 - Fahrenheit para Celsius"
    putStrLn "Escolha uma opção: "

    -- Captura o texto digitado pelo usuário
    input <- getLine 

    -- Passa a String capturada para a função e imprime o resultado
    menu input