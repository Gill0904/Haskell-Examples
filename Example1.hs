{-# OPTIONS_GHC -Wno-incomplete-patterns #-}

bni :: Float -> Float -> String 
bni peso altura
    |   bni <= 18.5 = "Te falta peso"
    |   bni <= normal = "Correcto"
    |   bni <= preobeso = "Preobeso"
    |   bni <= obeso = "Obeso"
    where bni = peso / altura ^ 2
          normal = 25.0
          preobeso = 30.0
          obeso = 35

suma :: Integer -> Integer -> Integer
suma x y = x + y
main :: IO ()
main = do
    print (suma 4 3)
    print (bni 89.0 1.90)