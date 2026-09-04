-- Soma os 3 valores e divide pela quantidade
calculateAverage :: Float -> Float -> Float -> Float
calculateAverage a b c = (a+b+c)/3

-- Checa com base nas notas de corte
hasPassed :: Bool -> String

hasPassed True = "Approved"
hasPassed False = "Exam"

coffeeType :: String -> String

coffeeType "Expresso" = "Making coffee 1"
coffeeType "Capuccino" = "Making coffee 2"
coffee _ = "Invalid coffee type"

main:: IO()
main = do
    let averageForApproval = 6.0
    putStrLn (hasPassed ((calculateAverage 7.0 5.0  6.5) >=averageForApproval))
    putStrLn (hasPassed ((calculateAverage 5.0 2.0 3.0) >=averageForApproval))

    putStrLn coffeeType "Expresso"
    putStrLn coffeeType "Capuccino"
    putStrLn coffeeType "Bread"
