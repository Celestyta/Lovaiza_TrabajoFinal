Algoritmo Lovaiza_Trabajo_Final
	Definir user,clave,decision Como Caracter
	Definir i,j,botellas,saldo,saldoFinal,peso,op Como Entero
	Definir login Como Logico
	i <- 1
	login <- Falso
	saldo <- 0
	saldoFinal <- 0
	Repetir
		Escribir 'Ingresar usuario'
		Leer user
		Si user='Celes_Lovax' Entonces
			Mientras i<3 Y login=Falso Hacer
				Escribir 'Ingresar contraseña'
				Leer clave
				Si clave='MyPassword123' Entonces
					Escribir 'Acceso correcto'
					login <- Verdadero
				SiNo
					Repetir
						Escribir 'Contraseña Incorrecta. Intente nuevamente'
						Leer clave
						Si clave='MyPassword123' Entonces
							Escribir 'Acceso correcto'
							login <- Verdadero
						FinSi
						i <- i+1
					Mientras Que i<3
				FinSi
			FinMientras
		FinSi
	Mientras Que user<>'Celes_Lovax'
	Mientras login=Verdadero Hacer
		Escribir 'Seleccione una opción'
		Escribir '1. Ingresar Botellas'
		Escribir '2. Consultar Saldo'
		Escribir '3. Salir'
		Leer op
		Segun op  Hacer
			1:
				Escribir '¿Cuántas botellas desea ingresar?'
				Leer botellas
				Para j<-1 Hasta botellas Hacer
					peso <- Aleatorio(100,3000)
					Escribir 'Botella ',j,': ',peso,'gr'
					Si peso<=500 Entonces
						saldo <- saldo+50
					SiNo
						Si peso<=1500 Entonces
							saldo <- saldo+150
						SiNo
							saldo <- saldo+300
						FinSi
					FinSi
				FinPara
				Escribir 'El saldo obtenido es: ',saldo,'. Aceptar(A)/Rechazar(R)'
				Leer decision
				Si decision='A' Entonces
					Escribir 'Saldo acreditado'
					saldoFinal <- saldoFinal+saldo
					saldo <- 0
				SiNo
					Escribir 'Devolviendo Material'
					saldo <- 0
				FinSi
			2:
				Escribir 'Saldo Acumulado: ',saldoFinal
			3:
				login <- Falso
		FinSegun
	FinMientras
FinAlgoritmo
