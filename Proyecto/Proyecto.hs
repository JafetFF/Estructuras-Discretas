import Aux

{-
1. Dada una cadena de texto, regresar la frecuencia de cada uno de
sus caracteres.
    Ejemplo de uso: cadfrec "Esta es la número uno"
    
-}

cadfrec :: String -> [(Char, Int)]
cadfrec [] = []
cadfrec (x:xs) = (x, cuentaA x xs) : cadfrec (eliminaRepetidos x xs)

{-
2. Función que dependiendo una cadena de texto se regrese el árbol de
Hoffman correspondiente.
    
-}

stree :: String -> AB 
stree [] = Vacio
stree palabra = arbol (ordfrec (cadfrec palabra)) 


{-
3. Funcion que codifica y comprime una cadena de texto
codint
-}

