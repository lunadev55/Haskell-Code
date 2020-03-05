
-- fatorial
fat :: Int -> Int
fat n
 | n == 1 = 1
 | otherwise = n * fat (n - 1)

-- compara se 4 valores sao iguais
all4Equal :: Int -> Int -> Int -> Int -> Bool
all4Equal a b c d = (a == b) && (b == c) && (c == d)

-- retorna quantos numeros sao iguais
equalCount :: Int -> Int -> Int -> Int
equalCount a b c
 | (a == b) && (b == c) = 3
 | (a == b) || (b == c) || (a == c) = 2
 | otherwise = 0


-- ###################################################

{-
    Defina uma função que, dado um valor 
    inteiro s e um número de semanas n, 
    retorna quantas semanas de 0 a n tiveram vendas iguais a s.
-}

vendas :: Int -> Int
vendas 0 = 4
vendas 1 = 10
vendas 2 = 4
vendas 3 = 4
vendas 4 = 0
vendas 5 = 22
vendas 6 = 3
vendas 7 = 4

-- iguaisS (s , numero de semanas) -> quantas semanas = s
iguaisS :: Int -> Int -> Int
iguaisS s numS
 | numS == 0 = (if vendas 0 == s then 1 else 0)
 | otherwise = (if vendas numS == s then (1 + iguaisS s (numS-1)) else (iguaisS s (numS-1)))




