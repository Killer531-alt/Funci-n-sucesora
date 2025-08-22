# Función-sucesora

# Tarea: Función Sucesora en Haskell

Este proyecto implementa operaciones aritméticas básicas en Haskell utilizando los conceptos de función sucesora y predecesora.
El objetivo es comprender cómo construir funciones aritméticas a partir de estas operaciones primitivas en un contexto de programación funcional.

# Objetivos

Implementar la suma y multiplicación de enteros positivos usando la función sucesora.

Implementar la resta y división de enteros positivos usando la función predecesora.

Explorar el comportamiento de estas funciones con números reales.

Probar todas las funciones en un programa principal (main).

Funciones implementadas
- Funciones básicas

sucesor :: Int -> Int
Devuelve el siguiente entero (n + 1).

predecesor :: Int -> Int
Devuelve el entero anterior (n - 1).

- Operaciones con enteros

add :: Int -> Int -> Int
Suma dos enteros aplicando la función sucesora de manera recursiva.

multiplicar :: Int -> Int -> Int
Multiplica dos enteros como suma repetida.

restar :: Int -> Int -> Int
Resta dos enteros aplicando la función predecesora de manera recursiva.

dividir :: Int -> Int -> Int
Realiza división entera contando cuántas veces se puede restar el divisor del dividendo.

- Operaciones con reales

addReal :: Float -> Float -> Float
Suma dos números reales (adaptación conceptual de la sucesora, ya que en los reales no existe un "siguiente" inmediato).

# Teoría Matemática

La construcción de operaciones aritméticas a partir de sucesor (S) y predecesor (P) se basa en la definición de Peano de los números naturales:

Cero (0) es un número natural.

Si n es un número natural, entonces S(n) (sucesor de n) también lo es.

Con estas reglas, se pueden definir operaciones:

Suma:

a + 0 = a
a + S(b) = S(a + b)

Multiplicación:

a * 0 = 0
a * S(b) = a + (a * b)


Resta: se puede ver como aplicar el predecesor tantas veces como indique el segundo número.

División: consiste en contar cuántas veces podemos restar el divisor del dividendo hasta que el resultado sea menor que el divisor.

De esta forma, usando solo sucesor y predecesor podemos construir todas las operaciones aritméticas.

# Ejecución de pruebas

Para ejecutar el programa:

ghc Main.hs -o programa
./programa

O directamente en GHCi:

ghci Main.hs
main

# Ejemplo de salida
== Pruebas con enteros positivos ==
Suma 5 + 3 = 8
Multiplicacion 4 * 3 = 12
Resta 10 - 4 = 6
Division 12 / 3 = 4
Division 13 / 5 = 2

== Pruebas con numeros reales ==
Suma de reales 3.5 + 2.7 = 6.2

# Conclusiones

La función sucesora permite construir operaciones aritméticas más complejas como suma y multiplicación.

La función predecesora es útil para implementar resta y división.

En el caso de los números reales, el concepto de sucesor no se aplica directamente, por lo que se utiliza la suma nativa de Haskell.

Este ejercicio muestra cómo, a partir de definiciones simples y recursivas, se puede construir toda la aritmética básica.
