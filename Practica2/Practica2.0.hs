{-
Primer Actividad
La funci�n para que diga Hello haskell
-}

sayHello :: String -> IO()
sayHello nombre = putStrLn ("Hello, " ++ nombre ++ "!")

{-
Segunda Actividad
La funci�n para sacar la propina (10 o 15) 
-}

calcularPropina :: Double -> Double -> Double
calcularPropina monto porcentaje = monto * (porcentaje/100.0)

{-
Tercer Actividad
Recibir 3 n�meros y dar el menor de ellos 
-}

menor :: Ord a => a -> a -> a -> a
menor x y z =
  if x <= y && x <= z
    then x
    else if y <= x && y <= z
    then y
    else z

{-
Cuarta Actividad
La funci�n que devuelve una cadena de caracteres dependiendo si
pongo true o false
-}

decide :: Bool -> String -> String -> String
decide esVerdadero palabra1 palabra2 =
  if esVerdadero
    then palabra1
    else palabra2

{- Quinta Actividad La funci�n que devuelve true o false dependiendo
si se ingresaron los datos de manera ascendente o descendente
-}

esDescendiente :: Int -> Int -> Int -> Int -> Bool
esDescendiente x y z w = (x >= y) && (y >= z) && (z >= w)

{- Sexta Actividad La funci�n que devuelve si un numero es divisible
entre otro (no se admite el cero)
-}

esDivisible :: Int -> Int -> IO()
esDivisible x y =
  if x `mod` y == 0 
  then putStrLn(show x ++ " es divisible entre " ++ show y)
  else putStrLn(show x ++ " no es divisible entre " ++ show y)

{- Septima Actividad La funci�n que resuelve la hipotenusa de un triangulo
con la base y altura
-}

hipotenusa :: Float -> Float -> Float
hipotenusa b h = sqrt (b * b + h * h)

{- Ocava Actividad La funci�n que resuelve la pendiente de una recta
-}

pendiente :: (Float, Float) -> (Float, Float) -> Float
pendiente (x1, y1) (x2, y2) = (y2-y1)/(x2-x1)

{- Novena Actividad La funci�n que resuelve la distancia entre dos puntos
-}

-- aqui ponemos Float entre parentesis y con coma porque son los valores que le voy a dar
distanciaPuntos :: (Float, Float) -> (Float, Float) -> Float
distanciaPuntos (x1, y1) (x2, y2) = sqrt ((x2 - x1)^2 + (y2 - y1)^2)

{- Decima Actividad La funci�n que da los cuadrados de una tupla
-}

cuadrados :: [Int] -> [Int]
cuadrados rango = [x*x | x <- rango]


