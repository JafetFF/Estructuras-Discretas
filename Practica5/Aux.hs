module Aux where

funDividir :: Integral a => a -> a -> a
funDividir numerador denominador
  | numerador < denominador = 0
  | otherwise = sumar 1 (funDividir (restar numerador denominador) denominador)


funMulti :: Integral a => a -> a -> a
funMulti _ 0 = 0
funMulti x y = sumar x (funMulti x (restar y 1))

funPar :: Integral a => a -> Bool
funPar 0 = True
funPar 1 = False
funPar n = funPar (restar n 2)

restar :: Integral a => a -> a -> a
restar x 0 = x
restar x y = restar (pred x) (pred y)

sumar :: Integral a => a -> a -> a
sumar x 0 = x
sumar x y = sumar (succ x) (pred y)
