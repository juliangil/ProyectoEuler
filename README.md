#Julian Gil - Sergio Gutierrez
#Codetag 2014

1. Entramos a elixir, digitamos en la consola, dentro de nuestra carpeta Proyecto Euler:
	>iex 

	Nos saldra algo como esto:
	Erlang/OTP 17 [erts-6.1] [source] [64-bit] [smp:4:4] [async-threads:10] [kernel-poll:false]

	Interactive Elixir (0.13.3) - press Ctrl+C to exit (type h() ENTER for help)
	iex(1)>

2. Cargamos nuestro documento en donde tenemos los archivos de elixir, pueden ser guardados como .ex, o como .exs:
	
	Interactive Elixir (0.13.3) - press Ctrl+C to exit (type h() ENTER for help)
	iex(1)> c("proyectoEuler.ex")

	ó

	Interactive Elixir (0.13.3) - press Ctrl+C to exit (type h() ENTER for help)
	iex(1)> c("proyectoEuler.exs")

3. Una vez cargamos nuestro documento, nos saldrá algo asi:
	
	Interactive Elixir (0.13.3) - press Ctrl+C to exit (type h() ENTER for help)
	iex(1)> c("proyectoEuler.ex")
	[ProyectoEuler]


	Esto definira, o cargará los modulos que tengamos en nuestro archivo. En este caso en nuestros archivos solo tenemos  un Modulo llamado ProyectoEuler


LLAMANDO A LAS FUNCIONES:

#Funcion Fibonacci Ejercicio #2

	La idea es mirar el Número n de la serie de Fibonacci, para ello debemos ejecutar
		fibonaccio(<cantidad>)
		iex(2)> ProyectoEuler.fibonacci(10)

	Y obtendremos los primeros 10 numeros de la serie, algo asi:

	1
	1
	2
	3
	5
	8
	13
	21
	34
	55


#Suma Diferencia Cuadrado Ejercicio #6

	La suma de los cuadrados de los diez primeros números naturales es, 1^2 + 2^2 + ... + 10^2 = 385
	El cuadrado de la suma de los diez primeros números naturales es, (1 + 2 + ... + 10)^2 = 55^2 = 3025

	De ahí la diferencia entre la suma de los cuadrados de los diez primeros números naturales y el cuadrado de la suma es 3025 - 385 = 2640.

	Encuentra la diferencia entre la suma de los cuadrados de los cien primeros números naturales y el cuadrado de la suma

	Para ello debemos ejecutar:
	iex(3)> ProyectoEuler.diferenciaSquares(10)

	Y obtendremos la diferencia:
	2640


#Funcion Numeros Primos Ejercicio #10 

	La suma de los números primos por debajo de 10 es 2 + 3 + 5 + 7 = 17.

	Encuentra la suma de todos los números primos por debajo de los dos millones.

	Para ello debemos ejecutar:
	iex(4)> ProyectoEuler.sumaNumerosPrimos(100000)

	Y nos arrojara despues de un buen tiempo algo asi:
	La suma de los numeros primos por debajo de
	100000
	es:
	454396537


#Suma Factorial De Un Digito Ejercicio #20

	n! significa n × ( n - 1) × ... × 3 × 2 × 1

	Por ejemplo, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3.628.800, 
	y la suma de los dígitos en el número 10! es 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.

	Encuentra la suma de los dígitos en el número 100!

	Para ello debemos ejecutar:
	iex(5)> ProyectoEuler.sumaFactorial(100)  

	Y nos saldrá algo como esto:
	El factorial es:
	93326215443944152681699238856266700490715968264381621468592963895217599993229915608941463976156518286253697920827223758251185210916864000000000000000000000000
	La suma es:
	648
