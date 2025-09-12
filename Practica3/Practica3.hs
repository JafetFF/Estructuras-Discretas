{-
Función 1: toma un Int y nos regresa el numero de creditos que
tiene una materia de la carrera Ciencias de la Computación
-}

{-creditos :: Int -> [String]
creditos a =
  a == 12 = ["Introducción a las CC"]
  a == 10 = ["Estructuras Discretas, Álgebra Superior 1"]
  a == 4 = ["Inglés"]

-}

{-
Función 2: cuenta la cantidad de números negativos de una
lista
Se llama a length para dar la cantidad de numeros negativos
en lugar de dar cuales son esos numeros
-}

negativos :: [Int] -> Int
negativos tupla = length [ x | x <- tupla, x < 0]

{-
Función 3: nos devuelve los numeros primos de una lista
-}

{-primos :: [Int] -> [Int]
primos n = [x | x <- [2..n], primo x]

primo :: Int -> Bool
primo n = factores n == [1, n]

factores :: [Int] -> [Int]
factores n = [x | x <- [1..n], n `mod` x == 0]-}

{-
Funcion 4: devuelve otra lista pero sin elementos repetidos
-}

conjuntoLista :: [Int] -> [Int]
conjuntoLista lista = [x | x <- lista] 