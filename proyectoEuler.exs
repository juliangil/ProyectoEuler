defmodule ProyectoEuler do

	#Funcion Fibonacci Ejercicio #2___________________________________________________________________________

   	def fibonacci(longitud) do
		Enum.map(0..longitud-1, fn x -> IO.puts (fibo(x)) end)
	end

	def fibo(n) do
		if n==0 || n==1 do
			1
		else
			fibo(n-2)+fibo(n-1)
		end
	end

	#Suma Diferencia Cuadrado Ejercicio #6___________________________________________________________________________

	def potencia(n,e) do
			if e == 0 do
				1
			else
				n*potencia(n,(e-1))
			end
		end

	def sumSquare(n) do
		if n==0 do
			0
		else
			potencia(n,2)+sumSquare(n-1)
		end
	end
		
	def squareSum(n) do
		potencia(fibo(n-1), 2)
	end
		
		
	def diferenciaSquares(n) do
		squareSum(n)-sumSquare(n)
	end

	#Funcion Numeros Primos Ejercicio #10 ________________________________________________________________________

	def par(num,divisor,primo) do
		if(divisor >= 1) do
			if(rem(num,divisor) == 0) do
				primo = primo + 1
				par(num,divisor-1,primo)
			else
				par(num,divisor-1,primo)
			end
		else
			primo
		end
	end

	def primo(num) do
		divisor = num
	  	primo = 0	
	  	primo = par(num,divisor,primo)
	  	if(primo == 2) do
	  		true
	  	else
	  		false
	  	end
	  end 

	def iterar(numIterador,num,suma) do
		if(numIterador <= num) do
	  		if(primo(numIterador)) do
	  			suma = numIterador + suma 
	  			numIterador = numIterador + 1
	  			iterar(numIterador,num,suma)
	  		else
	  			numIterador = numIterador + 1
	  			primo(numIterador)
	  			iterar(numIterador,num,suma)
	  		end
	  	else
	  		suma
	  	end
	end

	def sumaNumerosPrimos(num) do
	  	numIterador = 1
	  	suma = 0
	  	suma = iterar(numIterador,num,suma)
	  	IO.puts "La suma de los numeros primos por debajo de" 
	  	IO.puts num
	  	IO.puts "es:"
	  	suma
	end

	#Suma Factorial De Un Digito Ejercicio #20_________________________________________________________________  

	def sumaFactorial(num) do
	    num = factorial(num)
	    IO.puts "El factorial es:"
	    IO.puts num 
	    IO.puts "La suma es:"
	    sumaDigitos(num)   
	end 

	def factorial(num) do
    	if(num==0) do
    		1
    	else
    		num * factorial(num-1)
    	end
  	end
	
	def sumaDigitos(num) do
	 	if(num >= 0) do
	 		if(num==10) do
	    		1
	    	else
	    		if(num<=10) do
	    			num
	    		else
	    			((rem(num,10)) + sumaDigitos(div(num,10)))
	    		end
	    	end 
	 	end
	end

end