import Data.List

data Vendedor = Vendedor String [Float]

nombreVendedor:: Vendedor-> String
nombreVendedor(Vendedor nombre ventas) = nombre

ventasVendedor:: Vendedor-> [Float]
ventasVendedor(Vendedor nombre ventas ) = ventas

ordenar :: Ord a => [a] -> [a]
ordenar [] = []
ordenar xs = m : ordenar(delete m xs)
    where m = minimum xs

sumar :: [Float] -> Float
sumar [] = 0
sumar (x : xs) = x + sumar(xs)

promedio :: [Float] -> Float
promedio avg = sumar (avg) /fromIntegral( length(avg))

minimo :: [Float] -> Float
minimo ventas = head (ventas)

maximo :: [Float] -> Float
maximo ventas = last (ventas)

main :: IO()
main = do
    let vendedor1= Vendedor "Luis" [100.0,25.8,660.0]
    let ventas = ordenar (ventasVendedor vendedor1)
    print (nombreVendedor vendedor1)
    print (ventas)
    print (sumar (ventas))
    print (promedio (ventas))
    print (minimo (ventas))
    print (maximo (ventas))