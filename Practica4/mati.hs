data Matrioska = Mati | Cont Matrioska deriving (Eq, Show)

{-
Función que compara dos matrioskas y devuelve true si la primera
es mayor o igual a la segunda, y true en otro caso
-}

mayorIgual :: Matrioska -> Matrioska -> Bool
mayorIgual Mati Mati = True
mayorIgual Mati (Cont Mati) = False
mayorIgual (Cont Mati) Mati = True
mayorIgual (Cont m) (Cont n) = mayorIgual m n

{-
La última función nos regresa una lista de la matrioska que le dé
pero con la peculiar característica de que nos da la lista de todas
las matrioskas que la componen.
-}

aplana :: Matrioska -> [Matrioska]
aplana Mati = [Mati]
aplana (Cont Mati) = [Cont Mati, Mati]
aplana (Cont m) = Cont m : aplana m 