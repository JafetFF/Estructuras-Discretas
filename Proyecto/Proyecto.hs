import Aux
{-
1. Dada una cadena de texto, regresar la frecuencia de cada uno de
sus caracteres
-}

cadfrec :: String -> [(Char, Int)]
cadfrec [] = []
cadfrec (x:xs) = (x, cuentaA x xs + 1) : cadfrec (eliminaRepetidos x xs)




