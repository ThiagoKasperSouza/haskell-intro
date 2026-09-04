-- Soma os 3 valores e divide pela quantidade
calculaMedia :: Float -> Float -> Float -> Float
calculaMedia a b c = (a+b+c)/3

-- Checa com base nas notas de corte
passouNaMateria :: Bool -> String

passouNaMateria True = "Aprovado"
passouNaMateria False = "Recuperação"

main:: IO()
main = do
    let notaCorte = 6.0
    putStrLn (passouNaMateria ((calculaMedia 7.0 5.0  6.5) >=notaCorte))
    putStrLn (passouNaMateria ((calculaMedia 5.0 2.0 3.0) >=notaCorte))
