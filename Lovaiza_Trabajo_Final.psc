Algoritmo Lovaiza_Trabajo_Final
	Definir user, clave, decision Como Caracter
	Definir i, j, botellas, saldo, saldoFinal, peso, op Como Entero
	Definir login Como Logico
	
	i=1
	login=Falso
	saldo=0
	saldoFinal=0
	
	Hacer
		Escribir "Ingresar usuario"
		leer user
		si user="Celes_Lovax" Entonces
			Mientras i<3 y login=Falso Hacer
				Escribir "Ingresar contraseña"
				leer clave
				si clave="MyPassword123" Entonces
					Escribir "Acceso correcto"
					login=Verdadero
				sino
					Hacer
						Escribir "Contraseña Incorrecta. Intente nuevamente"
						leer clave
						si clave="MyPassword123" Entonces
							Escribir "Acceso correcto"
							login=Verdadero	
						FinSi
						i=i+1
					Mientras Que i<3
				FinSi
			FinMientras
		FinSi
	Mientras Que user<>"Celes_Lovax"
	Mientras login=Verdadero Hacer
		Escribir "Seleccione una opción"
		Escribir "1. Ingresar Botellas"
		Escribir "2. Consultar Saldo"
		Escribir "3. Salir"
		leer op
		Segun op hacer
			1: escribir "¿Cuántas botellas desea ingresar?"
				leer botellas
				para j=1 hasta botellas con paso 1 Hacer
					peso=Aleatorio(100, 3000)
					Escribir "Botella ", j , ": ", peso, "gr"
					si peso<=500 Entonces
						saldo=saldo+50
					sino
						si peso<=1500
							saldo=saldo+150
						sino
							saldo=saldo+300
						FinSi
					FinSi
				FinPara
				Escribir "El saldo obtenido es: ", saldo, ". Aceptar(A)/Rechazar(R)"
				leer decision
				si decision="A" Entonces
					Escribir "Saldo acreditado"
					saldoFinal=saldoFinal+saldo
					saldo=0
				SiNo
					Escribir "Devolviendo Material"
					saldo=0
				FinSi
			2: Escribir "Saldo Acumulado: ", saldoFinal
			3: login=Falso					
		FinSegun
	FinMientras
FinAlgoritmo