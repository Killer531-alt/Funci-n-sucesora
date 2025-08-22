-- =====================================
-- Tarea: Función Sucesora en Haskell
-- Autor: Johan David Baracaldo Caicedo
-- Descripción:
-- Implementación de operaciones aritméticas
-- usando las funciones sucesora y predecesora.
-- =====================================

-- ---------------------------
-- Parte 1: Suma y multiplicación con sucesora
-- ---------------------------

-- Definición de la función sucesora
sucesor :: Int -> Int
sucesor n = n + 1

-- Suma de dos enteros positivos usando sucesor
add :: Int -> Int -> Int
add a 0 = a                         -- Caso base: sumar 0 no cambia el número
add a b = add (sucesor a) (b - 1)   -- Caso recursivo: aplicamos sucesor b veces

-- Multiplicación de dos enteros positivos usando suma repetida
multiplicar :: Int -> Int -> Int
multiplicar _ 0 = 0                                -- Caso base: multiplicar por 0 da 0
multiplicar a b = add a (multiplicar a (b - 1))    -- Caso recursivo: a + a + ... (b veces)

-- ---------------------------
-- Parte 2: Resta y división con predecesora
-- ---------------------------

-- Definición de la función predecesora
predecesor :: Int -> Int
predecesor n = n - 1

-- Resta de dos enteros positivos usando predecesor
restar :: Int -> Int -> Int
restar a 0 = a                           -- Caso base: restar 0 no cambia el número
restar a b = restar (predecesor a) (b-1) -- Caso recursivo: aplicamos predecesor b veces

-- División de dos enteros positivos usando restar
dividir :: Int -> Int -> Int
dividir a b
  | a < b     = 0                                       -- Caso base: ya no podemos seguir restando
  | otherwise = 1 + dividir (restar a b) b              -- Caso recursivo: contamos cuántas veces se puede restar b de a

-- ---------------------------
-- Parte 3: Operaciones con números reales
-- ---------------------------

-- Para números reales no podemos aplicar sucesor directo,
-- pero podemos definir la suma de forma normal.
addReal :: Float -> Float -> Float
addReal x y = x + y

-- ---------------------------
-- Parte 4: Función principal para pruebas
-- ---------------------------

main :: IO ()
main = do
    putStrLn "== Pruebas con enteros positivos =="
    putStrLn ("Suma 5 + 3 = " ++ show (add 5 3))
    putStrLn ("Multiplicacion 4 * 3 = " ++ show (multiplicar 4 3))
    putStrLn ("Resta 10 - 4 = " ++ show (restar 10 4))
    putStrLn ("Division 12 / 3 = " ++ show (dividir 12 3))
    putStrLn ("Division 13 / 5 = " ++ show (dividir 13 5))

    putStrLn "\n== Pruebas con numeros reales =="
    putStrLn ("Suma de reales 3.5 + 2.7 = " ++ show (addReal 3.5 2.7))