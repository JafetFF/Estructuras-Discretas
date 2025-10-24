module Aux where
{-
funciones auxiliares de la primera
-}

cuentaA :: Char -> String -> Int
cuentaA _ "" = 0
cuentaA s (x:xs)
  | s == x = 1 + cuentaA s xs
  | otherwise = cuentaA s xs


eliminaRepetidos :: Char -> String -> String
eliminaRepetidos _ [] = []
eliminaRepetidos z (x:xs)
  | z == x = eliminaRepetidos z [y | y <- xs, y /= z]
  | otherwise = x : eliminaRepetidos z [y | y <- xs, y /= z]