module Practica5 where
import Aux
import Data.Char (toUpper)

{-
Función donde nos regresa una cadena de minúsculas a mayúsculas
usando recursión con listas
-}

hollerBack :: String -> String
hollerBack "" = ""
hollerBack (x:xs) = toUpper x : hollerBack xs

{-
Función que devuelve true o false dependiendo si la lista se ve
igual al revés
-}

palindromo :: Eq a => [a] -> Bool
palindromo [] = True
palindromo (x:xs) = if (reverse (x:xs)) == (x:xs) then True else False 

{-
Función que dado el primer numero entero da una lista de ese
número entero la cantidad de veces según el segundo número
-}

replica :: Int -> Int -> [Int]
replica _ 0 = []
replica n x = n : replica n (x-1)

{-
Función que da el elemento de una lista segun el indice
-}

recuperaElemento :: [Int] -> Int -> Int
recuperaElemento [] _ = error "no hay elementos en una lista vacía"
recuperaElemento (x:xs) n = if n <= 0 then x else if n > length (x:xs) then -1 else recuperaElemento xs (n-1)

{-
Función que pasa n veces el primer elemento al final de una lista
-}

rota :: [Int] -> Int -> [Int]
rota [] _ = []
rota (x:xs) 0 = (x:xs)
rota (x:xs) n = if n > 0 then rota (xs++[x]) (n-1) else rota ((last xs): init (x:xs)) (n+1)

{-
Función que dado un número regresa la lista hasta llegar a 1
con ciertas reglas según sea par o impar
-}

extranio :: Int -> [Int]
extranio 1 = [1]
extranio n = if funPar n then n : extranio (funDividir n 2) else n : extranio (sumar (funMulti n 3) 1)

