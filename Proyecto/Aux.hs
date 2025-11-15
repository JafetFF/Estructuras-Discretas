module Aux where

data AB = Vacio | Hoja Char | Nodo AB AB deriving (Eq, Show)

{-
funciones auxiliares de la primera
-}

-- Funcion que cuen ta el numero de apariciones de un Char

cuentaA :: Char -> String -> Int
cuentaA _ "" = 1
cuentaA s (x:xs)
  | s == x = 1 + cuentaA s xs
  | otherwise = cuentaA s xs

-- Funcion que elimina lo que ya se ha contado

eliminaRepetidos :: Char -> String -> String
eliminaRepetidos _ [] = []
eliminaRepetidos z (x:xs)
  | z == x = eliminaRepetidos z [y | y <- xs, y /= z]
  | otherwise = x : eliminaRepetidos z [y | y <- xs, y /= z]


{-
Funciones auxilares de la segunda
-}

-- Funcion de ordenamiento

quickSort :: (Ord b) => [(a, b)] -> [(a, b)]
quickSort [] = []
quickSort ((a, b):xs) =
  let may = quickSort [x | x <- xs, snd x >= b]
      men = quickSort [x | x <- xs, snd x < b]
  in may ++ [(a, b)] ++ men

--Funcion que ordena la lista de la frecuencia de los caracteres de una palabras

ordfrec :: [(Char, Int)] -> [(Char, Int)]
ordfrec [] = []
ordfrec ((c, n):xs) = quickSort ((c, n):xs)

-- Funcion que pasa la lista ordenada a Arbol de Hoffman

arbol :: [(Char, Int)] -> AB
arbol [] = Vacio
arbol ((c, i):xs) = Nodo (arbol xs) (Hoja c)

