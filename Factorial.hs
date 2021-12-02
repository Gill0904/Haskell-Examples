{-# OPTIONS_GHC -Wno-incomplete-patterns #-}

factorial :: Int -> Int
factorial a
    | a == 0 = 1
    | a > 0 = a * factorial(a-1)

tupla :: Integer -> Integer -> (Integer, Integer)
tupla a b = (a, b)

main :: IO ()
main = do
    print( tupla 2 3)