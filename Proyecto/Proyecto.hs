import Aux

data AB = Vacio | Hoja Char | Nodo AB AB deriving (Eq, Show)

{-
1. Dada una cadena de texto, regresar la frecuencia de cada uno de
sus caracteres.
    Ejemplo de uso: cadfrec "Esta es la número uno"
    
-}

cadfrec :: String -> [(Char, Int)]
cadfrec [] = []
cadfrec (x:xs) = (x, cuentaA x xs + 1) : cadfrec (eliminaRepetidos x xs)

{-
2. Función que dependiendo una cadena de texto se regrese el árbol de
Hoffman correspondiente.
    
-}

--Funcion que ordena la lista de la frecuencia de los caracteres de una palabras

ordfrec :: [(Char, Int)] -> [(Char, Int)]
ordfrec [] = []
ordfrec ((c, n):xs) = quickSort ((c, n):xs)

lista_


stree :: String -> (Char, Int) 
stree "" = error "f"
stree (x:xs) = head (cadfrec (x:xs))


{-
3. Funcion que codifica y comprime una cadena de text
codint
-}
 