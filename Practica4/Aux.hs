module Aux (Natural(..), multNat, sumNat) where
-- modulo de las funciones auxiliares y el tipo de dato
data Natural = Cero | S Natural deriving (Eq, Show)
{-
Función auxiliar que multiplica Naturales
-}


multNat :: Natural -> Natural -> Natural
multNat Cero Cero = Cero
multNat Cero (S n) = Cero
multNat (S m) Cero = Cero
multNat (S Cero) n = n
multNat m (S Cero) = m
multNat (S m) (S n) = sumNat (S m) (multNat (S m) n)

{-
Función auxiliar que suma Naturales 
-}

sumNat :: Natural -> Natural -> Natural
sumNat Cero Cero = Cero
sumNat Cero (S n) = (S n)
sumNat (S m) Cero = (S m)
sumNat (S m) (S n) = sumNat m (S (S (n)))