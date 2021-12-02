suma :: Num a => a -> a -> a
suma x y = x + y

ejemploif a = (if a > 5 then a else a * 3) + 1

peresoza :: p1 -> p2 -> p1
peresoza a b = a

cuadrado :: Integer -> Integer
cuadrado a = a * a

numeromayor :: Integer -> Integer -> Integer -> Integer
numeromayor a b c = (if a > b && a > c then a else if b > c then b else c)

diferentes ::  Integer -> Integer -> Integer -> Bool
diferentes a b c = if (a == b || b == c) then False else True


main :: IO ()
main = do
    --print (suma 4 5)
    --putStrLn "Resultado:"
    --print (ejemploif 6)
    --input1 <- getLine
    --print input1
    --let x = read input1 :: Integer
    print(diferentes (5) (5) (3))