module Aux where
data Arbol a = Vacio | AB a (Arbol a) (Arbol a) deriving (Eq, Ord, Show)

recorre :: Ord a => [a] -> Arbol a -> Arbol a
recorre [] arbol = arbol
recorre (x:xs) arbol = recorre xs (insertaElem x arbol)

insertaElem :: Ord a => a -> Arbol a -> Arbol a
insertaElem elemento Vacio = (AB elemento Vacio Vacio)
insertaElem elemento (AB r ai ad)
  | elemento < r = (AB r (insertaElem elemento ai) ad) 
  | elemento > r = (AB r ai (insertaElem elemento ad))
  | otherwise = (AB r ai ad)

