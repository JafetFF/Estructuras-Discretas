module Aux where

data AB = Vacio | Hoja Char | Nodo (AB) (AB) deriving (Eq, Show)

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

{-
Funciones auxiliares de la tercera
-}

-- Funcion extraida del primer ejercicio

cadfrec2 :: String -> [(Char, Int)]
cadfrec2 [] = []
cadfrec2 (x:xs) = (x, cuentaA x xs) : cadfrec2 (eliminaRepetidos x xs)

-- Funcion de stree extraida del anterior ejercicio

stree2 :: String -> AB 
stree2 [] = Vacio
stree2 palabra = (arbol (ordfrec (cadfrec2 palabra)))

-- Funcion que da el valor de cada letra con 0 y 1

codTree :: AB -> String -> [(Char, String)]
codTree Vacio _ = []
codTree (Hoja b) pa = [(b, pa)]
codTree (Nodo siz sde) pa = (codTree siz (pa ++ "0")) ++ (codTree sde (pa ++ "1"))

-- Funcion que le pasa los parametros a codTree

codf :: String -> [(Char, String)]
codf [] = []
codf holaMundo = (codTree (stree2 holaMundo) "")

-- Funcion que codifica letra por letra de la cadena de texto

cochar :: Char -> [(Char, String)] -> String
cochar _ [] = ""
cochar p ((c, s):xs)
  | p == c = s
  | otherwise = cochar p xs

-- Funcion que muestra la codificacion con un texto y una lista

codifica :: String -> [(Char, String)] -> String
codifica [] _ = ""
codifica (y:ys) lista = cochar y lista ++ codifica ys lista

{-
Funciones auxiliares para la cuarta
-}

-- Funcion que saca el elemento de una hoja

saca :: AB -> Char
saca (Hoja k) = k

-- Funcion que cuenta hasta el primer 1

cuenta :: String -> Int
cuenta [] = 0
cuenta (x:xs)
  | x == '0' = 1 + cuenta xs
  | otherwise = 1

-- Funcion que hasta llegar a cierto conteo da el elemento del subarbol derecho

regresivo :: Int -> AB -> Char
regresivo 0 _ = ' '
regresivo 1 (Nodo l r) = saca r
regresivo n (Nodo l r) = regresivo (n-1) l
