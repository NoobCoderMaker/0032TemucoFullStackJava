Algoritmo prueba
	Definir op como numero
	Definir num1,num2,num3,contador como numero
	Definir nombre, sexo, nom como caracter
	Dimension alumnos(1000)
	Dimension  nombres(1000)
	
	// proceso principal de menu. Se mantendrá pidiendo opciones hasta que
	// la variable sea igual a (9) : Salir del sistema.
	
	Mientras op<>9 Hacer
		Borrar Pantalla
		Escribir '********** Menu Principal *************'
		Escribir '* 1.- Secuencial                      *'
		Escribir '* 2.- Condicional Si entonces         *'
		Escribir '* 3.- Condicional Si entonces anidado *'
		Escribir '* 4.- Condicional Según               *'
		Escribir '* 5.- Repetitiva Mientras             *'
		Escribir '* 6.- Repetitiva Repetir              *'
		Escribir '* 7.- Repetitiva Para                 *'
		Escribir '* 8.- Repetitiva Para                 *'
		Escribir '* 9.- Salir del programa              *'
		Escribir '***************************************'
		Leer op
		Borrar Pantalla
		Segun op Hacer
			1:
				// Función N1 : Pedir 3 numeros y mostrar el promedio de estos
				
				Escribir 'Esta funcion mostrará el promedio de los tres números ingresados.'
				Escribir '---------------------------------'
				Escribir ' Ingrese primer numero a promediar'
				Leer num1
				Escribir ' Ingrese segundo numero a promediar'
				Leer num2
				Escribir ' Ingrese tercer numero a promediar'
				Leer num3
				Escribir ' ---------------------------------'
				Escribir ' El promedio de los numeros ',num1,' ',num2,' ',num3
				Escribir ' es : ', (num1+num2+num3)/3
				Escribir 'Presione cualquier tecla para continuar...'
				Esperar Tecla
				Borrar Pantalla
			2:
				Escribir ' Estamos en un lugar tradicional antiguo y para nada inclusivo'
				Escribir ' Ingrese su nombre : '
				Leer Nombre
				Escribir 'Ingrese su sexo (H/M): '
				Leer sexo
				Si sexo = 'h' o sexo='H'  Entonces
					escribir Nombre,' ,a usted le corresponde el baño de Hombres'
				Fin Si
				Si sexo ='m' o sexo ='M'
					escribir ,Nombre,' ,a usted le corresponde el baño de Mujeres'
				FinSi
				Escribir  'Presione cualquier tecla para continuar...'
				Esperar Tecla
				Borrar Pantalla
			3:
				Escribir ' Estamos en un lugar tradicional antiguo y para nada inclusivo'
				Escribir ' Ingrese su nombre : '
				Leer Nombre
				Escribir 'Ingrese su sexo (H/M): '
				Leer sexo
				Si sexo = 'h' o sexo='H'  Entonces
					escribir Nombre,' ,a usted le corresponde el baño de Hombres'
				Fin Si
				Si sexo ='m' o sexo ='M'
					escribir ,Nombre,', a usted le corresponde el baño de Mujeres'
				FinSi
				
				Escribir '********************************************************'
				Escribir '* Indique que servicio desea utilizar (B)año o (D)ucha *'
				Escribir '********************************************************'
				Leer servicio
				Si servicio = "B" o servicio='b'
					Escribir 'El servicio seleccionado corresponde a BAÑO'
					Escribir 'y su costo es de $250, acepta cobro? (S/N)'
					leer resp
					Si resp = 's' o resp = 'S'
						Escribir 'Puede pasar al BAÑO, Gracias por usar nuestros servicios'
						
					SiNo
						Escribir  'gracias por consultar, hasta pronto...'
						
					FinSi
					
				FinSi
				
				Si servicio = "D" o servicio='d'
					Escribir 'El servicio seleccionado corresponde a DUCHA'
					Escribir 'y su costo es de $2500, acepta cobro? (S/N)'
					leer resp
					Si resp = 's' o resp = 'S'
						Escribir 'Puede pasar a la DUCHA, Gracias por usar nuestros servicios'
						
					SiNo
						Escribir  'gracias por consultar, hasta pronto...'
						
					FinSi
					
				FinSi
				Escribir 'Presione una tecla para continuar'
				Esperar Tecla
				Borrar Pantalla
			4:
				Borrar Pantalla
				Escribir 'Ingrese numero para ser convertido en palabras (1-10)'
				leer num
				
				Segun num Hacer
					1:
						palabra = 'uno'
					2:
						palabra ='dos'
					3:
						palabra = 'tres'
					4:
						palabra = 'cuatro'
					5:
						palabra = 'cinco'
					6:
						palabra = 'seis'
					7:
						palabra = 'siete'
					8:
						palabra = 'ocho'
					9:
						palabra = 'nueve'
					10:
						palabra = 'diez'
				Fin Segun
				Si num>0 y num<11
					Escribir '*********************************************************'
					Escribir 'El numero ingresado ',num,' en palabras es : ', palabra
					Escribir '*********************************************************'
				SiNo
					Escribir 'Su numero no está en el rango requerido'
				FinSi	
				
				Escribir 'Presione cualquier tecla para continuar ...'
				Esperar tecla
				Borrar Pantalla
			5:
				Borrar Pantalla
				num = 1
				sw =1
				acum=0
				sum=0
				Mientras sw<>0 Hacer
					
					Escribir 'Ingrese un numero cualquiera, el numero 0 se considera como salir de este proceso'
					leer num
					Borrar Pantalla
					Si num<>0 Entonces
						acum =acum+1
						sum=sum+num
					SiNo
						SW = 0
					Fin Si
					
				Fin Mientras
				Si acum>0
					Escribir '******************************************************'
					Escribir 'El total de numeros ingresados es : ',acum
					Escribir 'La suma de los numeros ingresados es : ',sum
					Escribir 'El promedio de los numeros ingresados es : ',sum/acum
					Escribir '******************************************************'
				SiNo
					Escribir 'Usted seleccionó el numero 0 como primera opcion, se anulan los calculos '
				FinSi
				
				Escribir 'Presione cualquier tecla para continuar...'
				Esperar Tecla
				Borrar Pantalla
			6:
				cont = 0
				Repetir
					Escribir 'Ingrese nombres que empiezen con la letra J : '
					Leer nom_in
					nom<-Mayusculas(nom_in)
					// Solo para validacion de la cadena
					// Problema de PSInt "Debugeado". Si está activada la opcion de que arreglos partan desde 0
					// la funcion Subcadena tambien se ve afectada. ojo con eso.
					// Escribir nom
					// Escribir SubCadena(nom,0,0)
					Si SubCadena(nom,0,0)='J'
						cont=cont+1
					SiNo
						Escribir 'ERROR.. Nombre debe contar con la letra J al inicio'
						Escribir 'Esta chance no cuenta...'
					FinSi
					
					
					
				Hasta Que nom='JUAN' o nom='juan'
				cont =cont -1
				Si cont <0
					cont=0
				FinSi
				Escribir 'Ganaste!!!... tu cantidad de intentos fue de : ',cont
				Escribir 'Presione cualquier tecla para continuar...'
				Esperar Tecla
				Borrar Pantalla
				
			7:
				Mientras sw=0 Hacer
					Escribir 'Ingrese cantidad de personas a ingresar :'
					leer cantidad
					Si cantidad>10
						Escribir 'ERROR, el maximo permitido es de 10 personas'
						Escribir 'Presione cualquier tecla para continuar'
						Esperar Tecla
						Borrar Pantalla
					SiNo
						si cantidad>0
							sw =1
						SiNo
							Escribir 'ERROR, el minimo permitido es de 1 personas'
							Escribir 'Presione cualquier tecla para continuar'
							Esperar Tecla
							Borrar Pantalla
						FinSi
					FinSi
					
				Fin Mientras
				
				
				
				// rutina para ingresar los datos
				Para i<-0 Hasta cantidad-1 Con Paso 1 Hacer
					Escribir 'Ingrese nombre numero : ',i+1
					Leer nom
					nombres(i)=nom
				Fin Para
				
				
				para i=0 hasta cantidad-1 con paso 1 hacer
					escribir nombres(i)
				FinPara
				Escribir 'Presione cualquier tecla para continuar...'
				Esperar Tecla
				Borrar Pantalla
			8:
				Escribir 'Ingrese cantidad de Talentos Digitales Full Stack'
				Escribir 'a procesar :'
				leer numtal
				//Dimension alumnos(numtal)
				
				
				Para i<-0 Hasta numtal-1 Con Paso 1 Hacer
					Escribir 'Ingrese nombre de TDFS Nº ',i+1
					leer alumnos(i)
				Fin Para
				
				contador = 0
				Para i<-0 Hasta numtal-1 con paso 1 hacer
					Escribir '(',alumnos(i),')' Sin Saltar
					contador = contador +1
					Si contador = 5
						contador = 0
						Escribir ''
					FinSi
				FinPara
				
				Escribir ' Presione cualquier tecla para continuar...'
				Esperar Tecla
				Borrar Pantalla
								
		Fin Segun
		
	Fin Mientras
	Escribir 'Muchas gracias por usar el sistema'
	Escribir 'Presione cualquier tecla para continuar ... '
	Esperar Tecla
	Borrar Pantalla
FinAlgoritmo
