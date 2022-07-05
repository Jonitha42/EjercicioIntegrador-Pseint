Algoritmo EjercicioIntegrador
	Definir m como entero 
	Definir genz, muestra Como Caracter
	
	muestra = "BCBBABBACBBBBCBB"
	
	Escribir "Ingrese el tamaño de Gen z, recuerde que solo puede ser 3, 4 o 37: "
	
	leer m
	
	Escribir ""
	mientras m <> 3 y m <> 4 y m <> 37 Hacer
		Escribir "Gen z no puede obtener ese valor, ingrese uno válido: "
		leer m
	FinMientras
	
	Escribir "A continuación se ingresa la muestra por variable: (CARGANDO...)"
	
	Escribir ""
	
	Esperar 2 segundos
	
	Escribir "La muestra ingresada fue: ----> ", "[" , muestra , "] <----" 
	
	Escribir ""
	
	Esperar 2 segundos
	
	si Longitud(muestra) <> m * m Entonces
		Escribir "No se puede realizar la operación ya que la longitud es: ", Longitud(muestra)," y se necesitan o soporta: ",m*m," espacios, ingrese una muestra Valida o cambie el valor de matriz" 
	SiNo
		Escribir "La muestra ingresada es válida, se realiza el proceso...bzbzbzbz"
		Escribir " "
		
		Esperar 2 segundos
		
		Dimension genz[m,m]
		
		llenarMatriz(genz,m,muestra)
		
		mostrarMatriz(genz,m,muestra)
		
		Esperar 2 segundos
		
		Escribir " "
		si diagonalPrincipal(genz,m,muestra) y diagonalSecundaria(genz,m,muestra) Entonces
			Escribir "Existe el gen Z, estamos salvados!!!!! :)))))))))))))" 
		sino 
			Escribir "Lo sentimos, no existe el gen Z :CCCCCCCCCCCCCCCCCC"
		FinSi
	FinSi
FinAlgoritmo

///SUBPROCESO LLENAR MATRIZ
SubProceso llenarMatriz(genz,m, muestra) 
	definir i ,j , contador como entero 
	
	contador = 0
	para i = 0 hasta m - 1 Hacer
		para j = 0 hasta m - 1 Hacer
			genz[i,j] = Subcadena(muestra,contador,contador)
			contador = contador + 1
		FinPara
	FinPara
FinSubProceso

///SUBPROCESO MOSTRAR MATRIZ
SubProceso mostrarMatriz(genz,m,muestra)
	Definir i,j como entero 
	
	para i = 0 hasta m - 1 Hacer
		para j = 0 hasta m - 1 Hacer
			Escribir sin saltar "[", genz[i,j] , "]" , " " 
		FinPara
		Escribir " "
	FinPara
FinSubProceso

///FUNCION DIAGONAL PRINCIPAL 
Funcion retorno <- diagonalPrincipal(genz,m,muestra) 
	Definir retorno como logico 
	Definir i,j, contador como entero
	
	contador = 0
	
	para i = 0 hasta m - 1 Hacer
		para j = 0 hasta m - 1 Hacer
			si i = j y genz[i,j] = genz[0,0] Entonces
				contador = contador + 1
			FinSi
		FinPara
	FinPara
	
	si contador = m Entonces
		retorno = Verdadero
	SiNo
		retorno = falso
	FinSi
FinFuncion

///FUNCION CORROBORAR DIAGONAL SECUNDARIA
Funcion retorno <- diagonalSecundaria(genz,m,muestra) 
	Definir retorno como logico 
	Definir i,j, contador como entero
	
	contador = 0
	
	para i = 0 hasta m - 1 Hacer
		para j = 0 hasta m - 1 Hacer
			si i + j = m - 1 y genz[i,j] = genz[0,m - 1] Entonces
				contador = contador + 1
			FinSi
		FinPara
	FinPara
	
	si contador = m Entonces
		retorno = Verdadero
	SiNo
		retorno = falso
	FinSi
FinFuncion