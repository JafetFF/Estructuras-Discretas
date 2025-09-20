
import Aux

{-
Funcion que devuelve un numero en la estructura de dato nat,
es como un conversor
-}

a_natural :: Int -> Natural
a_natural 0 = Cero
a_natural 1 = S(Cero)
a_natural n = S( a_natural (n-1) )


{-
Función que hace lo contrario a la funcion a_natural
-}

a_entero :: Natural -> Int
a_entero Cero = 0
a_entero (S Cero) = 1
a_entero (S m) = 1 + a_entero m

{-
Función que regresa en la notación Natural el primer
número a la potencia del segundo número
-}

potenciaNat :: Natural -> Natural -> Natural
potenciaNat Cero Cero = error "Indefinición"
potenciaNat Cero (S n) = Cero
potenciaNat (S m) Cero = S(Cero)
potenciaNat (S m) (S n) = multNat (S m) (potenciaNat (S m) (n))

{-
Función que devuelve el factorial de un numero tipo Natural
-}

facNat :: Natural -> Natural
facNat Cero = S(Cero)
facNat (S Cero) = S(Cero)
facNat (S m) = multNat (S m) (facNat m)