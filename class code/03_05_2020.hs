
-- Guardas

{-
    nomeFuncao x
     | guarda1 = exp1
     | guarda2 = exp2
     ...
     | guardaN = expN
-}

maxi :: Int -> Int -> Int
maxi x y
 | x >= y = x
 | x < y = y    -- otherwise = y

-- Prova de propriedades
addD :: Int -> Int -> Int
addD a b = 2 * (a + b)

-- Funcoes recursivas

vendas :: Int -> Int
vendas 0 = 5
vendas 1 = 6
vendas 2 = 9
vendas 3 = 2

totalVendas :: Int -> Int
totalVendas n
 | n == 0    = vendas 0
 | otherwise = vendas n + totalVendas (n - 1)

{-
    totalVendas 2
     = vendas 2 + totalVendas 1
     = vendas 2 + vendas 1 + totalVendas 0
     = vendas 2 + vendas 1 + vendas 0
     = 9 + 6 + 5
     = 20
-}

maximoVendas :: Int -> Int
maximoVendas n
 | n == 0    = vendas 0
 | otherwise = maxi (vendas n) (maximoVendas (n - 1))

 {-
    maximoVendas 2
    = maxi (vendas 2) (maximoVendas 1)
    = maxi (vendas 2) (maxi (vendas 1) (maximoVendas 0))
    = maxi (vendas 2) (maxi (vendas 1) (vendas 0))
    = maxi 9 (maxi 6 5)
    = maxi 9 6
    = 9
 -}

 -- Casamento de padrao (pattern matching)

totalVendasCP :: Int -> Int
totalVendasCP 0 = vendas 0
totalVendasCP n = vendas n + totalVendasCP (n - 1)

myAnd1 :: Bool -> Bool -> Bool
myAnd1 True True   = True
myAnd1 True False  = False
myAnd1 False True  = False
myAnd1 False False = False

myAnd2 :: Bool -> Bool -> Bool
myAnd2 True True = True
myAnd2 _    _    = False

myOr1 :: Bool -> Bool -> Bool
myOr1 True True   = True
myOr1 True False  = True
myOr1 False True  = True
myOr1 False False = False

myOr2 :: Bool -> Bool -> Bool
myOr2 True x  = True
myOr2 False x = x

myOr3 :: Bool -> Bool -> Bool
myOr3 True _  = True
myOr3 False x = x

quadrado :: Int -> Int
quadrado x = x * x
