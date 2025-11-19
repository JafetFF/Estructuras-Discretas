import Aux

{-
1. Dada una cadena de texto, regresar la frecuencia de cada uno de
sus caracteres.

    Ejemplo de uso:
    ghci> cadfrec "moraleja"
    [('m',1),('o',1),('r',1),('a',2),('l',1),('e',1),('j',1)]
    ghci> 
-}

cadfrec :: String -> [(Char, Int)]
cadfrec [] = []
cadfrec (x:xs) = (x, cuentaA x xs) : cadfrec (eliminaRepetidos x xs)


{-
2. Función que dependiendo una cadena de texto se regrese el árbol de
Hoffman correspondiente.

    Ejemplo de uso:
    ghci> stree "estres"
    Nodo (Nodo (Nodo (Nodo Vacio (Hoja 't')) (Hoja 'r')) (Hoja 'e')) (Hoja 's')
    ghci>
    
-}

stree :: String -> AB 
stree [] = Vacio
stree palabra = (arbol (ordfrec (cadfrec palabra)))


{-
3. Funcion que codifica y comprime una cadena de texto

    Ejemplo de uso:
    ghci> codint "spiderman"
    "000000001000000010000001000001000010001001011"	
    ghci>

-}

codint :: String -> String
codint [] = ""
codint texto = (codifica texto (codf texto))


{-
4. Funcion que decodifica una cadena comprimida

    Ejemplo de uso:
    ghci> decode "000000001000000010000001000001000010001001011" (Nodo (Nodo (Nodo (Nodo (Nodo (Nodo (Nodo (Nodo (Nodo Vacio (Hoja 's')) (Hoja 'p')) (Hoja 'i')) (Hoja 'd')) (Hoja 'e')) (Hoja 'r')) (Hoja 'm')) (Hoja 'a')) (Hoja 'n'))
    "spiderman"
    ghci>

-}

decode :: String -> AB -> String
decode [] _ = ""
decode (x:xs) arbolito = (regresivo (cuenta (x:xs)) arbolito) : decode (drop (cuenta (x:xs)) (x:xs)) arbolito
