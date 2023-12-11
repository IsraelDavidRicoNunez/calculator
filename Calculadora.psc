Algoritmo Calculadora
	Definir cantidadNums Como Entero;
	Escribir "Ingresa la cantidad de numeros que deseas operar *maximo 10 numeros*";
	leer cantidad;
	Limpiar Pantalla;
	
	Dimension nums[cantidad];
	
	para i Desde 1 Hasta cantidad Hacer
		Escribir "Ingrese el número ", i, ":"
		Leer nums[i]
	FinPara
	
	
	Escribir "elige el tipo de operacion: ";
	Escribir "1. SUMA (+)";
	Escribir "2. RESTA (-)";
	Escribir "3. MULTIPLICACIÓN (*)";
	Escribir "4. DIVISIÓN (/)";
	leer eleccion;
	Limpiar Pantalla;
	
	Segun eleccion Hacer
		1:
			Escribir"La suma es: ", suma(nums,cantidad);
			
		2:
			Escribir "La resta es: " resta(nums,cantidad);
			
		3: 
			Escribir "La multiplicación es: " multi(nums,cantidad);
			
		4:
			Escribir "1. dividir numeros pares ";
			Escribir "2. dividir cantidad de numeros ingresados"; 
			leer opcDiv;
			
			Segun opcDiv Hacer
				1:
					Escribir "la division entre pares es: ", divPar(nums,cantidad);
			FinSegun
			
	FinSegun
	
FinAlgoritmo

Funcion sumaTotal <- suma(nums,cantidad)
	sumaTotal = 0
	para i=1  hasta cantidad Con Paso 1 hacer 
		
		sumaTotal= sumaTotal + nums[i];
	FinPara
FinFuncion

Funcion restaTotal <- resta(nums,cantidad)
	restaTotal = 0
	para i=1  hasta cantidad Con Paso 1 hacer
		si i=1 Entonces
			nums[i] = (-1)*nums[i]
		FinSi
		restaTotal= restaTotal - nums[i];
	FinPara
FinFuncion

Funcion multiTotal <- multi(nums,cantidad)
	multiTotal = 1;
	para i=1  hasta cantidad Con Paso 1 hacer
		
		multiTotal= multiTotal * nums[i];
	FinPara
FinFuncion

Funcion divTotal <- divPar(nums,cantidad)
	divTotal = nums[1];
	para i=2 hasta cantidad Hacer
		si nums[i] mod 2 <> 0 Entonces
			divTotal = divTotal / nums[i];
		SiNo
			Escribir "no ingresaste numeros pares :("
		FinSi
	FinPara
	
FinFuncion




	