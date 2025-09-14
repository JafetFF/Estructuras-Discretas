{-
Función 1: toma un Int y nos regresa el numero de creditos que
tiene una materia de la carrera Ciencias de la Computación
-}


{-creditos :: Int -> [String]
creditos a =
  if a == 12
  then ["Introduccion a las CC"]
  else if a == 10
  then ["Estructuras Discretas, Álgebra Superior I"]
  else if a == 4
  then ["Inglés"]
  else []-}

creditos :: Int -> IO()
creditos 4 = putStrLn "[Ingles I]"
creditos 10 = putStrLn "[Algebra Superior I, Estructuras Discretas]"
creditos 12 = putStrLn "[Introduccion a las CC]"


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


primos :: [Int] -> [Int]
primos lista = [ x | x <- lista, primo x == [1, x]]
       where
       primo x = [ n | n <- [1..x], x `mod` n == 0]


{-
Funcion 4: devuelve otra lista pero sin elementos repetidos
-}

conjuntoLista :: Eq a => [a] -> [a]
conjuntoLista [] = []
conjuntoLista (x:xs) = x : conjuntoLista [ y | y <- xs, y /= x]