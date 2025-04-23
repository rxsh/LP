- Lenguaje de programación funcional puro
- Desarrollado en los años 80
- Enfocado en funciones como unidades principales de ejecución
- Caracterizado por su inmutabilidad y evaluación perezosa

- Funcionalidad pura: No hay efectos secundarios
- Evaluación perezosa: Las expresiones se evalúan cuando son necesarias

### ¿Por qué usar Haskell?
- Concisión y elegancia en el código.
- Facilidad para manejar concurrencia.
- Código más confiable gracias a la seguridad de tipos.
### ¿Donde se usa?
- Investigación de lenguajes de programación
- Sistemas financieros y bancarias
- Análisis de algoritmo
- Desarrollo de compiladores
- Sistemas concurrentes

suma :: Int -> Int -> Int

Los dos primeros int significa los tipos de entradas y el último es el de salida

##### Tipos de datos
- Númericos: Int, Float, Double
- Booleanos: Bool (true,false)
- Caracteres: Char (por ejemplo 'a')
- Cadenas de texto: String ("hola mundo")

##### Funciones

Una función es una descripción de un proceso que realiza un cálculo a partir de datos.
Una función se describe mediante ecuaciones. Es una ecuación se indica:
- El símbolo que vamos a asociar en la función.
- Los argumentos (datos sobre los que actúa la función)
- su cantidad y el orden en que deben proporcionarse y
- el cálculo que hay realizar (también llamado cuerpo de la ecuación).
- No se usan paréntesis para agrupar argumentos ni comas para separarlos.
- Todas las ecuaciones que describen una función deben agruparse juntas.
- Los argumentos en una ecuación pueden ser variables (pueden tomar cualquier valor válido para el cálculo)

##### Evaluación de funciones

##### Definición por composición

Consiste en la evaluación de otras funciones sobre los argumentos.

##### Funciones Básicas

Aritmética: +,-,*,/, 
Funciones para la división entera: div, mod, rem
Potencias de números: ^,^^,**
Funciones de aproximación: 

##### Ejemplo:

factorial :: Integer -> Integer
factorial n = product [1..n]

main = print(factorial 5)

Ejercicios:

- Menor de 3 números
- Indicar si un número es positivo, negativo o cero
- Área del circulo
- Indicar si el número es par o impar
- Hacer una calculadora básica
- Generar la tabla de multiplicar de un número