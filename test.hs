import Data.Char(isDigit,digitToInt)

evaluate :: String -> Bool
-- (n1 : '?' : '?' : '?' : n2 : rest) Monta a estrutura
-- evaluate('?' : '?' : '?' : n2 : rest) Pares sobrepostos
evaluate (n1 : '?' : '?' : '?' : n2 : rest)| isDigit n1 && isDigit n2 = (digitToInt n1 + digitToInt n2 == 10) || evaluate('?' : '?' : '?' : n2 : rest)
-- Recursão
evaluate (_ : xs) = evaluate xs
-- Tratamento 
evaluate [] = False

main :: IO()

main = do
    putStrLn "Digite a string para avaliar: "
    input <- getLine
    print (evaluate input)